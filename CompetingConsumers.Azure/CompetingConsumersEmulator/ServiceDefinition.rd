<?xml version="1.0" encoding="utf-8"?>
<serviceModel xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" name="CompetingConsumers.Azure" generation="1" functional="0" release="0" Id="a8b13005-44a9-471d-84e2-5dd22f15598a" dslVersion="1.2.0.0" xmlns="http://schemas.microsoft.com/dsltools/RDSM">
  <groups>
    <group name="CompetingConsumers.AzureGroup" generation="1" functional="0" release="0">
      <componentports>
        <inPort name="PublishingService:Microsoft.WindowsAzure.Plugins.RemoteForwarder.RdpInput" protocol="tcp">
          <inToChannel>
            <lBChannelMoniker name="/CompetingConsumers.Azure/CompetingConsumers.AzureGroup/LB:PublishingService:Microsoft.WindowsAzure.Plugins.RemoteForwarder.RdpInput" />
          </inToChannel>
        </inPort>
      </componentports>
      <settings>
        <aCS name="Certificate|PublishingService:Microsoft.WindowsAzure.Plugins.RemoteAccess.PasswordEncryption" defaultValue="">
          <maps>
            <mapMoniker name="/CompetingConsumers.Azure/CompetingConsumers.AzureGroup/MapCertificate|PublishingService:Microsoft.WindowsAzure.Plugins.RemoteAccess.PasswordEncryption" />
          </maps>
        </aCS>
        <aCS name="Certificate|ReceivingService:Microsoft.WindowsAzure.Plugins.RemoteAccess.PasswordEncryption" defaultValue="">
          <maps>
            <mapMoniker name="/CompetingConsumers.Azure/CompetingConsumers.AzureGroup/MapCertificate|ReceivingService:Microsoft.WindowsAzure.Plugins.RemoteAccess.PasswordEncryption" />
          </maps>
        </aCS>
        <aCS name="PublishingService:Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountEncryptedPassword" defaultValue="">
          <maps>
            <mapMoniker name="/CompetingConsumers.Azure/CompetingConsumers.AzureGroup/MapPublishingService:Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountEncryptedPassword" />
          </maps>
        </aCS>
        <aCS name="PublishingService:Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountExpiration" defaultValue="">
          <maps>
            <mapMoniker name="/CompetingConsumers.Azure/CompetingConsumers.AzureGroup/MapPublishingService:Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountExpiration" />
          </maps>
        </aCS>
        <aCS name="PublishingService:Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountUsername" defaultValue="">
          <maps>
            <mapMoniker name="/CompetingConsumers.Azure/CompetingConsumers.AzureGroup/MapPublishingService:Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountUsername" />
          </maps>
        </aCS>
        <aCS name="PublishingService:Microsoft.WindowsAzure.Plugins.RemoteAccess.Enabled" defaultValue="">
          <maps>
            <mapMoniker name="/CompetingConsumers.Azure/CompetingConsumers.AzureGroup/MapPublishingService:Microsoft.WindowsAzure.Plugins.RemoteAccess.Enabled" />
          </maps>
        </aCS>
        <aCS name="PublishingService:Microsoft.WindowsAzure.Plugins.RemoteForwarder.Enabled" defaultValue="">
          <maps>
            <mapMoniker name="/CompetingConsumers.Azure/CompetingConsumers.AzureGroup/MapPublishingService:Microsoft.WindowsAzure.Plugins.RemoteForwarder.Enabled" />
          </maps>
        </aCS>
        <aCS name="PublishingService:ServiceBusConnectionString_Publisher" defaultValue="">
          <maps>
            <mapMoniker name="/CompetingConsumers.Azure/CompetingConsumers.AzureGroup/MapPublishingService:ServiceBusConnectionString_Publisher" />
          </maps>
        </aCS>
        <aCS name="PublishingServiceInstances" defaultValue="[1,1,1]">
          <maps>
            <mapMoniker name="/CompetingConsumers.Azure/CompetingConsumers.AzureGroup/MapPublishingServiceInstances" />
          </maps>
        </aCS>
        <aCS name="ReceivingService:MessageStorageConnectionString" defaultValue="">
          <maps>
            <mapMoniker name="/CompetingConsumers.Azure/CompetingConsumers.AzureGroup/MapReceivingService:MessageStorageConnectionString" />
          </maps>
        </aCS>
        <aCS name="ReceivingService:Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountEncryptedPassword" defaultValue="">
          <maps>
            <mapMoniker name="/CompetingConsumers.Azure/CompetingConsumers.AzureGroup/MapReceivingService:Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountEncryptedPassword" />
          </maps>
        </aCS>
        <aCS name="ReceivingService:Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountExpiration" defaultValue="">
          <maps>
            <mapMoniker name="/CompetingConsumers.Azure/CompetingConsumers.AzureGroup/MapReceivingService:Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountExpiration" />
          </maps>
        </aCS>
        <aCS name="ReceivingService:Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountUsername" defaultValue="">
          <maps>
            <mapMoniker name="/CompetingConsumers.Azure/CompetingConsumers.AzureGroup/MapReceivingService:Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountUsername" />
          </maps>
        </aCS>
        <aCS name="ReceivingService:Microsoft.WindowsAzure.Plugins.RemoteAccess.Enabled" defaultValue="">
          <maps>
            <mapMoniker name="/CompetingConsumers.Azure/CompetingConsumers.AzureGroup/MapReceivingService:Microsoft.WindowsAzure.Plugins.RemoteAccess.Enabled" />
          </maps>
        </aCS>
        <aCS name="ReceivingService:ServiceBusConnectionString_Receiver" defaultValue="">
          <maps>
            <mapMoniker name="/CompetingConsumers.Azure/CompetingConsumers.AzureGroup/MapReceivingService:ServiceBusConnectionString_Receiver" />
          </maps>
        </aCS>
        <aCS name="ReceivingServiceInstances" defaultValue="[1,1,1]">
          <maps>
            <mapMoniker name="/CompetingConsumers.Azure/CompetingConsumers.AzureGroup/MapReceivingServiceInstances" />
          </maps>
        </aCS>
      </settings>
      <channels>
        <lBChannel name="LB:PublishingService:Microsoft.WindowsAzure.Plugins.RemoteForwarder.RdpInput">
          <toPorts>
            <inPortMoniker name="/CompetingConsumers.Azure/CompetingConsumers.AzureGroup/PublishingService/Microsoft.WindowsAzure.Plugins.RemoteForwarder.RdpInput" />
          </toPorts>
        </lBChannel>
        <sFSwitchChannel name="SW:PublishingService:Microsoft.WindowsAzure.Plugins.RemoteAccess.Rdp">
          <toPorts>
            <inPortMoniker name="/CompetingConsumers.Azure/CompetingConsumers.AzureGroup/PublishingService/Microsoft.WindowsAzure.Plugins.RemoteAccess.Rdp" />
          </toPorts>
        </sFSwitchChannel>
        <sFSwitchChannel name="SW:ReceivingService:Microsoft.WindowsAzure.Plugins.RemoteAccess.Rdp">
          <toPorts>
            <inPortMoniker name="/CompetingConsumers.Azure/CompetingConsumers.AzureGroup/ReceivingService/Microsoft.WindowsAzure.Plugins.RemoteAccess.Rdp" />
          </toPorts>
        </sFSwitchChannel>
      </channels>
      <maps>
        <map name="MapCertificate|PublishingService:Microsoft.WindowsAzure.Plugins.RemoteAccess.PasswordEncryption" kind="Identity">
          <certificate>
            <certificateMoniker name="/CompetingConsumers.Azure/CompetingConsumers.AzureGroup/PublishingService/Microsoft.WindowsAzure.Plugins.RemoteAccess.PasswordEncryption" />
          </certificate>
        </map>
        <map name="MapCertificate|ReceivingService:Microsoft.WindowsAzure.Plugins.RemoteAccess.PasswordEncryption" kind="Identity">
          <certificate>
            <certificateMoniker name="/CompetingConsumers.Azure/CompetingConsumers.AzureGroup/ReceivingService/Microsoft.WindowsAzure.Plugins.RemoteAccess.PasswordEncryption" />
          </certificate>
        </map>
        <map name="MapPublishingService:Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountEncryptedPassword" kind="Identity">
          <setting>
            <aCSMoniker name="/CompetingConsumers.Azure/CompetingConsumers.AzureGroup/PublishingService/Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountEncryptedPassword" />
          </setting>
        </map>
        <map name="MapPublishingService:Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountExpiration" kind="Identity">
          <setting>
            <aCSMoniker name="/CompetingConsumers.Azure/CompetingConsumers.AzureGroup/PublishingService/Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountExpiration" />
          </setting>
        </map>
        <map name="MapPublishingService:Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountUsername" kind="Identity">
          <setting>
            <aCSMoniker name="/CompetingConsumers.Azure/CompetingConsumers.AzureGroup/PublishingService/Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountUsername" />
          </setting>
        </map>
        <map name="MapPublishingService:Microsoft.WindowsAzure.Plugins.RemoteAccess.Enabled" kind="Identity">
          <setting>
            <aCSMoniker name="/CompetingConsumers.Azure/CompetingConsumers.AzureGroup/PublishingService/Microsoft.WindowsAzure.Plugins.RemoteAccess.Enabled" />
          </setting>
        </map>
        <map name="MapPublishingService:Microsoft.WindowsAzure.Plugins.RemoteForwarder.Enabled" kind="Identity">
          <setting>
            <aCSMoniker name="/CompetingConsumers.Azure/CompetingConsumers.AzureGroup/PublishingService/Microsoft.WindowsAzure.Plugins.RemoteForwarder.Enabled" />
          </setting>
        </map>
        <map name="MapPublishingService:ServiceBusConnectionString_Publisher" kind="Identity">
          <setting>
            <aCSMoniker name="/CompetingConsumers.Azure/CompetingConsumers.AzureGroup/PublishingService/ServiceBusConnectionString_Publisher" />
          </setting>
        </map>
        <map name="MapPublishingServiceInstances" kind="Identity">
          <setting>
            <sCSPolicyIDMoniker name="/CompetingConsumers.Azure/CompetingConsumers.AzureGroup/PublishingServiceInstances" />
          </setting>
        </map>
        <map name="MapReceivingService:MessageStorageConnectionString" kind="Identity">
          <setting>
            <aCSMoniker name="/CompetingConsumers.Azure/CompetingConsumers.AzureGroup/ReceivingService/MessageStorageConnectionString" />
          </setting>
        </map>
        <map name="MapReceivingService:Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountEncryptedPassword" kind="Identity">
          <setting>
            <aCSMoniker name="/CompetingConsumers.Azure/CompetingConsumers.AzureGroup/ReceivingService/Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountEncryptedPassword" />
          </setting>
        </map>
        <map name="MapReceivingService:Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountExpiration" kind="Identity">
          <setting>
            <aCSMoniker name="/CompetingConsumers.Azure/CompetingConsumers.AzureGroup/ReceivingService/Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountExpiration" />
          </setting>
        </map>
        <map name="MapReceivingService:Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountUsername" kind="Identity">
          <setting>
            <aCSMoniker name="/CompetingConsumers.Azure/CompetingConsumers.AzureGroup/ReceivingService/Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountUsername" />
          </setting>
        </map>
        <map name="MapReceivingService:Microsoft.WindowsAzure.Plugins.RemoteAccess.Enabled" kind="Identity">
          <setting>
            <aCSMoniker name="/CompetingConsumers.Azure/CompetingConsumers.AzureGroup/ReceivingService/Microsoft.WindowsAzure.Plugins.RemoteAccess.Enabled" />
          </setting>
        </map>
        <map name="MapReceivingService:ServiceBusConnectionString_Receiver" kind="Identity">
          <setting>
            <aCSMoniker name="/CompetingConsumers.Azure/CompetingConsumers.AzureGroup/ReceivingService/ServiceBusConnectionString_Receiver" />
          </setting>
        </map>
        <map name="MapReceivingServiceInstances" kind="Identity">
          <setting>
            <sCSPolicyIDMoniker name="/CompetingConsumers.Azure/CompetingConsumers.AzureGroup/ReceivingServiceInstances" />
          </setting>
        </map>
      </maps>
      <components>
        <groupHascomponents>
          <role name="PublishingService" generation="1" functional="0" release="0" software="C:\Users\hakeemsm\Documents\Learning\Azure\PatternsRedux\CompetingConsumers.Azure\CompetingConsumers.Azure\CompetingConsumersEmulator\roles\PublishingService" entryPoint="base\x64\WaHostBootstrapper.exe" parameters="base\x64\WaWorkerHost.exe " memIndex="-1" hostingEnvironment="consoleroleadmin" hostingEnvironmentVersion="2">
            <componentports>
              <inPort name="Microsoft.WindowsAzure.Plugins.RemoteForwarder.RdpInput" protocol="tcp" />
              <inPort name="Microsoft.WindowsAzure.Plugins.RemoteAccess.Rdp" protocol="tcp" portRanges="3389" />
              <outPort name="PublishingService:Microsoft.WindowsAzure.Plugins.RemoteAccess.Rdp" protocol="tcp">
                <outToChannel>
                  <sFSwitchChannelMoniker name="/CompetingConsumers.Azure/CompetingConsumers.AzureGroup/SW:PublishingService:Microsoft.WindowsAzure.Plugins.RemoteAccess.Rdp" />
                </outToChannel>
              </outPort>
              <outPort name="ReceivingService:Microsoft.WindowsAzure.Plugins.RemoteAccess.Rdp" protocol="tcp">
                <outToChannel>
                  <sFSwitchChannelMoniker name="/CompetingConsumers.Azure/CompetingConsumers.AzureGroup/SW:ReceivingService:Microsoft.WindowsAzure.Plugins.RemoteAccess.Rdp" />
                </outToChannel>
              </outPort>
            </componentports>
            <settings>
              <aCS name="Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountEncryptedPassword" defaultValue="" />
              <aCS name="Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountExpiration" defaultValue="" />
              <aCS name="Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountUsername" defaultValue="" />
              <aCS name="Microsoft.WindowsAzure.Plugins.RemoteAccess.Enabled" defaultValue="" />
              <aCS name="Microsoft.WindowsAzure.Plugins.RemoteForwarder.Enabled" defaultValue="" />
              <aCS name="ServiceBusConnectionString_Publisher" defaultValue="" />
              <aCS name="__ModelData" defaultValue="&lt;m role=&quot;PublishingService&quot; xmlns=&quot;urn:azure:m:v1&quot;&gt;&lt;r name=&quot;PublishingService&quot;&gt;&lt;e name=&quot;Microsoft.WindowsAzure.Plugins.RemoteAccess.Rdp&quot; /&gt;&lt;e name=&quot;Microsoft.WindowsAzure.Plugins.RemoteForwarder.RdpInput&quot; /&gt;&lt;/r&gt;&lt;r name=&quot;ReceivingService&quot;&gt;&lt;e name=&quot;Microsoft.WindowsAzure.Plugins.RemoteAccess.Rdp&quot; /&gt;&lt;/r&gt;&lt;/m&gt;" />
            </settings>
            <resourcereferences>
              <resourceReference name="DiagnosticStore" defaultAmount="[4096,4096,4096]" defaultSticky="true" kind="Directory" />
              <resourceReference name="EventStore" defaultAmount="[1000,1000,1000]" defaultSticky="false" kind="LogStore" />
            </resourcereferences>
            <storedcertificates>
              <storedCertificate name="Stored0Microsoft.WindowsAzure.Plugins.RemoteAccess.PasswordEncryption" certificateStore="My" certificateLocation="System">
                <certificate>
                  <certificateMoniker name="/CompetingConsumers.Azure/CompetingConsumers.AzureGroup/PublishingService/Microsoft.WindowsAzure.Plugins.RemoteAccess.PasswordEncryption" />
                </certificate>
              </storedCertificate>
            </storedcertificates>
            <certificates>
              <certificate name="Microsoft.WindowsAzure.Plugins.RemoteAccess.PasswordEncryption" />
            </certificates>
          </role>
          <sCSPolicy>
            <sCSPolicyIDMoniker name="/CompetingConsumers.Azure/CompetingConsumers.AzureGroup/PublishingServiceInstances" />
            <sCSPolicyUpdateDomainMoniker name="/CompetingConsumers.Azure/CompetingConsumers.AzureGroup/PublishingServiceUpgradeDomains" />
            <sCSPolicyFaultDomainMoniker name="/CompetingConsumers.Azure/CompetingConsumers.AzureGroup/PublishingServiceFaultDomains" />
          </sCSPolicy>
        </groupHascomponents>
        <groupHascomponents>
          <role name="ReceivingService" generation="1" functional="0" release="0" software="C:\Users\hakeemsm\Documents\Learning\Azure\PatternsRedux\CompetingConsumers.Azure\CompetingConsumers.Azure\CompetingConsumersEmulator\roles\ReceivingService" entryPoint="base\x64\WaHostBootstrapper.exe" parameters="base\x64\WaWorkerHost.exe " memIndex="-1" hostingEnvironment="consoleroleadmin" hostingEnvironmentVersion="2">
            <componentports>
              <inPort name="Microsoft.WindowsAzure.Plugins.RemoteAccess.Rdp" protocol="tcp" portRanges="3389" />
              <outPort name="PublishingService:Microsoft.WindowsAzure.Plugins.RemoteAccess.Rdp" protocol="tcp">
                <outToChannel>
                  <sFSwitchChannelMoniker name="/CompetingConsumers.Azure/CompetingConsumers.AzureGroup/SW:PublishingService:Microsoft.WindowsAzure.Plugins.RemoteAccess.Rdp" />
                </outToChannel>
              </outPort>
              <outPort name="ReceivingService:Microsoft.WindowsAzure.Plugins.RemoteAccess.Rdp" protocol="tcp">
                <outToChannel>
                  <sFSwitchChannelMoniker name="/CompetingConsumers.Azure/CompetingConsumers.AzureGroup/SW:ReceivingService:Microsoft.WindowsAzure.Plugins.RemoteAccess.Rdp" />
                </outToChannel>
              </outPort>
            </componentports>
            <settings>
              <aCS name="MessageStorageConnectionString" defaultValue="" />
              <aCS name="Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountEncryptedPassword" defaultValue="" />
              <aCS name="Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountExpiration" defaultValue="" />
              <aCS name="Microsoft.WindowsAzure.Plugins.RemoteAccess.AccountUsername" defaultValue="" />
              <aCS name="Microsoft.WindowsAzure.Plugins.RemoteAccess.Enabled" defaultValue="" />
              <aCS name="ServiceBusConnectionString_Receiver" defaultValue="" />
              <aCS name="__ModelData" defaultValue="&lt;m role=&quot;ReceivingService&quot; xmlns=&quot;urn:azure:m:v1&quot;&gt;&lt;r name=&quot;PublishingService&quot;&gt;&lt;e name=&quot;Microsoft.WindowsAzure.Plugins.RemoteAccess.Rdp&quot; /&gt;&lt;e name=&quot;Microsoft.WindowsAzure.Plugins.RemoteForwarder.RdpInput&quot; /&gt;&lt;/r&gt;&lt;r name=&quot;ReceivingService&quot;&gt;&lt;e name=&quot;Microsoft.WindowsAzure.Plugins.RemoteAccess.Rdp&quot; /&gt;&lt;/r&gt;&lt;/m&gt;" />
            </settings>
            <resourcereferences>
              <resourceReference name="DiagnosticStore" defaultAmount="[4096,4096,4096]" defaultSticky="true" kind="Directory" />
              <resourceReference name="EventStore" defaultAmount="[1000,1000,1000]" defaultSticky="false" kind="LogStore" />
            </resourcereferences>
            <storedcertificates>
              <storedCertificate name="Stored0Microsoft.WindowsAzure.Plugins.RemoteAccess.PasswordEncryption" certificateStore="My" certificateLocation="System">
                <certificate>
                  <certificateMoniker name="/CompetingConsumers.Azure/CompetingConsumers.AzureGroup/ReceivingService/Microsoft.WindowsAzure.Plugins.RemoteAccess.PasswordEncryption" />
                </certificate>
              </storedCertificate>
            </storedcertificates>
            <certificates>
              <certificate name="Microsoft.WindowsAzure.Plugins.RemoteAccess.PasswordEncryption" />
            </certificates>
          </role>
          <sCSPolicy>
            <sCSPolicyIDMoniker name="/CompetingConsumers.Azure/CompetingConsumers.AzureGroup/ReceivingServiceInstances" />
            <sCSPolicyUpdateDomainMoniker name="/CompetingConsumers.Azure/CompetingConsumers.AzureGroup/ReceivingServiceUpgradeDomains" />
            <sCSPolicyFaultDomainMoniker name="/CompetingConsumers.Azure/CompetingConsumers.AzureGroup/ReceivingServiceFaultDomains" />
          </sCSPolicy>
        </groupHascomponents>
      </components>
      <sCSPolicy>
        <sCSPolicyUpdateDomain name="PublishingServiceUpgradeDomains" defaultPolicy="[5,5,5]" />
        <sCSPolicyUpdateDomain name="ReceivingServiceUpgradeDomains" defaultPolicy="[5,5,5]" />
        <sCSPolicyFaultDomain name="PublishingServiceFaultDomains" defaultPolicy="[2,2,2]" />
        <sCSPolicyFaultDomain name="ReceivingServiceFaultDomains" defaultPolicy="[2,2,2]" />
        <sCSPolicyID name="PublishingServiceInstances" defaultPolicy="[1,1,1]" />
        <sCSPolicyID name="ReceivingServiceInstances" defaultPolicy="[1,1,1]" />
      </sCSPolicy>
    </group>
  </groups>
  <implements>
    <implementation Id="1ef8f31c-575e-4de9-85ab-0085be2630dc" ref="Microsoft.RedDog.Contract\ServiceContract\CompetingConsumers.AzureContract@ServiceDefinition">
      <interfacereferences>
        <interfaceReference Id="e91b6c37-5c20-4c7a-bea3-05717b6dd0ab" ref="Microsoft.RedDog.Contract\Interface\PublishingService:Microsoft.WindowsAzure.Plugins.RemoteForwarder.RdpInput@ServiceDefinition">
          <inPort>
            <inPortMoniker name="/CompetingConsumers.Azure/CompetingConsumers.AzureGroup/PublishingService:Microsoft.WindowsAzure.Plugins.RemoteForwarder.RdpInput" />
          </inPort>
        </interfaceReference>
      </interfacereferences>
    </implementation>
  </implements>
</serviceModel>