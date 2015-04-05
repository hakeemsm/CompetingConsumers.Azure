using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Net;
using System.Threading;
using CompetingConsumers.Common;
using Microsoft.ServiceBus;
using Microsoft.ServiceBus.Messaging;
using Microsoft.WindowsAzure;
using Microsoft.WindowsAzure.ServiceRuntime;

namespace PublishingService
{
    public class Producer : RoleEntryPoint
    {
        private bool _keepRunning = true;
        private QueueManager _queueManager;
        private const string Chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";

        public override void Run()
        {
            Trace.WriteLine("Pumping messages");

            while (_keepRunning)
            {
                _queueManager.SendMessagesAsync(GetMessages()).Wait();
                Thread.Sleep(10000);
                Trace.WriteLine("Done publishing!");
            }
        }

        private List<BrokeredMessage> GetMessages()
        {
            var messages = new List<BrokeredMessage>();

            for (int i = 0; i < 12; i++)
            {
                messages.Add(new BrokeredMessage(new MessageData(GetData() + "_PK" + i, GetData() + "_RK" + i) { Id = i, Data = GetData() }) { MessageId = Guid.NewGuid().ToString() });
            }
            return messages;

        }

        private string GetData()
        {
            var random = new Random();
            return new string(Enumerable.Repeat(Chars, 7).Select(s => s[random.Next(s.Length)]).ToArray());
        }

        public override bool OnStart()
        {
            // Set the maximum number of concurrent connections 
            ServicePointManager.DefaultConnectionLimit = 12;

            var queueName = CloudConfigurationManager.GetSetting("PublishingQueueName");
            string connectionString = CloudConfigurationManager.GetSetting("ServiceBusConnectionString_Publisher");
            _queueManager = new QueueManager(queueName, connectionString);
            _queueManager.Start().Wait();

            return base.OnStart();
        }

        public override void OnStop()
        {
            _keepRunning = false;
            base.OnStop();
        }
    }
}
