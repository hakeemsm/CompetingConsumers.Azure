using System;
using System.Diagnostics;
using System.Net;
using System.Threading;
using System.Threading.Tasks;
using CompetingConsumers.Common;
using Microsoft.ServiceBus.Messaging;
using Microsoft.WindowsAzure;
using Microsoft.WindowsAzure.ServiceRuntime;
using Microsoft.WindowsAzure.Storage;
using Microsoft.WindowsAzure.Storage.Table;

namespace ReceivingService
{
    public class Consumer : RoleEntryPoint
    {
        readonly ManualResetEvent _completedEvent = new ManualResetEvent(false);
        private QueueManager _queueManager;
        private CloudTable _tableRef;

        public override void Run()
        {
            Trace.WriteLine("Starting processing of messages");

            // Initiates the message pump and callback is invoked for each message that is received, calling close on the client will stop the pump.
            _queueManager.ReceiveMessages(ProcessMessageTask);

            _completedEvent.WaitOne();
        }

        private async Task ProcessMessageTask(BrokeredMessage receivedMessage)
        {
            try
            {
                // Process the message
                Trace.WriteLine("Processing received messages");
                if (!IsValid(receivedMessage))
                {
                    await receivedMessage.DeadLetterAsync("Invalid message", "Message Id is invalid or there is no message body");
                    Trace.WriteLine("Invalid message. Sending to dead letter queue");
                }
                await Task.Delay(TimeSpan.FromSeconds(3)).ConfigureAwait(false);
                var messageData = receivedMessage.GetBody<MessageData>();
                var traceMsg = string.Format("Received message with sequence #: {0}, Id: {1}, MessageBodyId:{2}, MessageData:{3}, PartitionKey:{4}, RowKey:{5} by Role:{6}",
                    receivedMessage.SequenceNumber, receivedMessage.MessageId, messageData.Id, messageData.Data, RoleEnvironment.CurrentRoleInstance.Id
                    , messageData.PartitionKey, messageData.RowKey);
                //var traceMsg = string.Format("Received message with sequence #: {0}, Id: {1}, MessageBodyId:{2}, MessageData:{3} by Role:{4}",
                //    receivedMessage.SequenceNumber,receivedMessage.MessageId,messageData.Id,messageData.Data, RoleEnvironment.CurrentRoleInstance.Id);
                Trace.WriteLine(traceMsg);
                var insertOp = TableOperation.Insert(messageData);
                _tableRef.Execute(insertOp);
                await receivedMessage.CompleteAsync();
            }
            catch (Exception ex)
            {
                receivedMessage.Abandon();
                Trace.TraceError("Exception processing message: {0}", ex.Message);
                if (ex.InnerException != null)
                {
                    Trace.TraceError("Inner Exception: {0}", ex.InnerException.Message);
                }
            }
        }

        private bool IsValid(BrokeredMessage receivedMessage)
        {
            return !string.IsNullOrWhiteSpace(receivedMessage.MessageId) ||
                   receivedMessage.GetBody<MessageData>() == null;
        }

        public override bool OnStart()
        {
            // Set the maximum number of concurrent connections 
            ServicePointManager.DefaultConnectionLimit = 12;

            // Create the queue if it does not exist already
            var queueName = CloudConfigurationManager.GetSetting("ReceivingQueueName");
            string connectionString = CloudConfigurationManager.GetSetting("ServiceBusConnectionString_Receiver");

            var storageAccount = CloudStorageAccount.Parse(CloudConfigurationManager.GetSetting("MessageStorageConnectionString"));
            var cloudTableClient = storageAccount.CreateCloudTableClient();
            _tableRef = cloudTableClient.GetTableReference("MessageData");
            _tableRef.CreateIfNotExists();

            _queueManager = new QueueManager(queueName, connectionString);
            _queueManager.Start().Wait();

            return base.OnStart();
        }

        public override void OnStop()
        {
            _queueManager.Stop(TimeSpan.FromSeconds(30)).Wait();
            _completedEvent.Set();
            base.OnStop();
        }
    }
}
