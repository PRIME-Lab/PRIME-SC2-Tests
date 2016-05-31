<?xml version='1.0' encoding='UTF-8'?>
<Project Type="Project" LVVersion="15008000">
	<Property Name="SMProvider.SMVersion" Type="Int">201310</Property>
	<Property Name="varPersistentID:{4E98ACED-A5D7-4B71-87C9-D5DC8346759D}" Type="Ref">/Sample-changer-2/SC2 shared var.lvlib/Current Sample</Property>
	<Property Name="varPersistentID:{B7948274-6C15-435A-B2AD-0E6DB87C7BAA}" Type="Ref">/Sample-changer-2/SC2 shared var.lvlib/Requested Sample</Property>
	<Item Name="My Computer" Type="My Computer">
		<Property Name="IOScan.Faults" Type="Str"></Property>
		<Property Name="IOScan.NetVarPeriod" Type="UInt">100</Property>
		<Property Name="IOScan.NetWatchdogEnabled" Type="Bool">false</Property>
		<Property Name="IOScan.Period" Type="UInt">10000</Property>
		<Property Name="IOScan.PowerupMode" Type="UInt">0</Property>
		<Property Name="IOScan.Priority" Type="UInt">9</Property>
		<Property Name="IOScan.ReportModeConflict" Type="Bool">true</Property>
		<Property Name="IOScan.StartEngineOnDeploy" Type="Bool">false</Property>
		<Property Name="server.app.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.control.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.tcp.enabled" Type="Bool">false</Property>
		<Property Name="server.tcp.port" Type="Int">0</Property>
		<Property Name="server.tcp.serviceName" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.tcp.serviceName.default" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.vi.callsEnabled" Type="Bool">true</Property>
		<Property Name="server.vi.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="specify.custom.address" Type="Bool">false</Property>
		<Item Name="Dependencies" Type="Dependencies"/>
		<Item Name="Build Specifications" Type="Build"/>
	</Item>
	<Item Name="Sample-changer-2" Type="RT CompactRIO">
		<Property Name="alias.name" Type="Str">Sample-changer-2</Property>
		<Property Name="alias.value" Type="Str">192.168.1.154</Property>
		<Property Name="CCSymbols" Type="Str">TARGET_TYPE,RT;OS,VxWorks;CPU,PowerPC;DeviceCode,7459;</Property>
		<Property Name="crio.ControllerPID" Type="Str">7459</Property>
		<Property Name="host.ResponsivenessCheckEnabled" Type="Bool">true</Property>
		<Property Name="host.ResponsivenessCheckPingDelay" Type="UInt">5000</Property>
		<Property Name="host.ResponsivenessCheckPingTimeout" Type="UInt">1000</Property>
		<Property Name="host.TargetCPUID" Type="UInt">2</Property>
		<Property Name="host.TargetOSID" Type="UInt">14</Property>
		<Property Name="target.cleanupVisa" Type="Bool">false</Property>
		<Property Name="target.FPProtocolGlobals_ControlTimeLimit" Type="Int">300</Property>
		<Property Name="target.getDefault-&gt;WebServer.Port" Type="Int">80</Property>
		<Property Name="target.getDefault-&gt;WebServer.Timeout" Type="Int">60</Property>
		<Property Name="target.IOScan.Faults" Type="Str"></Property>
		<Property Name="target.IOScan.NetVarPeriod" Type="UInt">100</Property>
		<Property Name="target.IOScan.NetWatchdogEnabled" Type="Bool">false</Property>
		<Property Name="target.IOScan.Period" Type="UInt">10000</Property>
		<Property Name="target.IOScan.PowerupMode" Type="UInt">0</Property>
		<Property Name="target.IOScan.Priority" Type="UInt">0</Property>
		<Property Name="target.IOScan.ReportModeConflict" Type="Bool">true</Property>
		<Property Name="target.IsRemotePanelSupported" Type="Bool">true</Property>
		<Property Name="target.RTCPULoadMonitoringEnabled" Type="Bool">true</Property>
		<Property Name="target.RTDebugWebServerHTTPPort" Type="Int">8001</Property>
		<Property Name="target.RTTarget.ApplicationPath" Type="Path">/c/ni-rt/startup/startup.rtexe</Property>
		<Property Name="target.RTTarget.EnableFileSharing" Type="Bool">true</Property>
		<Property Name="target.RTTarget.IPAccess" Type="Str">+*</Property>
		<Property Name="target.RTTarget.LaunchAppAtBoot" Type="Bool">false</Property>
		<Property Name="target.RTTarget.VIPath" Type="Path">/c/ni-rt/startup</Property>
		<Property Name="target.server.app.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="target.server.control.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="target.server.tcp.access" Type="Str">+*</Property>
		<Property Name="target.server.tcp.enabled" Type="Bool">false</Property>
		<Property Name="target.server.tcp.paranoid" Type="Bool">true</Property>
		<Property Name="target.server.tcp.port" Type="Int">3363</Property>
		<Property Name="target.server.tcp.serviceName" Type="Str">Main Application Instance/VI Server</Property>
		<Property Name="target.server.tcp.serviceName.default" Type="Str">Main Application Instance/VI Server</Property>
		<Property Name="target.server.vi.access" Type="Str">+*</Property>
		<Property Name="target.server.vi.callsEnabled" Type="Bool">true</Property>
		<Property Name="target.server.vi.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="target.WebServer.Config" Type="Str">Listen 8000

NI.ServerName default
DocumentRoot "$LVSERVER_DOCROOT"
TypesConfig "$LVSERVER_CONFIGROOT/mime.types"
DirectoryIndex index.htm
WorkerLimit 10
InactivityTimeout 60

LoadModulePath "$LVSERVER_MODULEPATHS"
LoadModule LVAuth lvauthmodule
LoadModule LVRFP lvrfpmodule

#
# Pipeline Definition
#

SetConnector netConnector

AddHandler LVAuth
AddHandler LVRFP

AddHandler fileHandler ""

AddOutputFilter chunkFilter


</Property>
		<Property Name="target.WebServer.Enabled" Type="Bool">false</Property>
		<Property Name="target.WebServer.LogEnabled" Type="Bool">false</Property>
		<Property Name="target.WebServer.LogPath" Type="Path">/c/ni-rt/system/www/www.log</Property>
		<Property Name="target.WebServer.Port" Type="Int">80</Property>
		<Property Name="target.WebServer.RootPath" Type="Path">/c/ni-rt/system/www</Property>
		<Property Name="target.WebServer.TcpAccess" Type="Str">c+*</Property>
		<Property Name="target.WebServer.Timeout" Type="Int">60</Property>
		<Property Name="target.WebServer.ViAccess" Type="Str">+*</Property>
		<Property Name="target.webservices.SecurityAPIKey" Type="Str">PqVr/ifkAQh+lVrdPIykXlFvg12GhhQFR8H9cUhphgg=:pTe9HRlQuMfJxAG6QCGq7UvoUpJzAzWGKy5SbZ+roSU=</Property>
		<Property Name="target.webservices.ValidTimestampWindow" Type="Int">15</Property>
		<Item Name="Chassis" Type="cRIO Chassis">
			<Property Name="crio.ProgrammingMode" Type="Str">fpga</Property>
			<Property Name="crio.ResourceID" Type="Str">RIO0</Property>
			<Property Name="crio.Type" Type="Str">cRIO-9114</Property>
			<Property Name="NI.SortType" Type="Int">3</Property>
			<Item Name="FPGA Target" Type="FPGA Target">
				<Property Name="AutoRun" Type="Bool">false</Property>
				<Property Name="configString.guid" Type="Str">{00473A29-EA5A-4BCD-997C-5414BA1991F3}resource=/crio_Mod6/DIO23:16;0;ReadMethodType=u8;WriteMethodType=u8{015E1991-D03F-427D-ABD1-2CC9E4F9CA07}ArbitrationForOutputData=NeverArbitrate;resource=/crio_Mod8/CH6;0;ReadMethodType=bool;WriteMethodType=bool{02EBEC19-67EC-4C7B-8B56-DB2FB2E14A9B}[crioConfig.Begin]crio.Calibration=1,crio.Location=Slot 5,crio.Type=NI 9205,cRIOModule.AI0.TerminalMode=0,cRIOModule.AI0.VoltageRange=0,cRIOModule.AI1.TerminalMode=0,cRIOModule.AI1.VoltageRange=0,cRIOModule.AI10.TerminalMode=0,cRIOModule.AI10.VoltageRange=0,cRIOModule.AI11.TerminalMode=0,cRIOModule.AI11.VoltageRange=0,cRIOModule.AI12.TerminalMode=0,cRIOModule.AI12.VoltageRange=0,cRIOModule.AI13.TerminalMode=0,cRIOModule.AI13.VoltageRange=0,cRIOModule.AI14.TerminalMode=0,cRIOModule.AI14.VoltageRange=0,cRIOModule.AI15.TerminalMode=0,cRIOModule.AI15.VoltageRange=0,cRIOModule.AI16.TerminalMode=0,cRIOModule.AI16.VoltageRange=0,cRIOModule.AI17.TerminalMode=0,cRIOModule.AI17.VoltageRange=0,cRIOModule.AI18.TerminalMode=0,cRIOModule.AI18.VoltageRange=0,cRIOModule.AI19.TerminalMode=0,cRIOModule.AI19.VoltageRange=0,cRIOModule.AI2.TerminalMode=0,cRIOModule.AI2.VoltageRange=0,cRIOModule.AI20.TerminalMode=0,cRIOModule.AI20.VoltageRange=0,cRIOModule.AI21.TerminalMode=0,cRIOModule.AI21.VoltageRange=0,cRIOModule.AI22.TerminalMode=0,cRIOModule.AI22.VoltageRange=0,cRIOModule.AI23.TerminalMode=0,cRIOModule.AI23.VoltageRange=0,cRIOModule.AI24.TerminalMode=0,cRIOModule.AI24.VoltageRange=0,cRIOModule.AI25.TerminalMode=0,cRIOModule.AI25.VoltageRange=0,cRIOModule.AI26.TerminalMode=0,cRIOModule.AI26.VoltageRange=0,cRIOModule.AI27.TerminalMode=0,cRIOModule.AI27.VoltageRange=0,cRIOModule.AI28.TerminalMode=0,cRIOModule.AI28.VoltageRange=0,cRIOModule.AI29.TerminalMode=0,cRIOModule.AI29.VoltageRange=0,cRIOModule.AI3.TerminalMode=0,cRIOModule.AI3.VoltageRange=0,cRIOModule.AI30.TerminalMode=0,cRIOModule.AI30.VoltageRange=0,cRIOModule.AI31.TerminalMode=0,cRIOModule.AI31.VoltageRange=0,cRIOModule.AI4.TerminalMode=0,cRIOModule.AI4.VoltageRange=0,cRIOModule.AI5.TerminalMode=0,cRIOModule.AI5.VoltageRange=0,cRIOModule.AI6.TerminalMode=0,cRIOModule.AI6.VoltageRange=0,cRIOModule.AI7.TerminalMode=0,cRIOModule.AI7.VoltageRange=0,cRIOModule.AI8.TerminalMode=0,cRIOModule.AI8.VoltageRange=0,cRIOModule.AI9.TerminalMode=0,cRIOModule.AI9.VoltageRange=0,cRIOModule.EnableCalProperties=false,cRIOModule.EnableDECoM=false,cRIOModule.EnableInputFifo=false,cRIOModule.EnableOutputFifo=false,cRIOModule.MinConvTime=8.000000E+0,cRIOModule.RsiAttributes=[crioConfig.End]{037DD5B7-DA33-4AB8-9828-967F8206784F}resource=/crio_Mod7/DI21;0;ReadMethodType=bool{056EBCA6-7154-4DC0-8614-2AB735114151}resource=/crio_Mod4/AO0;0;WriteMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_20_5.ctl{0B543E04-8B32-4389-BD51-C214DBE4B204}[crioConfig.Begin]crio.Calibration=1,crio.Location=Slot 8,crio.Type=NI 9485,cRIOModule.DIO3_0InitialDir=0,cRIOModule.DIO7_4InitialDir=0,cRIOModule.EnableDECoM=false,cRIOModule.EnableInputFifo=false,cRIOModule.EnableOutputFifo=false,cRIOModule.NumSyncRegs=11111111,cRIOModule.RsiAttributes=[crioConfig.End]{0D118142-4602-419E-9E15-1AB89A072482}resource=/crio_Mod6/DIO10;0;ReadMethodType=bool;WriteMethodType=bool{0E7DE915-24B7-4879-91BC-0BDEFF9CA4A6}resource=/crio_Mod6/DIO24;0;ReadMethodType=bool;WriteMethodType=bool{122C3E32-0105-444C-AF23-9DB38DC0589F}resource=/crio_Mod7/DI27;0;ReadMethodType=bool{129C2002-96D2-4CB4-87A5-ECC5006898F6}resource=/crio_Mod7/DI29;0;ReadMethodType=bool{12DC90D0-E832-4211-B3DB-4B09DF335E9D}resource=/crio_Mod5/AI31;0;ReadMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_26_5.ctl{1435FD3A-40EF-4103-8FA2-654E189993D6}resource=/crio_Mod7/DI31;0;ReadMethodType=bool{17E5FE01-F59D-4C28-833F-E4D4BACEE172}resource=/crio_Mod6/DIO15:8;0;ReadMethodType=u8;WriteMethodType=u8{19013481-B79A-46A6-8E8A-DD3EAB6B0098}resource=/crio_Mod6/DIO9;0;ReadMethodType=bool;WriteMethodType=bool{1A00AF3F-CF1E-4B0E-844A-BDC5233EFB9D}resource=/crio_Mod7/DI13;0;ReadMethodType=bool{1A261236-C21F-491C-B87C-2133EE49D6C2}resource=/crio_Mod7/DI12;0;ReadMethodType=bool{1AFF7D2D-E4EE-42A7-A1D0-90E6F90B2A09}ArbitrationForOutputData=NeverArbitrate;resource=/crio_Mod8/CH5;0;ReadMethodType=bool;WriteMethodType=bool{1C491720-91D5-4EB2-8B48-4E7163D0D818}resource=/crio_Mod6/DIO3;0;ReadMethodType=bool;WriteMethodType=bool{258F5623-49E6-414B-BDC7-E7EBFC985958}resource=/crio_Mod6/DIO23;0;ReadMethodType=bool;WriteMethodType=bool{26F01443-7C2E-4F39-AB4F-C0E3318323B0}resource=/crio_Mod7/DI7:0;0;ReadMethodType=u8{286239E3-7004-429D-B316-A809CF9EEBEF}resource=/crio_Mod7/DI16;0;ReadMethodType=bool{28C241B6-E68B-4B09-9D02-9FC7D83E1A1F}resource=/crio_Mod6/DIO22;0;ReadMethodType=bool;WriteMethodType=bool{2A47B7BB-0A3A-4444-90C3-7B4B7EC5C4F4}resource=/crio_Mod4/AO5;0;WriteMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_20_5.ctl{2F4F0621-1A31-4381-AC3E-FEB3939397A2}resource=/crio_Mod7/DI5;0;ReadMethodType=bool{30EF311D-079A-4437-BEA0-AC28FF4BEEB2}resource=/crio_Mod6/DIO4;0;ReadMethodType=bool;WriteMethodType=bool{32DF05AF-91FB-423F-BD14-B126E8C9ACD5}resource=/crio_Mod7/DI2;0;ReadMethodType=bool{33342A00-FFAC-47FB-B808-335CD25C8292}resource=/Scan Clock;0;ReadMethodType=bool{34DAB6F2-AE1E-4B11-88EC-D15C6090B6F9}resource=/crio_Mod5/AI14;0;ReadMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_26_5.ctl{34E14A0C-0E32-4CBA-B6F4-F553CC8D3B3A}resource=/crio_Mod4/AO10;0;WriteMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_20_5.ctl{37027F60-DCB1-4EB1-8588-87402C7F6E21}resource=/crio_Mod4/AO12;0;WriteMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_20_5.ctl{38821F03-FD11-4B45-9CA9-7AF7D99E5A53}resource=/crio_Mod4/AO9;0;WriteMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_20_5.ctl{38D137CF-E477-4B6F-BDB7-893CF0FF4DBA}resource=/crio_Mod5/AI15;0;ReadMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_26_5.ctl{39C16C7A-B383-4944-AB14-AF21ABF17FFC}resource=/crio_Mod6/DIO1;0;ReadMethodType=bool;WriteMethodType=bool{3D37C13A-3DC6-4277-8958-F59622167CC3}resource=/crio_Mod7/DI19;0;ReadMethodType=bool{3D62A11A-4FA3-4595-B070-569F898E9CC4}resource=/crio_Mod7/DI24;0;ReadMethodType=bool{41A1D609-8C92-4C74-B0F7-F37E5E749BAA}resource=/crio_Mod4/AO8;0;WriteMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_20_5.ctl{4358B978-C04A-49EE-9C31-E1E1D51CFBA2}resource=/crio_Mod6/DIO17;0;ReadMethodType=bool;WriteMethodType=bool{45C2EE1F-68B2-446A-A01B-A4E136171B94}resource=/crio_Mod6/DIO31:0;0;ReadMethodType=u32;WriteMethodType=u32{47C2F0A8-E7B7-443F-923C-3DFDD5780026}resource=/crio_Mod7/DI11;0;ReadMethodType=bool{4903062E-3F34-41CD-A371-1DAC4CA3D08B}resource=/crio_Mod5/AI29;0;ReadMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_26_5.ctl{49E8623A-BFB6-40CD-8677-01B9E4892C36}resource=/crio_Mod7/DI23;0;ReadMethodType=bool{4AFF04AB-0E4A-497E-BB7C-EC1B6A76E4A1}resource=/crio_Mod5/DI0;0;ReadMethodType=bool{4BBF2DFC-565F-4EB1-8DA7-7515F4FBF2BE}resource=/crio_Mod6/DIO7;0;ReadMethodType=bool;WriteMethodType=bool{4C2619D4-EC08-4DD5-8F1E-57EF03C7841B}resource=/crio_Mod4/AO13;0;WriteMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_20_5.ctl{4D040455-58A3-4622-A7BB-73B0D546F53D}resource=/crio_Mod5/AI5;0;ReadMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_26_5.ctl{4EE2E657-529D-4627-AF7D-4FE92475AD01}resource=/crio_Mod4/AO4;0;WriteMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_20_5.ctl{4F5EBD77-3F9B-44E4-BE22-342147BA7692}resource=/crio_Mod5/AI8;0;ReadMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_26_5.ctl{4FA9C266-678B-4AC1-8076-FD5BB5F7BE62}resource=/crio_Mod6/DIO29;0;ReadMethodType=bool;WriteMethodType=bool{523DF77F-5611-48D5-BB1C-31A4BC8CBC7A}resource=/crio_Mod5/AI3;0;ReadMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_26_5.ctl{53334BF5-376F-4AEA-BF49-31D7CFFA56A7}ArbitrationForOutputData=NeverArbitrate;resource=/crio_Mod8/CH0;0;ReadMethodType=bool;WriteMethodType=bool{55AE7E84-1F20-4F9F-8169-E0858B13F612}resource=/crio_Mod5/AI28;0;ReadMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_26_5.ctl{564F579E-9FFD-4614-99FD-F21439003B5A}resource=/crio_Mod7/DI31:24;0;ReadMethodType=u8{579C0112-5F60-4160-9541-F158DB127FF4}resource=/crio_Mod6/DIO5;0;ReadMethodType=bool;WriteMethodType=bool{579D217F-4DC5-45DB-BEA1-9268A70B66D8}resource=/crio_Mod5/AI19;0;ReadMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_26_5.ctl{57D0AA56-9AE7-4A17-921D-8694B11A3841}resource=/crio_Mod6/DIO21;0;ReadMethodType=bool;WriteMethodType=bool{58A31F42-137D-4418-B32A-07A13F4E3F58}resource=/crio_Mod6/DIO19;0;ReadMethodType=bool;WriteMethodType=bool{592ABD39-D5C2-4E95-8B6F-662E43599280}resource=/crio_Mod5/AI7;0;ReadMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_26_5.ctl{59E70582-A556-427A-9FFC-7A24AD7D0ACD}resource=/crio_Mod7/DI10;0;ReadMethodType=bool{5A8F9E57-38C1-4838-8F6B-ED0B18521BDD}resource=/crio_Mod4/AO2;0;WriteMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_20_5.ctl{5BF02E35-30C0-4665-8F5D-5A2D7364453A}resource=/crio_Mod4/AO11;0;WriteMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_20_5.ctl{5F3890AE-0B20-4CBC-9296-B16B9057235E}resource=/FPGA LED;0;ReadMethodType=bool;WriteMethodType=bool{5F4B6A1D-CC5E-41CC-B537-2E1965F4B23E}resource=/crio_Mod6/DIO31;0;ReadMethodType=bool;WriteMethodType=bool{5FC66CA8-BB2A-464E-A0B1-B2B50C43FD7E}resource=/crio_Mod5/AI24;0;ReadMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_26_5.ctl{603712B5-1CA4-492B-893A-BA0C4BEF8FDC}resource=/crio_Mod5/AI25;0;ReadMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_26_5.ctl{6086A36B-77E4-4585-88D9-BCCAFBDD2A61}cRIO Subresource{64FF56E9-F485-47D3-B6CF-925C5251ECC0}resource=/crio_Mod5/AI23;0;ReadMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_26_5.ctl{655F200B-582C-4255-94EC-874F8B7F8400}ResourceName=40 MHz Onboard Clock;TopSignalConnect=Clk40;ClockSignalName=Clk40;MinFreq=40000000.000000;MaxFreq=40000000.000000;VariableFreq=0;NomFreq=40000000.000000;PeakPeriodJitter=250.000000;MinDutyCycle=50.000000;MaxDutyCycle=50.000000;Accuracy=100.000000;RunTime=0;SpreadSpectrum=0;GenericDataHash=D41D8CD98F00B204E9800998ECF8427E;{66E1476D-5926-4A34-8033-6D3BCE59AEB2}resource=/crio_Mod6/DIO11;0;ReadMethodType=bool;WriteMethodType=bool{67B933B5-DB36-4A72-AD36-65A7C1D7E3C3}resource=/crio_Mod5/AI26;0;ReadMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_26_5.ctl{67C32A3B-8FF3-4127-B0DE-195A56A6A392}resource=/crio_Mod6/DIO13;0;ReadMethodType=bool;WriteMethodType=bool{68151DB3-A690-44A9-9737-865DD95EF1AA}resource=/crio_Mod5/AI22;0;ReadMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_26_5.ctl{69A81ED8-BAA5-4D6E-9874-5CFDB59412E3}resource=/crio_Mod7/DI8;0;ReadMethodType=bool{6A08D7D5-B5AD-4A70-BAA6-96FD3C67C14B}resource=/crio_Mod7/DI26;0;ReadMethodType=bool{6D20F854-F9EC-469D-B9C0-729AFEC71D6C}resource=/crio_Mod6/DIO16;0;ReadMethodType=bool;WriteMethodType=bool{6F6B6516-E5B6-4AE6-A0B7-946B32B2AB61}resource=/crio_Mod4/AO14;0;WriteMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_20_5.ctl{705FA5F3-FBC3-4CE7-ACC9-A54BA8AD7C27}resource=/crio_Mod7/DI20;0;ReadMethodType=bool{73111380-579D-4563-8D2E-BB7F8D1C3E2C}resource=/crio_Mod6/DIO31:24;0;ReadMethodType=u8;WriteMethodType=u8{76448D27-A5F2-460A-B4ED-9DFECDCED23A}resource=/crio_Mod5/AI13;0;ReadMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_26_5.ctl{781E65DD-AD91-44F4-99A3-302836A76056}resource=/crio_Mod5/AI30;0;ReadMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_26_5.ctl{794EFF79-6439-4884-875F-07A995580277}resource=/crio_Mod7/DI30;0;ReadMethodType=bool{7C4BC52F-96C8-43A1-B025-7A88FF3EC947}resource=/crio_Mod5/AI10;0;ReadMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_26_5.ctl{7EC8FA29-22FC-4426-A5F3-769B10935792}resource=/crio_Mod5/AI17;0;ReadMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_26_5.ctl{7F1983EA-3A76-4AD1-AAE7-ACAAFEDEB4C4}resource=/crio_Mod7/DI1;0;ReadMethodType=bool{81038268-EAD0-401A-AF0B-FAB237A031AB}ArbitrationForOutputData=NeverArbitrate;resource=/crio_Mod8/CH2;0;ReadMethodType=bool;WriteMethodType=bool{81D49D0D-C633-41B1-BA50-25B5CC272278}resource=/crio_Mod5/AI9;0;ReadMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_26_5.ctl{84BF8DBE-659D-407A-B503-A10DB876175D}resource=/crio_Mod7/DI3;0;ReadMethodType=bool{8552FEBF-7825-46E6-8D3B-C23EB841FF8D}resource=/crio_Mod7/DI7;0;ReadMethodType=bool{86E60440-3D55-48EC-ADF3-5BEACAD6EE7C}resource=/crio_Mod6/DIO18;0;ReadMethodType=bool;WriteMethodType=bool{8AEC8489-71BF-4F04-99AE-982D012A8EDD}[crioConfig.Begin]crio.Calibration=1,crio.Location=Slot 4,crio.Type=NI 9264,cRIOModule.EnableDECoM=false,cRIOModule.EnableInputFifo=false,cRIOModule.EnableOutputFifo=false,cRIOModule.HotSwapMode=0,cRIOModule.RsiAttributes=[crioConfig.End]{8CDE6672-5E18-4864-8F2E-ECAA5904CE92}resource=/crio_Mod7/DI9;0;ReadMethodType=bool{8D8E8A10-8438-4B04-B949-4C5235304B04}resource=/crio_Mod5/AI2;0;ReadMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_26_5.ctl{8E443FA4-8693-49B4-BCCE-F9AE98A070CD}resource=/crio_Mod6/DIO15;0;ReadMethodType=bool;WriteMethodType=bool{8F201A13-09A1-43D5-95E2-14144CCB5FB9}resource=/crio_Mod7/DI15;0;ReadMethodType=bool{91C98655-A391-42CE-89A9-73D4DE6D84CB}resource=/crio_Mod7/DI25;0;ReadMethodType=bool{97953E3B-A037-4F4E-9CEA-20E3648E36B4}resource=/crio_Mod5/AI1;0;ReadMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_26_5.ctl{97FBE057-A13C-4895-89C6-720DCF637900}resource=/crio_Mod7/DI4;0;ReadMethodType=bool{9A2FC7EF-E16E-4860-A59A-C25E8F9ABA67}resource=/crio_Mod4/AO6;0;WriteMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_20_5.ctl{9F10E2F3-C632-41AE-9061-54C9B1C25118}resource=/crio_Mod6/DIO0;0;ReadMethodType=bool;WriteMethodType=bool{9FFEFA0D-3597-4A50-84C9-0647A74A0A9A}resource=/crio_Mod5/AI4;0;ReadMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_26_5.ctl{A0216560-3E09-4B3F-85F9-1DE4EB4984D4}resource=/crio_Mod6/DIO25;0;ReadMethodType=bool;WriteMethodType=bool{A36E02DA-EB68-4EFA-9E27-76188ED67F5C}resource=/crio_Mod7/DI17;0;ReadMethodType=bool{A46B34E9-C383-4089-91AD-C90E725B4800}resource=/crio_Mod5/DO0;0;WriteMethodType=bool{A4BD14FC-BA55-4AE0-ADBB-EDA2A9B3B785}resource=/crio_Mod6/DIO28;0;ReadMethodType=bool;WriteMethodType=bool{A56B9C58-F9A2-49AF-9782-BB34BF0B5DC6}resource=/crio_Mod7/DI0;0;ReadMethodType=bool{A5EE6D18-A1F8-4C2A-93FC-32A9EA1377F8}resource=/System Reset;0;ReadMethodType=bool;WriteMethodType=bool{AAF551AD-6D94-4BB7-BC6C-799147FCCC7F}[crioConfig.Begin]crio.Calibration=1,crio.Location=Slot 3,crio.Type=NI 9870,cRIOModule.EnableDECoM=false,cRIOModule.EnableInputFifo=false,cRIOModule.EnableOutputFifo=false,cRIOModule.kBaudRateDivider1=384,cRIOModule.kBaudRateDivider2=384,cRIOModule.kBaudRateDivider3=384,cRIOModule.kBaudRateDivider4=384,cRIOModule.kBaudRatePrescaler1=1,cRIOModule.kBaudRatePrescaler2=1,cRIOModule.kBaudRatePrescaler3=1,cRIOModule.kBaudRatePrescaler4=1,cRIOModule.kDataBits1=4,cRIOModule.kDataBits2=4,cRIOModule.kDataBits3=4,cRIOModule.kDataBits4=4,cRIOModule.kDesiredBaudRate1=9.600000E+3,cRIOModule.kDesiredBaudRate2=9.600000E+3,cRIOModule.kDesiredBaudRate3=9.600000E+3,cRIOModule.kDesiredBaudRate4=9.600000E+3,cRIOModule.kFlowControl1=1,cRIOModule.kFlowControl2=1,cRIOModule.kFlowControl3=1,cRIOModule.kFlowControl4=1,cRIOModule.kParity1=1,cRIOModule.kParity2=1,cRIOModule.kParity3=1,cRIOModule.kParity4=1,cRIOModule.kStopBits1=1,cRIOModule.kStopBits2=1,cRIOModule.kStopBits3=1,cRIOModule.kStopBits4=1,cRIOModule.RsiAttributes=[crioConfig.End]{AAF96797-F24B-46D8-9054-FC0465DACB31}resource=/crio_Mod7/DI22;0;ReadMethodType=bool{AC08027B-75B2-4F90-B201-DE8CE8687770}resource=/crio_Mod6/DIO30;0;ReadMethodType=bool;WriteMethodType=bool{AD1C3D8A-582F-4F35-A5BE-84EB7B462546}resource=/Sleep;0;ReadMethodType=bool;WriteMethodType=bool{AE1E3A3A-0256-406C-87EC-33E4538AB67D}resource=/crio_Mod7/DI18;0;ReadMethodType=bool{B0F4E5CF-9135-4F03-A7D6-2B318F67350E}ArbitrationForOutputData=NeverArbitrate;resource=/crio_Mod8/CH3;0;ReadMethodType=bool;WriteMethodType=bool{B30045B2-85E0-4811-9A49-14C5965EEEE2}cRIO Subresource{B826FAE5-0A40-4FAC-BFB6-0EA8C1F66D23}resource=/crio_Mod5/AI21;0;ReadMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_26_5.ctl{B8276699-A108-496B-B536-2DF8A163E2D9}resource=/crio_Mod5/AI6;0;ReadMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_26_5.ctl{BB67885D-086C-4888-B344-209CF20BCC26}resource=/crio_Mod6/DIO8;0;ReadMethodType=bool;WriteMethodType=bool{BCF90226-0C2F-40BF-94F9-DF8FECCCEFC6}resource=/crio_Mod4/AO1;0;WriteMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_20_5.ctl{BD4907C0-D1B1-4E3C-9B4E-CCDACE410DDA}resource=/crio_Mod7/DI28;0;ReadMethodType=bool{BF728343-1121-4009-8909-BCE41FEA296F}resource=/crio_Mod6/DIO6;0;ReadMethodType=bool;WriteMethodType=bool{C199378E-5CAA-401D-BC9D-E5AD5602BA5B}resource=/crio_Mod5/AI0;0;ReadMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_26_5.ctl{C2EFE3AD-F4F5-4A1D-9C8A-AD9F21BE9D43}resource=/crio_Mod7/DI15:8;0;ReadMethodType=u8{C3DFDF54-133E-4E73-8F94-37B2AA7D4DF0}resource=/crio_Mod5/AI16;0;ReadMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_26_5.ctl{C48AB196-7062-4201-B30C-4CFF1CC987B7}resource=/crio_Mod5/AI12;0;ReadMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_26_5.ctl{C63A8F69-AC59-4B62-9029-342CACC05C99}resource=/crio_Mod6/DIO14;0;ReadMethodType=bool;WriteMethodType=bool{CC1410C5-862F-462E-81D7-BFBE624C87B3}resource=/crio_Mod6/DIO27;0;ReadMethodType=bool;WriteMethodType=bool{CE242FAA-9214-4182-BA9B-3980A59E6ED5}ArbitrationForOutputData=NeverArbitrate;resource=/crio_Mod8/CH7;0;ReadMethodType=bool;WriteMethodType=bool{CF903595-3047-4EEC-9F44-5D7090AA7596}resource=/crio_Mod6/DIO12;0;ReadMethodType=bool;WriteMethodType=bool{D6AAB481-6C23-4E06-8CBF-F9BF83D7FA87}resource=/crio_Mod7/DI6;0;ReadMethodType=bool{D742D4C7-DC13-4816-9D8D-F264A55E4E5C}resource=/crio_Mod5/Trig;0;ReadMethodType=bool{D750D0C5-ED1B-4D51-963A-EC2BEC72FD4A}[crioConfig.Begin]crio.Location=Slot 2,cRIOModule.EnableHsInput=true,cRIOModule.EnableHsOutput=true,cRIOModule.EnableSpecialtyDigital=false[crioConfig.End]{DA702CB9-3D5A-46F3-9E01-2DB5BC1D06C0}cRIO Subresource{DD28C3E3-CE8D-4899-AB78-5A13C05D89C1}resource=/crio_Mod6/DIO26;0;ReadMethodType=bool;WriteMethodType=bool{DD78E3A9-FE21-4F69-BB74-B1C2F5CB00AF}resource=/crio_Mod6/DIO20;0;ReadMethodType=bool;WriteMethodType=bool{DE5E61A7-3EB3-435C-8551-113588CF0AC4}resource=/crio_Mod7/DI23:16;0;ReadMethodType=u8{DE9CEC57-11B9-4490-BAA2-F148EAF47BBD}resource=/crio_Mod5/AI27;0;ReadMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_26_5.ctl{E4CB8185-9FFB-469B-8AD5-8089A9392E73}resource=/crio_Mod6/DIO2;0;ReadMethodType=bool;WriteMethodType=bool{E5232104-C6D6-41B7-8B9F-F9DF1A3CDEE2}resource=/crio_Mod6/DIO7:0;0;ReadMethodType=u8;WriteMethodType=u8{E6176ECE-0AC4-47EA-97FF-D8404F2A0974}resource=/crio_Mod4/AO15;0;WriteMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_20_5.ctl{E6342017-DABE-418C-9E96-9BC769FDC4EC}ArbitrationForOutputData=NeverArbitrate;resource=/crio_Mod8/CH1;0;ReadMethodType=bool;WriteMethodType=bool{E776F9DB-80EC-491C-A4AB-96E60405E15E}ArbitrationForOutputData=NeverArbitrate;resource=/crio_Mod8/CH4;0;ReadMethodType=bool;WriteMethodType=bool{EB49BB78-26A2-46CC-BA4E-8464B1EDCCB1}resource=/crio_Mod4/AO3;0;WriteMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_20_5.ctl{EBF8CA8A-DFFE-4678-926A-07435D54D391}resource=/crio_Mod7/DI14;0;ReadMethodType=bool{EDD3D184-1F65-40EC-A4BC-10501CC928D7}[crioConfig.Begin]crio.Calibration=1,crio.Location=Slot 6,crio.Type=NI 9403,cRIOModule.DisableArbitration=false,cRIOModule.EnableDECoM=false,cRIOModule.EnableInputFifo=false,cRIOModule.EnableOutputFifo=false,cRIOModule.Initial Line Direction=00000000000000000000000000000000,cRIOModule.RsiAttributes=[crioConfig.End]{F03B2C15-53AC-4667-9AB1-91BF5CDF4497}ArbitrationForOutputData=NeverArbitrate;resource=/crio_Mod8/CH7:0;0;ReadMethodType=u8;WriteMethodType=u8{F16A0CA9-200C-4048-B6ED-CACDDE2EAA23}resource=/crio_Mod5/AI18;0;ReadMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_26_5.ctl{F16B7A2C-1D60-4EE2-BA63-4B3612EF7B68}resource=/crio_Mod5/AI11;0;ReadMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_26_5.ctl{F3782B73-4396-4816-9A74-E43902085E72}resource=/crio_Mod4/AO7;0;WriteMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_20_5.ctl{F6E02E0A-0174-4A31-BE95-6EF0F5CE5DC5}resource=/crio_Mod5/AI20;0;ReadMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_26_5.ctl{F74C1211-DF48-40D2-8B0C-0A5434BC6C28}resource=/crio_Mod7/DI31:0;0;ReadMethodType=u32{F93B9DDD-B8FC-47BB-9ECE-A33DA6FF9F19}[crioConfig.Begin]crio.Calibration=1,crio.Location=Slot 7,crio.Type=NI 9426,cRIOModule.EnableDECoM=false,cRIOModule.EnableInputFifo=false,cRIOModule.EnableOutputFifo=false,cRIOModule.RsiAttributes=[crioConfig.End]{F982661A-CF18-4CDC-91EB-44BFBC4DC38C}resource=/Chassis Temperature;0;ReadMethodType=i16{FE3F900B-394C-4641-9E8D-44F0E9972F6F}cRIO SubresourcecRIO-9114/Clk40/falsefalseFPGA_EXECUTION_MODEFPGA_TARGETFPGA_TARGET_CLASSCRIO_9114FPGA_TARGET_FAMILYVIRTEX5TARGET_TYPEFPGA</Property>
				<Property Name="configString.name" Type="Str">40 MHz Onboard ClockResourceName=40 MHz Onboard Clock;TopSignalConnect=Clk40;ClockSignalName=Clk40;MinFreq=40000000.000000;MaxFreq=40000000.000000;VariableFreq=0;NomFreq=40000000.000000;PeakPeriodJitter=250.000000;MinDutyCycle=50.000000;MaxDutyCycle=50.000000;Accuracy=100.000000;RunTime=0;SpreadSpectrum=0;GenericDataHash=D41D8CD98F00B204E9800998ECF8427E;Chassis Temperatureresource=/Chassis Temperature;0;ReadMethodType=i16cRIO-9114/Clk40/falsefalseFPGA_EXECUTION_MODEFPGA_TARGETFPGA_TARGET_CLASSCRIO_9114FPGA_TARGET_FAMILYVIRTEX5TARGET_TYPEFPGAFPGA LEDresource=/FPGA LED;0;ReadMethodType=bool;WriteMethodType=boolMod2[crioConfig.Begin]crio.Location=Slot 2,cRIOModule.EnableHsInput=true,cRIOModule.EnableHsOutput=true,cRIOModule.EnableSpecialtyDigital=false[crioConfig.End]Mod3[crioConfig.Begin]crio.Calibration=1,crio.Location=Slot 3,crio.Type=NI 9870,cRIOModule.EnableDECoM=false,cRIOModule.EnableInputFifo=false,cRIOModule.EnableOutputFifo=false,cRIOModule.kBaudRateDivider1=384,cRIOModule.kBaudRateDivider2=384,cRIOModule.kBaudRateDivider3=384,cRIOModule.kBaudRateDivider4=384,cRIOModule.kBaudRatePrescaler1=1,cRIOModule.kBaudRatePrescaler2=1,cRIOModule.kBaudRatePrescaler3=1,cRIOModule.kBaudRatePrescaler4=1,cRIOModule.kDataBits1=4,cRIOModule.kDataBits2=4,cRIOModule.kDataBits3=4,cRIOModule.kDataBits4=4,cRIOModule.kDesiredBaudRate1=9.600000E+3,cRIOModule.kDesiredBaudRate2=9.600000E+3,cRIOModule.kDesiredBaudRate3=9.600000E+3,cRIOModule.kDesiredBaudRate4=9.600000E+3,cRIOModule.kFlowControl1=1,cRIOModule.kFlowControl2=1,cRIOModule.kFlowControl3=1,cRIOModule.kFlowControl4=1,cRIOModule.kParity1=1,cRIOModule.kParity2=1,cRIOModule.kParity3=1,cRIOModule.kParity4=1,cRIOModule.kStopBits1=1,cRIOModule.kStopBits2=1,cRIOModule.kStopBits3=1,cRIOModule.kStopBits4=1,cRIOModule.RsiAttributes=[crioConfig.End]Mod4/AO0resource=/crio_Mod4/AO0;0;WriteMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_20_5.ctlMod4/AO10resource=/crio_Mod4/AO10;0;WriteMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_20_5.ctlMod4/AO11resource=/crio_Mod4/AO11;0;WriteMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_20_5.ctlMod4/AO12resource=/crio_Mod4/AO12;0;WriteMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_20_5.ctlMod4/AO13resource=/crio_Mod4/AO13;0;WriteMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_20_5.ctlMod4/AO14resource=/crio_Mod4/AO14;0;WriteMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_20_5.ctlMod4/AO15resource=/crio_Mod4/AO15;0;WriteMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_20_5.ctlMod4/AO1resource=/crio_Mod4/AO1;0;WriteMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_20_5.ctlMod4/AO2resource=/crio_Mod4/AO2;0;WriteMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_20_5.ctlMod4/AO3resource=/crio_Mod4/AO3;0;WriteMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_20_5.ctlMod4/AO4resource=/crio_Mod4/AO4;0;WriteMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_20_5.ctlMod4/AO5resource=/crio_Mod4/AO5;0;WriteMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_20_5.ctlMod4/AO6resource=/crio_Mod4/AO6;0;WriteMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_20_5.ctlMod4/AO7resource=/crio_Mod4/AO7;0;WriteMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_20_5.ctlMod4/AO8resource=/crio_Mod4/AO8;0;WriteMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_20_5.ctlMod4/AO9resource=/crio_Mod4/AO9;0;WriteMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_20_5.ctlMod4[crioConfig.Begin]crio.Calibration=1,crio.Location=Slot 4,crio.Type=NI 9264,cRIOModule.EnableDECoM=false,cRIOModule.EnableInputFifo=false,cRIOModule.EnableOutputFifo=false,cRIOModule.HotSwapMode=0,cRIOModule.RsiAttributes=[crioConfig.End]Mod5/AI0resource=/crio_Mod5/AI0;0;ReadMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_26_5.ctlMod5/AI10resource=/crio_Mod5/AI10;0;ReadMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_26_5.ctlMod5/AI11resource=/crio_Mod5/AI11;0;ReadMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_26_5.ctlMod5/AI12resource=/crio_Mod5/AI12;0;ReadMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_26_5.ctlMod5/AI13resource=/crio_Mod5/AI13;0;ReadMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_26_5.ctlMod5/AI14resource=/crio_Mod5/AI14;0;ReadMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_26_5.ctlMod5/AI15resource=/crio_Mod5/AI15;0;ReadMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_26_5.ctlMod5/AI16resource=/crio_Mod5/AI16;0;ReadMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_26_5.ctlMod5/AI17resource=/crio_Mod5/AI17;0;ReadMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_26_5.ctlMod5/AI18resource=/crio_Mod5/AI18;0;ReadMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_26_5.ctlMod5/AI19resource=/crio_Mod5/AI19;0;ReadMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_26_5.ctlMod5/AI1resource=/crio_Mod5/AI1;0;ReadMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_26_5.ctlMod5/AI20resource=/crio_Mod5/AI20;0;ReadMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_26_5.ctlMod5/AI21resource=/crio_Mod5/AI21;0;ReadMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_26_5.ctlMod5/AI22resource=/crio_Mod5/AI22;0;ReadMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_26_5.ctlMod5/AI23resource=/crio_Mod5/AI23;0;ReadMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_26_5.ctlMod5/AI24resource=/crio_Mod5/AI24;0;ReadMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_26_5.ctlMod5/AI25resource=/crio_Mod5/AI25;0;ReadMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_26_5.ctlMod5/AI26resource=/crio_Mod5/AI26;0;ReadMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_26_5.ctlMod5/AI27resource=/crio_Mod5/AI27;0;ReadMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_26_5.ctlMod5/AI28resource=/crio_Mod5/AI28;0;ReadMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_26_5.ctlMod5/AI29resource=/crio_Mod5/AI29;0;ReadMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_26_5.ctlMod5/AI2resource=/crio_Mod5/AI2;0;ReadMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_26_5.ctlMod5/AI30resource=/crio_Mod5/AI30;0;ReadMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_26_5.ctlMod5/AI31resource=/crio_Mod5/AI31;0;ReadMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_26_5.ctlMod5/AI3resource=/crio_Mod5/AI3;0;ReadMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_26_5.ctlMod5/AI4resource=/crio_Mod5/AI4;0;ReadMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_26_5.ctlMod5/AI5resource=/crio_Mod5/AI5;0;ReadMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_26_5.ctlMod5/AI6resource=/crio_Mod5/AI6;0;ReadMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_26_5.ctlMod5/AI7resource=/crio_Mod5/AI7;0;ReadMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_26_5.ctlMod5/AI8resource=/crio_Mod5/AI8;0;ReadMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_26_5.ctlMod5/AI9resource=/crio_Mod5/AI9;0;ReadMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_26_5.ctlMod5/DI0resource=/crio_Mod5/DI0;0;ReadMethodType=boolMod5/DO0resource=/crio_Mod5/DO0;0;WriteMethodType=boolMod5/Trigresource=/crio_Mod5/Trig;0;ReadMethodType=boolMod5[crioConfig.Begin]crio.Calibration=1,crio.Location=Slot 5,crio.Type=NI 9205,cRIOModule.AI0.TerminalMode=0,cRIOModule.AI0.VoltageRange=0,cRIOModule.AI1.TerminalMode=0,cRIOModule.AI1.VoltageRange=0,cRIOModule.AI10.TerminalMode=0,cRIOModule.AI10.VoltageRange=0,cRIOModule.AI11.TerminalMode=0,cRIOModule.AI11.VoltageRange=0,cRIOModule.AI12.TerminalMode=0,cRIOModule.AI12.VoltageRange=0,cRIOModule.AI13.TerminalMode=0,cRIOModule.AI13.VoltageRange=0,cRIOModule.AI14.TerminalMode=0,cRIOModule.AI14.VoltageRange=0,cRIOModule.AI15.TerminalMode=0,cRIOModule.AI15.VoltageRange=0,cRIOModule.AI16.TerminalMode=0,cRIOModule.AI16.VoltageRange=0,cRIOModule.AI17.TerminalMode=0,cRIOModule.AI17.VoltageRange=0,cRIOModule.AI18.TerminalMode=0,cRIOModule.AI18.VoltageRange=0,cRIOModule.AI19.TerminalMode=0,cRIOModule.AI19.VoltageRange=0,cRIOModule.AI2.TerminalMode=0,cRIOModule.AI2.VoltageRange=0,cRIOModule.AI20.TerminalMode=0,cRIOModule.AI20.VoltageRange=0,cRIOModule.AI21.TerminalMode=0,cRIOModule.AI21.VoltageRange=0,cRIOModule.AI22.TerminalMode=0,cRIOModule.AI22.VoltageRange=0,cRIOModule.AI23.TerminalMode=0,cRIOModule.AI23.VoltageRange=0,cRIOModule.AI24.TerminalMode=0,cRIOModule.AI24.VoltageRange=0,cRIOModule.AI25.TerminalMode=0,cRIOModule.AI25.VoltageRange=0,cRIOModule.AI26.TerminalMode=0,cRIOModule.AI26.VoltageRange=0,cRIOModule.AI27.TerminalMode=0,cRIOModule.AI27.VoltageRange=0,cRIOModule.AI28.TerminalMode=0,cRIOModule.AI28.VoltageRange=0,cRIOModule.AI29.TerminalMode=0,cRIOModule.AI29.VoltageRange=0,cRIOModule.AI3.TerminalMode=0,cRIOModule.AI3.VoltageRange=0,cRIOModule.AI30.TerminalMode=0,cRIOModule.AI30.VoltageRange=0,cRIOModule.AI31.TerminalMode=0,cRIOModule.AI31.VoltageRange=0,cRIOModule.AI4.TerminalMode=0,cRIOModule.AI4.VoltageRange=0,cRIOModule.AI5.TerminalMode=0,cRIOModule.AI5.VoltageRange=0,cRIOModule.AI6.TerminalMode=0,cRIOModule.AI6.VoltageRange=0,cRIOModule.AI7.TerminalMode=0,cRIOModule.AI7.VoltageRange=0,cRIOModule.AI8.TerminalMode=0,cRIOModule.AI8.VoltageRange=0,cRIOModule.AI9.TerminalMode=0,cRIOModule.AI9.VoltageRange=0,cRIOModule.EnableCalProperties=false,cRIOModule.EnableDECoM=false,cRIOModule.EnableInputFifo=false,cRIOModule.EnableOutputFifo=false,cRIOModule.MinConvTime=8.000000E+0,cRIOModule.RsiAttributes=[crioConfig.End]Mod6/DIO0resource=/crio_Mod6/DIO0;0;ReadMethodType=bool;WriteMethodType=boolMod6/DIO10resource=/crio_Mod6/DIO10;0;ReadMethodType=bool;WriteMethodType=boolMod6/DIO11resource=/crio_Mod6/DIO11;0;ReadMethodType=bool;WriteMethodType=boolMod6/DIO12resource=/crio_Mod6/DIO12;0;ReadMethodType=bool;WriteMethodType=boolMod6/DIO13resource=/crio_Mod6/DIO13;0;ReadMethodType=bool;WriteMethodType=boolMod6/DIO14resource=/crio_Mod6/DIO14;0;ReadMethodType=bool;WriteMethodType=boolMod6/DIO15:8resource=/crio_Mod6/DIO15:8;0;ReadMethodType=u8;WriteMethodType=u8Mod6/DIO15resource=/crio_Mod6/DIO15;0;ReadMethodType=bool;WriteMethodType=boolMod6/DIO16resource=/crio_Mod6/DIO16;0;ReadMethodType=bool;WriteMethodType=boolMod6/DIO17resource=/crio_Mod6/DIO17;0;ReadMethodType=bool;WriteMethodType=boolMod6/DIO18resource=/crio_Mod6/DIO18;0;ReadMethodType=bool;WriteMethodType=boolMod6/DIO19resource=/crio_Mod6/DIO19;0;ReadMethodType=bool;WriteMethodType=boolMod6/DIO1resource=/crio_Mod6/DIO1;0;ReadMethodType=bool;WriteMethodType=boolMod6/DIO20resource=/crio_Mod6/DIO20;0;ReadMethodType=bool;WriteMethodType=boolMod6/DIO21resource=/crio_Mod6/DIO21;0;ReadMethodType=bool;WriteMethodType=boolMod6/DIO22resource=/crio_Mod6/DIO22;0;ReadMethodType=bool;WriteMethodType=boolMod6/DIO23:16resource=/crio_Mod6/DIO23:16;0;ReadMethodType=u8;WriteMethodType=u8Mod6/DIO23resource=/crio_Mod6/DIO23;0;ReadMethodType=bool;WriteMethodType=boolMod6/DIO24resource=/crio_Mod6/DIO24;0;ReadMethodType=bool;WriteMethodType=boolMod6/DIO25resource=/crio_Mod6/DIO25;0;ReadMethodType=bool;WriteMethodType=boolMod6/DIO26resource=/crio_Mod6/DIO26;0;ReadMethodType=bool;WriteMethodType=boolMod6/DIO27resource=/crio_Mod6/DIO27;0;ReadMethodType=bool;WriteMethodType=boolMod6/DIO28resource=/crio_Mod6/DIO28;0;ReadMethodType=bool;WriteMethodType=boolMod6/DIO29resource=/crio_Mod6/DIO29;0;ReadMethodType=bool;WriteMethodType=boolMod6/DIO2resource=/crio_Mod6/DIO2;0;ReadMethodType=bool;WriteMethodType=boolMod6/DIO30resource=/crio_Mod6/DIO30;0;ReadMethodType=bool;WriteMethodType=boolMod6/DIO31:0resource=/crio_Mod6/DIO31:0;0;ReadMethodType=u32;WriteMethodType=u32Mod6/DIO31:24resource=/crio_Mod6/DIO31:24;0;ReadMethodType=u8;WriteMethodType=u8Mod6/DIO31resource=/crio_Mod6/DIO31;0;ReadMethodType=bool;WriteMethodType=boolMod6/DIO3resource=/crio_Mod6/DIO3;0;ReadMethodType=bool;WriteMethodType=boolMod6/DIO4resource=/crio_Mod6/DIO4;0;ReadMethodType=bool;WriteMethodType=boolMod6/DIO5resource=/crio_Mod6/DIO5;0;ReadMethodType=bool;WriteMethodType=boolMod6/DIO6resource=/crio_Mod6/DIO6;0;ReadMethodType=bool;WriteMethodType=boolMod6/DIO7:0resource=/crio_Mod6/DIO7:0;0;ReadMethodType=u8;WriteMethodType=u8Mod6/DIO7resource=/crio_Mod6/DIO7;0;ReadMethodType=bool;WriteMethodType=boolMod6/DIO8resource=/crio_Mod6/DIO8;0;ReadMethodType=bool;WriteMethodType=boolMod6/DIO9resource=/crio_Mod6/DIO9;0;ReadMethodType=bool;WriteMethodType=boolMod6[crioConfig.Begin]crio.Calibration=1,crio.Location=Slot 6,crio.Type=NI 9403,cRIOModule.DisableArbitration=false,cRIOModule.EnableDECoM=false,cRIOModule.EnableInputFifo=false,cRIOModule.EnableOutputFifo=false,cRIOModule.Initial Line Direction=00000000000000000000000000000000,cRIOModule.RsiAttributes=[crioConfig.End]Mod7/DI0resource=/crio_Mod7/DI0;0;ReadMethodType=boolMod7/DI10resource=/crio_Mod7/DI10;0;ReadMethodType=boolMod7/DI11resource=/crio_Mod7/DI11;0;ReadMethodType=boolMod7/DI12resource=/crio_Mod7/DI12;0;ReadMethodType=boolMod7/DI13resource=/crio_Mod7/DI13;0;ReadMethodType=boolMod7/DI14resource=/crio_Mod7/DI14;0;ReadMethodType=boolMod7/DI15:8resource=/crio_Mod7/DI15:8;0;ReadMethodType=u8Mod7/DI15resource=/crio_Mod7/DI15;0;ReadMethodType=boolMod7/DI16resource=/crio_Mod7/DI16;0;ReadMethodType=boolMod7/DI17resource=/crio_Mod7/DI17;0;ReadMethodType=boolMod7/DI18resource=/crio_Mod7/DI18;0;ReadMethodType=boolMod7/DI19resource=/crio_Mod7/DI19;0;ReadMethodType=boolMod7/DI1resource=/crio_Mod7/DI1;0;ReadMethodType=boolMod7/DI20resource=/crio_Mod7/DI20;0;ReadMethodType=boolMod7/DI21resource=/crio_Mod7/DI21;0;ReadMethodType=boolMod7/DI22resource=/crio_Mod7/DI22;0;ReadMethodType=boolMod7/DI23:16resource=/crio_Mod7/DI23:16;0;ReadMethodType=u8Mod7/DI23resource=/crio_Mod7/DI23;0;ReadMethodType=boolMod7/DI24resource=/crio_Mod7/DI24;0;ReadMethodType=boolMod7/DI25resource=/crio_Mod7/DI25;0;ReadMethodType=boolMod7/DI26resource=/crio_Mod7/DI26;0;ReadMethodType=boolMod7/DI27resource=/crio_Mod7/DI27;0;ReadMethodType=boolMod7/DI28resource=/crio_Mod7/DI28;0;ReadMethodType=boolMod7/DI29resource=/crio_Mod7/DI29;0;ReadMethodType=boolMod7/DI2resource=/crio_Mod7/DI2;0;ReadMethodType=boolMod7/DI30resource=/crio_Mod7/DI30;0;ReadMethodType=boolMod7/DI31:0resource=/crio_Mod7/DI31:0;0;ReadMethodType=u32Mod7/DI31:24resource=/crio_Mod7/DI31:24;0;ReadMethodType=u8Mod7/DI31resource=/crio_Mod7/DI31;0;ReadMethodType=boolMod7/DI3resource=/crio_Mod7/DI3;0;ReadMethodType=boolMod7/DI4resource=/crio_Mod7/DI4;0;ReadMethodType=boolMod7/DI5resource=/crio_Mod7/DI5;0;ReadMethodType=boolMod7/DI6resource=/crio_Mod7/DI6;0;ReadMethodType=boolMod7/DI7:0resource=/crio_Mod7/DI7:0;0;ReadMethodType=u8Mod7/DI7resource=/crio_Mod7/DI7;0;ReadMethodType=boolMod7/DI8resource=/crio_Mod7/DI8;0;ReadMethodType=boolMod7/DI9resource=/crio_Mod7/DI9;0;ReadMethodType=boolMod7[crioConfig.Begin]crio.Calibration=1,crio.Location=Slot 7,crio.Type=NI 9426,cRIOModule.EnableDECoM=false,cRIOModule.EnableInputFifo=false,cRIOModule.EnableOutputFifo=false,cRIOModule.RsiAttributes=[crioConfig.End]Mod8/CH0ArbitrationForOutputData=NeverArbitrate;resource=/crio_Mod8/CH0;0;ReadMethodType=bool;WriteMethodType=boolMod8/CH1ArbitrationForOutputData=NeverArbitrate;resource=/crio_Mod8/CH1;0;ReadMethodType=bool;WriteMethodType=boolMod8/CH2ArbitrationForOutputData=NeverArbitrate;resource=/crio_Mod8/CH2;0;ReadMethodType=bool;WriteMethodType=boolMod8/CH3ArbitrationForOutputData=NeverArbitrate;resource=/crio_Mod8/CH3;0;ReadMethodType=bool;WriteMethodType=boolMod8/CH4ArbitrationForOutputData=NeverArbitrate;resource=/crio_Mod8/CH4;0;ReadMethodType=bool;WriteMethodType=boolMod8/CH5ArbitrationForOutputData=NeverArbitrate;resource=/crio_Mod8/CH5;0;ReadMethodType=bool;WriteMethodType=boolMod8/CH6ArbitrationForOutputData=NeverArbitrate;resource=/crio_Mod8/CH6;0;ReadMethodType=bool;WriteMethodType=boolMod8/CH7:0ArbitrationForOutputData=NeverArbitrate;resource=/crio_Mod8/CH7:0;0;ReadMethodType=u8;WriteMethodType=u8Mod8/CH7ArbitrationForOutputData=NeverArbitrate;resource=/crio_Mod8/CH7;0;ReadMethodType=bool;WriteMethodType=boolMod8[crioConfig.Begin]crio.Calibration=1,crio.Location=Slot 8,crio.Type=NI 9485,cRIOModule.DIO3_0InitialDir=0,cRIOModule.DIO7_4InitialDir=0,cRIOModule.EnableDECoM=false,cRIOModule.EnableInputFifo=false,cRIOModule.EnableOutputFifo=false,cRIOModule.NumSyncRegs=11111111,cRIOModule.RsiAttributes=[crioConfig.End]Port1cRIO SubresourcePort2cRIO SubresourcePort3cRIO SubresourcePort4cRIO SubresourceScan Clockresource=/Scan Clock;0;ReadMethodType=boolSleepresource=/Sleep;0;ReadMethodType=bool;WriteMethodType=boolSystem Resetresource=/System Reset;0;ReadMethodType=bool;WriteMethodType=bool</Property>
				<Property Name="NI.LV.FPGA.CompileConfigString" Type="Str">cRIO-9114/Clk40/falsefalseFPGA_EXECUTION_MODEFPGA_TARGETFPGA_TARGET_CLASSCRIO_9114FPGA_TARGET_FAMILYVIRTEX5TARGET_TYPEFPGA</Property>
				<Property Name="NI.LV.FPGA.Version" Type="Int">6</Property>
				<Property Name="Resource Name" Type="Str">RIO0</Property>
				<Property Name="Target Class" Type="Str">cRIO-9114</Property>
				<Property Name="Top-Level Timing Source" Type="Str">40 MHz Onboard Clock</Property>
				<Property Name="Top-Level Timing Source Is Default" Type="Bool">true</Property>
				<Item Name="Chassis I/O" Type="Folder">
					<Item Name="Chassis Temperature" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/Chassis Temperature</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{F982661A-CF18-4CDC-91EB-44BFBC4DC38C}</Property>
					</Item>
					<Item Name="FPGA LED" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/FPGA LED</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{5F3890AE-0B20-4CBC-9296-B16B9057235E}</Property>
					</Item>
					<Item Name="Scan Clock" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/Scan Clock</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{33342A00-FFAC-47FB-B808-335CD25C8292}</Property>
					</Item>
					<Item Name="Sleep" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/Sleep</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{AD1C3D8A-582F-4F35-A5BE-84EB7B462546}</Property>
					</Item>
					<Item Name="System Reset" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/System Reset</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{A5EE6D18-A1F8-4C2A-93FC-32A9EA1377F8}</Property>
					</Item>
				</Item>
				<Item Name="Mod4" Type="Folder">
					<Item Name="Mod4/AO0" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_Mod4/AO0</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{056EBCA6-7154-4DC0-8614-2AB735114151}</Property>
					</Item>
					<Item Name="Mod4/AO1" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_Mod4/AO1</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{BCF90226-0C2F-40BF-94F9-DF8FECCCEFC6}</Property>
					</Item>
					<Item Name="Mod4/AO2" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_Mod4/AO2</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{5A8F9E57-38C1-4838-8F6B-ED0B18521BDD}</Property>
					</Item>
					<Item Name="Mod4/AO3" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_Mod4/AO3</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{EB49BB78-26A2-46CC-BA4E-8464B1EDCCB1}</Property>
					</Item>
					<Item Name="Mod4/AO4" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_Mod4/AO4</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{4EE2E657-529D-4627-AF7D-4FE92475AD01}</Property>
					</Item>
					<Item Name="Mod4/AO5" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_Mod4/AO5</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{2A47B7BB-0A3A-4444-90C3-7B4B7EC5C4F4}</Property>
					</Item>
					<Item Name="Mod4/AO6" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_Mod4/AO6</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{9A2FC7EF-E16E-4860-A59A-C25E8F9ABA67}</Property>
					</Item>
					<Item Name="Mod4/AO7" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_Mod4/AO7</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{F3782B73-4396-4816-9A74-E43902085E72}</Property>
					</Item>
					<Item Name="Mod4/AO8" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_Mod4/AO8</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{41A1D609-8C92-4C74-B0F7-F37E5E749BAA}</Property>
					</Item>
					<Item Name="Mod4/AO9" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_Mod4/AO9</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{38821F03-FD11-4B45-9CA9-7AF7D99E5A53}</Property>
					</Item>
					<Item Name="Mod4/AO10" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_Mod4/AO10</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{34E14A0C-0E32-4CBA-B6F4-F553CC8D3B3A}</Property>
					</Item>
					<Item Name="Mod4/AO11" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_Mod4/AO11</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{5BF02E35-30C0-4665-8F5D-5A2D7364453A}</Property>
					</Item>
					<Item Name="Mod4/AO12" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_Mod4/AO12</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{37027F60-DCB1-4EB1-8588-87402C7F6E21}</Property>
					</Item>
					<Item Name="Mod4/AO13" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_Mod4/AO13</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{4C2619D4-EC08-4DD5-8F1E-57EF03C7841B}</Property>
					</Item>
					<Item Name="Mod4/AO14" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_Mod4/AO14</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{6F6B6516-E5B6-4AE6-A0B7-946B32B2AB61}</Property>
					</Item>
					<Item Name="Mod4/AO15" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_Mod4/AO15</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{E6176ECE-0AC4-47EA-97FF-D8404F2A0974}</Property>
					</Item>
				</Item>
				<Item Name="Mod6" Type="Folder">
					<Item Name="Mod6/DIO0" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_Mod6/DIO0</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{9F10E2F3-C632-41AE-9061-54C9B1C25118}</Property>
					</Item>
					<Item Name="Mod6/DIO1" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_Mod6/DIO1</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{39C16C7A-B383-4944-AB14-AF21ABF17FFC}</Property>
					</Item>
					<Item Name="Mod6/DIO2" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_Mod6/DIO2</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{E4CB8185-9FFB-469B-8AD5-8089A9392E73}</Property>
					</Item>
					<Item Name="Mod6/DIO3" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_Mod6/DIO3</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{1C491720-91D5-4EB2-8B48-4E7163D0D818}</Property>
					</Item>
					<Item Name="Mod6/DIO4" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_Mod6/DIO4</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{30EF311D-079A-4437-BEA0-AC28FF4BEEB2}</Property>
					</Item>
					<Item Name="Mod6/DIO5" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_Mod6/DIO5</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{579C0112-5F60-4160-9541-F158DB127FF4}</Property>
					</Item>
					<Item Name="Mod6/DIO6" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_Mod6/DIO6</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{BF728343-1121-4009-8909-BCE41FEA296F}</Property>
					</Item>
					<Item Name="Mod6/DIO7" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_Mod6/DIO7</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{4BBF2DFC-565F-4EB1-8DA7-7515F4FBF2BE}</Property>
					</Item>
					<Item Name="Mod6/DIO7:0" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_Mod6/DIO7:0</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{E5232104-C6D6-41B7-8B9F-F9DF1A3CDEE2}</Property>
					</Item>
					<Item Name="Mod6/DIO8" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_Mod6/DIO8</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{BB67885D-086C-4888-B344-209CF20BCC26}</Property>
					</Item>
					<Item Name="Mod6/DIO9" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_Mod6/DIO9</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{19013481-B79A-46A6-8E8A-DD3EAB6B0098}</Property>
					</Item>
					<Item Name="Mod6/DIO10" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_Mod6/DIO10</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{0D118142-4602-419E-9E15-1AB89A072482}</Property>
					</Item>
					<Item Name="Mod6/DIO11" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_Mod6/DIO11</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{66E1476D-5926-4A34-8033-6D3BCE59AEB2}</Property>
					</Item>
					<Item Name="Mod6/DIO12" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_Mod6/DIO12</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{CF903595-3047-4EEC-9F44-5D7090AA7596}</Property>
					</Item>
					<Item Name="Mod6/DIO13" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_Mod6/DIO13</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{67C32A3B-8FF3-4127-B0DE-195A56A6A392}</Property>
					</Item>
					<Item Name="Mod6/DIO14" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_Mod6/DIO14</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{C63A8F69-AC59-4B62-9029-342CACC05C99}</Property>
					</Item>
					<Item Name="Mod6/DIO15" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_Mod6/DIO15</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{8E443FA4-8693-49B4-BCCE-F9AE98A070CD}</Property>
					</Item>
					<Item Name="Mod6/DIO15:8" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_Mod6/DIO15:8</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{17E5FE01-F59D-4C28-833F-E4D4BACEE172}</Property>
					</Item>
					<Item Name="Mod6/DIO16" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_Mod6/DIO16</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{6D20F854-F9EC-469D-B9C0-729AFEC71D6C}</Property>
					</Item>
					<Item Name="Mod6/DIO17" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_Mod6/DIO17</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{4358B978-C04A-49EE-9C31-E1E1D51CFBA2}</Property>
					</Item>
					<Item Name="Mod6/DIO18" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_Mod6/DIO18</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{86E60440-3D55-48EC-ADF3-5BEACAD6EE7C}</Property>
					</Item>
					<Item Name="Mod6/DIO19" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_Mod6/DIO19</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{58A31F42-137D-4418-B32A-07A13F4E3F58}</Property>
					</Item>
					<Item Name="Mod6/DIO20" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_Mod6/DIO20</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{DD78E3A9-FE21-4F69-BB74-B1C2F5CB00AF}</Property>
					</Item>
					<Item Name="Mod6/DIO21" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_Mod6/DIO21</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{57D0AA56-9AE7-4A17-921D-8694B11A3841}</Property>
					</Item>
					<Item Name="Mod6/DIO22" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_Mod6/DIO22</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{28C241B6-E68B-4B09-9D02-9FC7D83E1A1F}</Property>
					</Item>
					<Item Name="Mod6/DIO23" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_Mod6/DIO23</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{258F5623-49E6-414B-BDC7-E7EBFC985958}</Property>
					</Item>
					<Item Name="Mod6/DIO23:16" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_Mod6/DIO23:16</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{00473A29-EA5A-4BCD-997C-5414BA1991F3}</Property>
					</Item>
					<Item Name="Mod6/DIO24" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_Mod6/DIO24</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{0E7DE915-24B7-4879-91BC-0BDEFF9CA4A6}</Property>
					</Item>
					<Item Name="Mod6/DIO25" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_Mod6/DIO25</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{A0216560-3E09-4B3F-85F9-1DE4EB4984D4}</Property>
					</Item>
					<Item Name="Mod6/DIO26" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_Mod6/DIO26</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{DD28C3E3-CE8D-4899-AB78-5A13C05D89C1}</Property>
					</Item>
					<Item Name="Mod6/DIO27" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_Mod6/DIO27</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{CC1410C5-862F-462E-81D7-BFBE624C87B3}</Property>
					</Item>
					<Item Name="Mod6/DIO28" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_Mod6/DIO28</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{A4BD14FC-BA55-4AE0-ADBB-EDA2A9B3B785}</Property>
					</Item>
					<Item Name="Mod6/DIO29" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_Mod6/DIO29</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{4FA9C266-678B-4AC1-8076-FD5BB5F7BE62}</Property>
					</Item>
					<Item Name="Mod6/DIO30" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_Mod6/DIO30</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{AC08027B-75B2-4F90-B201-DE8CE8687770}</Property>
					</Item>
					<Item Name="Mod6/DIO31" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_Mod6/DIO31</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{5F4B6A1D-CC5E-41CC-B537-2E1965F4B23E}</Property>
					</Item>
					<Item Name="Mod6/DIO31:0" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_Mod6/DIO31:0</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{45C2EE1F-68B2-446A-A01B-A4E136171B94}</Property>
					</Item>
					<Item Name="Mod6/DIO31:24" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_Mod6/DIO31:24</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{73111380-579D-4563-8D2E-BB7F8D1C3E2C}</Property>
					</Item>
				</Item>
				<Item Name="Mod5" Type="Folder">
					<Item Name="Mod5/AI0" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_Mod5/AI0</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{C199378E-5CAA-401D-BC9D-E5AD5602BA5B}</Property>
					</Item>
					<Item Name="Mod5/AI1" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_Mod5/AI1</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{97953E3B-A037-4F4E-9CEA-20E3648E36B4}</Property>
					</Item>
					<Item Name="Mod5/AI2" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_Mod5/AI2</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{8D8E8A10-8438-4B04-B949-4C5235304B04}</Property>
					</Item>
					<Item Name="Mod5/AI3" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_Mod5/AI3</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{523DF77F-5611-48D5-BB1C-31A4BC8CBC7A}</Property>
					</Item>
					<Item Name="Mod5/AI4" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_Mod5/AI4</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{9FFEFA0D-3597-4A50-84C9-0647A74A0A9A}</Property>
					</Item>
					<Item Name="Mod5/AI5" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_Mod5/AI5</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{4D040455-58A3-4622-A7BB-73B0D546F53D}</Property>
					</Item>
					<Item Name="Mod5/AI6" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_Mod5/AI6</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{B8276699-A108-496B-B536-2DF8A163E2D9}</Property>
					</Item>
					<Item Name="Mod5/AI7" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_Mod5/AI7</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{592ABD39-D5C2-4E95-8B6F-662E43599280}</Property>
					</Item>
					<Item Name="Mod5/AI8" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_Mod5/AI8</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{4F5EBD77-3F9B-44E4-BE22-342147BA7692}</Property>
					</Item>
					<Item Name="Mod5/AI9" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_Mod5/AI9</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{81D49D0D-C633-41B1-BA50-25B5CC272278}</Property>
					</Item>
					<Item Name="Mod5/AI10" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_Mod5/AI10</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{7C4BC52F-96C8-43A1-B025-7A88FF3EC947}</Property>
					</Item>
					<Item Name="Mod5/AI11" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_Mod5/AI11</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{F16B7A2C-1D60-4EE2-BA63-4B3612EF7B68}</Property>
					</Item>
					<Item Name="Mod5/AI12" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_Mod5/AI12</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{C48AB196-7062-4201-B30C-4CFF1CC987B7}</Property>
					</Item>
					<Item Name="Mod5/AI13" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_Mod5/AI13</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{76448D27-A5F2-460A-B4ED-9DFECDCED23A}</Property>
					</Item>
					<Item Name="Mod5/AI14" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_Mod5/AI14</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{34DAB6F2-AE1E-4B11-88EC-D15C6090B6F9}</Property>
					</Item>
					<Item Name="Mod5/AI15" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_Mod5/AI15</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{38D137CF-E477-4B6F-BDB7-893CF0FF4DBA}</Property>
					</Item>
					<Item Name="Mod5/AI16" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_Mod5/AI16</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{C3DFDF54-133E-4E73-8F94-37B2AA7D4DF0}</Property>
					</Item>
					<Item Name="Mod5/AI17" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_Mod5/AI17</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{7EC8FA29-22FC-4426-A5F3-769B10935792}</Property>
					</Item>
					<Item Name="Mod5/AI18" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_Mod5/AI18</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{F16A0CA9-200C-4048-B6ED-CACDDE2EAA23}</Property>
					</Item>
					<Item Name="Mod5/AI19" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_Mod5/AI19</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{579D217F-4DC5-45DB-BEA1-9268A70B66D8}</Property>
					</Item>
					<Item Name="Mod5/AI20" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_Mod5/AI20</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{F6E02E0A-0174-4A31-BE95-6EF0F5CE5DC5}</Property>
					</Item>
					<Item Name="Mod5/AI21" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_Mod5/AI21</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{B826FAE5-0A40-4FAC-BFB6-0EA8C1F66D23}</Property>
					</Item>
					<Item Name="Mod5/AI22" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_Mod5/AI22</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{68151DB3-A690-44A9-9737-865DD95EF1AA}</Property>
					</Item>
					<Item Name="Mod5/AI23" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_Mod5/AI23</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{64FF56E9-F485-47D3-B6CF-925C5251ECC0}</Property>
					</Item>
					<Item Name="Mod5/AI24" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_Mod5/AI24</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{5FC66CA8-BB2A-464E-A0B1-B2B50C43FD7E}</Property>
					</Item>
					<Item Name="Mod5/AI25" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_Mod5/AI25</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{603712B5-1CA4-492B-893A-BA0C4BEF8FDC}</Property>
					</Item>
					<Item Name="Mod5/AI26" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_Mod5/AI26</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{67B933B5-DB36-4A72-AD36-65A7C1D7E3C3}</Property>
					</Item>
					<Item Name="Mod5/AI27" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_Mod5/AI27</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{DE9CEC57-11B9-4490-BAA2-F148EAF47BBD}</Property>
					</Item>
					<Item Name="Mod5/AI28" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_Mod5/AI28</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{55AE7E84-1F20-4F9F-8169-E0858B13F612}</Property>
					</Item>
					<Item Name="Mod5/AI29" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_Mod5/AI29</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{4903062E-3F34-41CD-A371-1DAC4CA3D08B}</Property>
					</Item>
					<Item Name="Mod5/AI30" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_Mod5/AI30</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{781E65DD-AD91-44F4-99A3-302836A76056}</Property>
					</Item>
					<Item Name="Mod5/AI31" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_Mod5/AI31</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{12DC90D0-E832-4211-B3DB-4B09DF335E9D}</Property>
					</Item>
					<Item Name="Mod5/Trig" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_Mod5/Trig</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{D742D4C7-DC13-4816-9D8D-F264A55E4E5C}</Property>
					</Item>
					<Item Name="Mod5/DI0" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_Mod5/DI0</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{4AFF04AB-0E4A-497E-BB7C-EC1B6A76E4A1}</Property>
					</Item>
					<Item Name="Mod5/DO0" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_Mod5/DO0</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{A46B34E9-C383-4089-91AD-C90E725B4800}</Property>
					</Item>
				</Item>
				<Item Name="Mod7" Type="Folder">
					<Item Name="Mod7/DI0" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_Mod7/DI0</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{A56B9C58-F9A2-49AF-9782-BB34BF0B5DC6}</Property>
					</Item>
					<Item Name="Mod7/DI1" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_Mod7/DI1</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{7F1983EA-3A76-4AD1-AAE7-ACAAFEDEB4C4}</Property>
					</Item>
					<Item Name="Mod7/DI2" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_Mod7/DI2</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{32DF05AF-91FB-423F-BD14-B126E8C9ACD5}</Property>
					</Item>
					<Item Name="Mod7/DI3" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_Mod7/DI3</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{84BF8DBE-659D-407A-B503-A10DB876175D}</Property>
					</Item>
					<Item Name="Mod7/DI4" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_Mod7/DI4</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{97FBE057-A13C-4895-89C6-720DCF637900}</Property>
					</Item>
					<Item Name="Mod7/DI5" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_Mod7/DI5</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{2F4F0621-1A31-4381-AC3E-FEB3939397A2}</Property>
					</Item>
					<Item Name="Mod7/DI6" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_Mod7/DI6</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{D6AAB481-6C23-4E06-8CBF-F9BF83D7FA87}</Property>
					</Item>
					<Item Name="Mod7/DI7" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_Mod7/DI7</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{8552FEBF-7825-46E6-8D3B-C23EB841FF8D}</Property>
					</Item>
					<Item Name="Mod7/DI8" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_Mod7/DI8</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{69A81ED8-BAA5-4D6E-9874-5CFDB59412E3}</Property>
					</Item>
					<Item Name="Mod7/DI9" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_Mod7/DI9</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{8CDE6672-5E18-4864-8F2E-ECAA5904CE92}</Property>
					</Item>
					<Item Name="Mod7/DI10" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_Mod7/DI10</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{59E70582-A556-427A-9FFC-7A24AD7D0ACD}</Property>
					</Item>
					<Item Name="Mod7/DI11" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_Mod7/DI11</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{47C2F0A8-E7B7-443F-923C-3DFDD5780026}</Property>
					</Item>
					<Item Name="Mod7/DI12" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_Mod7/DI12</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{1A261236-C21F-491C-B87C-2133EE49D6C2}</Property>
					</Item>
					<Item Name="Mod7/DI13" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_Mod7/DI13</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{1A00AF3F-CF1E-4B0E-844A-BDC5233EFB9D}</Property>
					</Item>
					<Item Name="Mod7/DI14" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_Mod7/DI14</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{EBF8CA8A-DFFE-4678-926A-07435D54D391}</Property>
					</Item>
					<Item Name="Mod7/DI15" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_Mod7/DI15</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{8F201A13-09A1-43D5-95E2-14144CCB5FB9}</Property>
					</Item>
					<Item Name="Mod7/DI16" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_Mod7/DI16</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{286239E3-7004-429D-B316-A809CF9EEBEF}</Property>
					</Item>
					<Item Name="Mod7/DI17" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_Mod7/DI17</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{A36E02DA-EB68-4EFA-9E27-76188ED67F5C}</Property>
					</Item>
					<Item Name="Mod7/DI18" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_Mod7/DI18</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{AE1E3A3A-0256-406C-87EC-33E4538AB67D}</Property>
					</Item>
					<Item Name="Mod7/DI19" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_Mod7/DI19</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{3D37C13A-3DC6-4277-8958-F59622167CC3}</Property>
					</Item>
					<Item Name="Mod7/DI20" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_Mod7/DI20</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{705FA5F3-FBC3-4CE7-ACC9-A54BA8AD7C27}</Property>
					</Item>
					<Item Name="Mod7/DI21" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_Mod7/DI21</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{037DD5B7-DA33-4AB8-9828-967F8206784F}</Property>
					</Item>
					<Item Name="Mod7/DI22" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_Mod7/DI22</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{AAF96797-F24B-46D8-9054-FC0465DACB31}</Property>
					</Item>
					<Item Name="Mod7/DI23" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_Mod7/DI23</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{49E8623A-BFB6-40CD-8677-01B9E4892C36}</Property>
					</Item>
					<Item Name="Mod7/DI24" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_Mod7/DI24</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{3D62A11A-4FA3-4595-B070-569F898E9CC4}</Property>
					</Item>
					<Item Name="Mod7/DI25" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_Mod7/DI25</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{91C98655-A391-42CE-89A9-73D4DE6D84CB}</Property>
					</Item>
					<Item Name="Mod7/DI26" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_Mod7/DI26</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{6A08D7D5-B5AD-4A70-BAA6-96FD3C67C14B}</Property>
					</Item>
					<Item Name="Mod7/DI27" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_Mod7/DI27</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{122C3E32-0105-444C-AF23-9DB38DC0589F}</Property>
					</Item>
					<Item Name="Mod7/DI28" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_Mod7/DI28</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{BD4907C0-D1B1-4E3C-9B4E-CCDACE410DDA}</Property>
					</Item>
					<Item Name="Mod7/DI29" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_Mod7/DI29</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{129C2002-96D2-4CB4-87A5-ECC5006898F6}</Property>
					</Item>
					<Item Name="Mod7/DI30" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_Mod7/DI30</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{794EFF79-6439-4884-875F-07A995580277}</Property>
					</Item>
					<Item Name="Mod7/DI31" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_Mod7/DI31</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{1435FD3A-40EF-4103-8FA2-654E189993D6}</Property>
					</Item>
					<Item Name="Mod7/DI7:0" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_Mod7/DI7:0</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{26F01443-7C2E-4F39-AB4F-C0E3318323B0}</Property>
					</Item>
					<Item Name="Mod7/DI15:8" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_Mod7/DI15:8</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{C2EFE3AD-F4F5-4A1D-9C8A-AD9F21BE9D43}</Property>
					</Item>
					<Item Name="Mod7/DI23:16" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_Mod7/DI23:16</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{DE5E61A7-3EB3-435C-8551-113588CF0AC4}</Property>
					</Item>
					<Item Name="Mod7/DI31:24" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_Mod7/DI31:24</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{564F579E-9FFD-4614-99FD-F21439003B5A}</Property>
					</Item>
					<Item Name="Mod7/DI31:0" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/crio_Mod7/DI31:0</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{F74C1211-DF48-40D2-8B0C-0A5434BC6C28}</Property>
					</Item>
				</Item>
				<Item Name="Mod8" Type="Folder">
					<Item Name="Mod8/CH0" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/crio_Mod8/CH0</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{53334BF5-376F-4AEA-BF49-31D7CFFA56A7}</Property>
					</Item>
					<Item Name="Mod8/CH1" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/crio_Mod8/CH1</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{E6342017-DABE-418C-9E96-9BC769FDC4EC}</Property>
					</Item>
					<Item Name="Mod8/CH2" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/crio_Mod8/CH2</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{81038268-EAD0-401A-AF0B-FAB237A031AB}</Property>
					</Item>
					<Item Name="Mod8/CH3" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/crio_Mod8/CH3</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{B0F4E5CF-9135-4F03-A7D6-2B318F67350E}</Property>
					</Item>
					<Item Name="Mod8/CH4" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/crio_Mod8/CH4</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{E776F9DB-80EC-491C-A4AB-96E60405E15E}</Property>
					</Item>
					<Item Name="Mod8/CH5" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/crio_Mod8/CH5</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{1AFF7D2D-E4EE-42A7-A1D0-90E6F90B2A09}</Property>
					</Item>
					<Item Name="Mod8/CH6" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/crio_Mod8/CH6</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{015E1991-D03F-427D-ABD1-2CC9E4F9CA07}</Property>
					</Item>
					<Item Name="Mod8/CH7" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/crio_Mod8/CH7</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{CE242FAA-9214-4182-BA9B-3980A59E6ED5}</Property>
					</Item>
					<Item Name="Mod8/CH7:0" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/crio_Mod8/CH7:0</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{F03B2C15-53AC-4667-9AB1-91BF5CDF4497}</Property>
					</Item>
				</Item>
				<Item Name="40 MHz Onboard Clock" Type="FPGA Base Clock">
					<Property Name="FPGA.PersistentID" Type="Str">{655F200B-582C-4255-94EC-874F8B7F8400}</Property>
					<Property Name="NI.LV.FPGA.BaseTSConfig" Type="Str">ResourceName=40 MHz Onboard Clock;TopSignalConnect=Clk40;ClockSignalName=Clk40;MinFreq=40000000.000000;MaxFreq=40000000.000000;VariableFreq=0;NomFreq=40000000.000000;PeakPeriodJitter=250.000000;MinDutyCycle=50.000000;MaxDutyCycle=50.000000;Accuracy=100.000000;RunTime=0;SpreadSpectrum=0;GenericDataHash=D41D8CD98F00B204E9800998ECF8427E;</Property>
					<Property Name="NI.LV.FPGA.BaseTSConfig.Accuracy" Type="Dbl">100</Property>
					<Property Name="NI.LV.FPGA.BaseTSConfig.ClockSignalName" Type="Str">Clk40</Property>
					<Property Name="NI.LV.FPGA.BaseTSConfig.MaxDutyCycle" Type="Dbl">50</Property>
					<Property Name="NI.LV.FPGA.BaseTSConfig.MaxFrequency" Type="Dbl">40000000</Property>
					<Property Name="NI.LV.FPGA.BaseTSConfig.MinDutyCycle" Type="Dbl">50</Property>
					<Property Name="NI.LV.FPGA.BaseTSConfig.MinFrequency" Type="Dbl">40000000</Property>
					<Property Name="NI.LV.FPGA.BaseTSConfig.NominalFrequency" Type="Dbl">40000000</Property>
					<Property Name="NI.LV.FPGA.BaseTSConfig.PeakPeriodJitter" Type="Dbl">250</Property>
					<Property Name="NI.LV.FPGA.BaseTSConfig.ResourceName" Type="Str">40 MHz Onboard Clock</Property>
					<Property Name="NI.LV.FPGA.BaseTSConfig.SupportAndRequireRuntimeEnableDisable" Type="Bool">false</Property>
					<Property Name="NI.LV.FPGA.BaseTSConfig.TopSignalConnect" Type="Str">Clk40</Property>
					<Property Name="NI.LV.FPGA.BaseTSConfig.VariableFrequency" Type="Bool">false</Property>
					<Property Name="NI.LV.FPGA.Valid" Type="Bool">true</Property>
					<Property Name="NI.LV.FPGA.Version" Type="Int">5</Property>
				</Item>
				<Item Name="IP Builder" Type="IP Builder Target">
					<Item Name="Dependencies" Type="Dependencies"/>
					<Item Name="Build Specifications" Type="Build"/>
				</Item>
				<Item Name="Mod3" Type="RIO C Series Module">
					<Property Name="crio.Calibration" Type="Str">1</Property>
					<Property Name="crio.Location" Type="Str">Slot 3</Property>
					<Property Name="crio.RequiresValidation" Type="Bool">false</Property>
					<Property Name="crio.SDcounterSlaveChannelMask" Type="Str">0</Property>
					<Property Name="crio.SDCounterSlaveMasterSlot" Type="Str">0</Property>
					<Property Name="crio.SDInputFilter" Type="Str">128</Property>
					<Property Name="crio.SupportsDynamicRes" Type="Bool">false</Property>
					<Property Name="crio.Type" Type="Str">NI 9870</Property>
					<Property Name="cRIOModule.DigitalIOMode" Type="Str">0</Property>
					<Property Name="cRIOModule.EnableSpecialtyDigital" Type="Str">false</Property>
					<Property Name="cRIOModule.kBaudRateDivider1" Type="Str">384</Property>
					<Property Name="cRIOModule.kBaudRateDivider2" Type="Str">384</Property>
					<Property Name="cRIOModule.kBaudRateDivider3" Type="Str">384</Property>
					<Property Name="cRIOModule.kBaudRateDivider4" Type="Str">384</Property>
					<Property Name="cRIOModule.kBaudRatePrescaler1" Type="Str">1</Property>
					<Property Name="cRIOModule.kBaudRatePrescaler2" Type="Str">1</Property>
					<Property Name="cRIOModule.kBaudRatePrescaler3" Type="Str">1</Property>
					<Property Name="cRIOModule.kBaudRatePrescaler4" Type="Str">1</Property>
					<Property Name="cRIOModule.kDataBits1" Type="Str">4</Property>
					<Property Name="cRIOModule.kDataBits2" Type="Str">4</Property>
					<Property Name="cRIOModule.kDataBits3" Type="Str">4</Property>
					<Property Name="cRIOModule.kDataBits4" Type="Str">4</Property>
					<Property Name="cRIOModule.kDesiredBaudRate1" Type="Str">9.600000E+3</Property>
					<Property Name="cRIOModule.kDesiredBaudRate2" Type="Str">9.600000E+3</Property>
					<Property Name="cRIOModule.kDesiredBaudRate3" Type="Str">9.600000E+3</Property>
					<Property Name="cRIOModule.kDesiredBaudRate4" Type="Str">9.600000E+3</Property>
					<Property Name="cRIOModule.kFlowControl1" Type="Str">1</Property>
					<Property Name="cRIOModule.kFlowControl2" Type="Str">1</Property>
					<Property Name="cRIOModule.kFlowControl3" Type="Str">1</Property>
					<Property Name="cRIOModule.kFlowControl4" Type="Str">1</Property>
					<Property Name="cRIOModule.kParity1" Type="Str">1</Property>
					<Property Name="cRIOModule.kParity2" Type="Str">1</Property>
					<Property Name="cRIOModule.kParity3" Type="Str">1</Property>
					<Property Name="cRIOModule.kParity4" Type="Str">1</Property>
					<Property Name="cRIOModule.kStopBits1" Type="Str">1</Property>
					<Property Name="cRIOModule.kStopBits2" Type="Str">1</Property>
					<Property Name="cRIOModule.kStopBits3" Type="Str">1</Property>
					<Property Name="cRIOModule.kStopBits4" Type="Str">1</Property>
					<Property Name="FPGA.PersistentID" Type="Str">{AAF551AD-6D94-4BB7-BC6C-799147FCCC7F}</Property>
					<Item Name="Port1" Type="RIO Subresource">
						<Property Name="FPGA.PersistentID" Type="Str">{B30045B2-85E0-4811-9A49-14C5965EEEE2}</Property>
					</Item>
					<Item Name="Port2" Type="RIO Subresource">
						<Property Name="FPGA.PersistentID" Type="Str">{FE3F900B-394C-4641-9E8D-44F0E9972F6F}</Property>
					</Item>
					<Item Name="Port3" Type="RIO Subresource">
						<Property Name="FPGA.PersistentID" Type="Str">{DA702CB9-3D5A-46F3-9E01-2DB5BC1D06C0}</Property>
					</Item>
					<Item Name="Port4" Type="RIO Subresource">
						<Property Name="FPGA.PersistentID" Type="Str">{6086A36B-77E4-4585-88D9-BCCAFBDD2A61}</Property>
					</Item>
				</Item>
				<Item Name="Mod4" Type="RIO C Series Module">
					<Property Name="crio.Calibration" Type="Str">1</Property>
					<Property Name="crio.Location" Type="Str">Slot 4</Property>
					<Property Name="crio.RequiresValidation" Type="Bool">false</Property>
					<Property Name="crio.SDcounterSlaveChannelMask" Type="Str">0</Property>
					<Property Name="crio.SDCounterSlaveMasterSlot" Type="Str">0</Property>
					<Property Name="crio.SDInputFilter" Type="Str">128</Property>
					<Property Name="crio.SupportsDynamicRes" Type="Bool">false</Property>
					<Property Name="crio.Type" Type="Str">NI 9264</Property>
					<Property Name="cRIOModule.DigitalIOMode" Type="Str">0</Property>
					<Property Name="cRIOModule.EnableSpecialtyDigital" Type="Str">false</Property>
					<Property Name="cRIOModule.HotSwapMode" Type="Str">0</Property>
					<Property Name="FPGA.PersistentID" Type="Str">{8AEC8489-71BF-4F04-99AE-982D012A8EDD}</Property>
				</Item>
				<Item Name="Mod6" Type="RIO C Series Module">
					<Property Name="crio.Calibration" Type="Str">1</Property>
					<Property Name="crio.Location" Type="Str">Slot 6</Property>
					<Property Name="crio.RequiresValidation" Type="Bool">false</Property>
					<Property Name="crio.SDcounterSlaveChannelMask" Type="Str">0</Property>
					<Property Name="crio.SDCounterSlaveMasterSlot" Type="Str">0</Property>
					<Property Name="crio.SDInputFilter" Type="Str">128</Property>
					<Property Name="crio.SupportsDynamicRes" Type="Bool">true</Property>
					<Property Name="crio.Type" Type="Str">NI 9403</Property>
					<Property Name="cRIOModule.DigitalIOMode" Type="Str">0</Property>
					<Property Name="cRIOModule.DisableArbitration" Type="Str">false</Property>
					<Property Name="cRIOModule.EnableSpecialtyDigital" Type="Str">false</Property>
					<Property Name="cRIOModule.Initial Line Direction" Type="Str">00000000000000000000000000000000</Property>
					<Property Name="FPGA.PersistentID" Type="Str">{EDD3D184-1F65-40EC-A4BC-10501CC928D7}</Property>
				</Item>
				<Item Name="SC FPGA.vi" Type="VI" URL="../SC FPGA.vi">
					<Property Name="configString.guid" Type="Str">{00473A29-EA5A-4BCD-997C-5414BA1991F3}resource=/crio_Mod6/DIO23:16;0;ReadMethodType=u8;WriteMethodType=u8{015E1991-D03F-427D-ABD1-2CC9E4F9CA07}ArbitrationForOutputData=NeverArbitrate;resource=/crio_Mod8/CH6;0;ReadMethodType=bool;WriteMethodType=bool{02EBEC19-67EC-4C7B-8B56-DB2FB2E14A9B}[crioConfig.Begin]crio.Calibration=1,crio.Location=Slot 5,crio.Type=NI 9205,cRIOModule.AI0.TerminalMode=0,cRIOModule.AI0.VoltageRange=0,cRIOModule.AI1.TerminalMode=0,cRIOModule.AI1.VoltageRange=0,cRIOModule.AI10.TerminalMode=0,cRIOModule.AI10.VoltageRange=0,cRIOModule.AI11.TerminalMode=0,cRIOModule.AI11.VoltageRange=0,cRIOModule.AI12.TerminalMode=0,cRIOModule.AI12.VoltageRange=0,cRIOModule.AI13.TerminalMode=0,cRIOModule.AI13.VoltageRange=0,cRIOModule.AI14.TerminalMode=0,cRIOModule.AI14.VoltageRange=0,cRIOModule.AI15.TerminalMode=0,cRIOModule.AI15.VoltageRange=0,cRIOModule.AI16.TerminalMode=0,cRIOModule.AI16.VoltageRange=0,cRIOModule.AI17.TerminalMode=0,cRIOModule.AI17.VoltageRange=0,cRIOModule.AI18.TerminalMode=0,cRIOModule.AI18.VoltageRange=0,cRIOModule.AI19.TerminalMode=0,cRIOModule.AI19.VoltageRange=0,cRIOModule.AI2.TerminalMode=0,cRIOModule.AI2.VoltageRange=0,cRIOModule.AI20.TerminalMode=0,cRIOModule.AI20.VoltageRange=0,cRIOModule.AI21.TerminalMode=0,cRIOModule.AI21.VoltageRange=0,cRIOModule.AI22.TerminalMode=0,cRIOModule.AI22.VoltageRange=0,cRIOModule.AI23.TerminalMode=0,cRIOModule.AI23.VoltageRange=0,cRIOModule.AI24.TerminalMode=0,cRIOModule.AI24.VoltageRange=0,cRIOModule.AI25.TerminalMode=0,cRIOModule.AI25.VoltageRange=0,cRIOModule.AI26.TerminalMode=0,cRIOModule.AI26.VoltageRange=0,cRIOModule.AI27.TerminalMode=0,cRIOModule.AI27.VoltageRange=0,cRIOModule.AI28.TerminalMode=0,cRIOModule.AI28.VoltageRange=0,cRIOModule.AI29.TerminalMode=0,cRIOModule.AI29.VoltageRange=0,cRIOModule.AI3.TerminalMode=0,cRIOModule.AI3.VoltageRange=0,cRIOModule.AI30.TerminalMode=0,cRIOModule.AI30.VoltageRange=0,cRIOModule.AI31.TerminalMode=0,cRIOModule.AI31.VoltageRange=0,cRIOModule.AI4.TerminalMode=0,cRIOModule.AI4.VoltageRange=0,cRIOModule.AI5.TerminalMode=0,cRIOModule.AI5.VoltageRange=0,cRIOModule.AI6.TerminalMode=0,cRIOModule.AI6.VoltageRange=0,cRIOModule.AI7.TerminalMode=0,cRIOModule.AI7.VoltageRange=0,cRIOModule.AI8.TerminalMode=0,cRIOModule.AI8.VoltageRange=0,cRIOModule.AI9.TerminalMode=0,cRIOModule.AI9.VoltageRange=0,cRIOModule.EnableCalProperties=false,cRIOModule.EnableDECoM=false,cRIOModule.EnableInputFifo=false,cRIOModule.EnableOutputFifo=false,cRIOModule.MinConvTime=8.000000E+0,cRIOModule.RsiAttributes=[crioConfig.End]{037DD5B7-DA33-4AB8-9828-967F8206784F}resource=/crio_Mod7/DI21;0;ReadMethodType=bool{056EBCA6-7154-4DC0-8614-2AB735114151}resource=/crio_Mod4/AO0;0;WriteMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_20_5.ctl{0B543E04-8B32-4389-BD51-C214DBE4B204}[crioConfig.Begin]crio.Calibration=1,crio.Location=Slot 8,crio.Type=NI 9485,cRIOModule.DIO3_0InitialDir=0,cRIOModule.DIO7_4InitialDir=0,cRIOModule.EnableDECoM=false,cRIOModule.EnableInputFifo=false,cRIOModule.EnableOutputFifo=false,cRIOModule.NumSyncRegs=11111111,cRIOModule.RsiAttributes=[crioConfig.End]{0D118142-4602-419E-9E15-1AB89A072482}resource=/crio_Mod6/DIO10;0;ReadMethodType=bool;WriteMethodType=bool{0E7DE915-24B7-4879-91BC-0BDEFF9CA4A6}resource=/crio_Mod6/DIO24;0;ReadMethodType=bool;WriteMethodType=bool{122C3E32-0105-444C-AF23-9DB38DC0589F}resource=/crio_Mod7/DI27;0;ReadMethodType=bool{129C2002-96D2-4CB4-87A5-ECC5006898F6}resource=/crio_Mod7/DI29;0;ReadMethodType=bool{12DC90D0-E832-4211-B3DB-4B09DF335E9D}resource=/crio_Mod5/AI31;0;ReadMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_26_5.ctl{1435FD3A-40EF-4103-8FA2-654E189993D6}resource=/crio_Mod7/DI31;0;ReadMethodType=bool{17E5FE01-F59D-4C28-833F-E4D4BACEE172}resource=/crio_Mod6/DIO15:8;0;ReadMethodType=u8;WriteMethodType=u8{19013481-B79A-46A6-8E8A-DD3EAB6B0098}resource=/crio_Mod6/DIO9;0;ReadMethodType=bool;WriteMethodType=bool{1A00AF3F-CF1E-4B0E-844A-BDC5233EFB9D}resource=/crio_Mod7/DI13;0;ReadMethodType=bool{1A261236-C21F-491C-B87C-2133EE49D6C2}resource=/crio_Mod7/DI12;0;ReadMethodType=bool{1AFF7D2D-E4EE-42A7-A1D0-90E6F90B2A09}ArbitrationForOutputData=NeverArbitrate;resource=/crio_Mod8/CH5;0;ReadMethodType=bool;WriteMethodType=bool{1C491720-91D5-4EB2-8B48-4E7163D0D818}resource=/crio_Mod6/DIO3;0;ReadMethodType=bool;WriteMethodType=bool{258F5623-49E6-414B-BDC7-E7EBFC985958}resource=/crio_Mod6/DIO23;0;ReadMethodType=bool;WriteMethodType=bool{26F01443-7C2E-4F39-AB4F-C0E3318323B0}resource=/crio_Mod7/DI7:0;0;ReadMethodType=u8{286239E3-7004-429D-B316-A809CF9EEBEF}resource=/crio_Mod7/DI16;0;ReadMethodType=bool{28C241B6-E68B-4B09-9D02-9FC7D83E1A1F}resource=/crio_Mod6/DIO22;0;ReadMethodType=bool;WriteMethodType=bool{2A47B7BB-0A3A-4444-90C3-7B4B7EC5C4F4}resource=/crio_Mod4/AO5;0;WriteMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_20_5.ctl{2F4F0621-1A31-4381-AC3E-FEB3939397A2}resource=/crio_Mod7/DI5;0;ReadMethodType=bool{30EF311D-079A-4437-BEA0-AC28FF4BEEB2}resource=/crio_Mod6/DIO4;0;ReadMethodType=bool;WriteMethodType=bool{32DF05AF-91FB-423F-BD14-B126E8C9ACD5}resource=/crio_Mod7/DI2;0;ReadMethodType=bool{33342A00-FFAC-47FB-B808-335CD25C8292}resource=/Scan Clock;0;ReadMethodType=bool{34DAB6F2-AE1E-4B11-88EC-D15C6090B6F9}resource=/crio_Mod5/AI14;0;ReadMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_26_5.ctl{34E14A0C-0E32-4CBA-B6F4-F553CC8D3B3A}resource=/crio_Mod4/AO10;0;WriteMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_20_5.ctl{37027F60-DCB1-4EB1-8588-87402C7F6E21}resource=/crio_Mod4/AO12;0;WriteMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_20_5.ctl{38821F03-FD11-4B45-9CA9-7AF7D99E5A53}resource=/crio_Mod4/AO9;0;WriteMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_20_5.ctl{38D137CF-E477-4B6F-BDB7-893CF0FF4DBA}resource=/crio_Mod5/AI15;0;ReadMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_26_5.ctl{39C16C7A-B383-4944-AB14-AF21ABF17FFC}resource=/crio_Mod6/DIO1;0;ReadMethodType=bool;WriteMethodType=bool{3D37C13A-3DC6-4277-8958-F59622167CC3}resource=/crio_Mod7/DI19;0;ReadMethodType=bool{3D62A11A-4FA3-4595-B070-569F898E9CC4}resource=/crio_Mod7/DI24;0;ReadMethodType=bool{41A1D609-8C92-4C74-B0F7-F37E5E749BAA}resource=/crio_Mod4/AO8;0;WriteMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_20_5.ctl{4358B978-C04A-49EE-9C31-E1E1D51CFBA2}resource=/crio_Mod6/DIO17;0;ReadMethodType=bool;WriteMethodType=bool{45C2EE1F-68B2-446A-A01B-A4E136171B94}resource=/crio_Mod6/DIO31:0;0;ReadMethodType=u32;WriteMethodType=u32{47C2F0A8-E7B7-443F-923C-3DFDD5780026}resource=/crio_Mod7/DI11;0;ReadMethodType=bool{4903062E-3F34-41CD-A371-1DAC4CA3D08B}resource=/crio_Mod5/AI29;0;ReadMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_26_5.ctl{49E8623A-BFB6-40CD-8677-01B9E4892C36}resource=/crio_Mod7/DI23;0;ReadMethodType=bool{4AFF04AB-0E4A-497E-BB7C-EC1B6A76E4A1}resource=/crio_Mod5/DI0;0;ReadMethodType=bool{4BBF2DFC-565F-4EB1-8DA7-7515F4FBF2BE}resource=/crio_Mod6/DIO7;0;ReadMethodType=bool;WriteMethodType=bool{4C2619D4-EC08-4DD5-8F1E-57EF03C7841B}resource=/crio_Mod4/AO13;0;WriteMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_20_5.ctl{4D040455-58A3-4622-A7BB-73B0D546F53D}resource=/crio_Mod5/AI5;0;ReadMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_26_5.ctl{4EE2E657-529D-4627-AF7D-4FE92475AD01}resource=/crio_Mod4/AO4;0;WriteMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_20_5.ctl{4F5EBD77-3F9B-44E4-BE22-342147BA7692}resource=/crio_Mod5/AI8;0;ReadMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_26_5.ctl{4FA9C266-678B-4AC1-8076-FD5BB5F7BE62}resource=/crio_Mod6/DIO29;0;ReadMethodType=bool;WriteMethodType=bool{523DF77F-5611-48D5-BB1C-31A4BC8CBC7A}resource=/crio_Mod5/AI3;0;ReadMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_26_5.ctl{53334BF5-376F-4AEA-BF49-31D7CFFA56A7}ArbitrationForOutputData=NeverArbitrate;resource=/crio_Mod8/CH0;0;ReadMethodType=bool;WriteMethodType=bool{55AE7E84-1F20-4F9F-8169-E0858B13F612}resource=/crio_Mod5/AI28;0;ReadMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_26_5.ctl{564F579E-9FFD-4614-99FD-F21439003B5A}resource=/crio_Mod7/DI31:24;0;ReadMethodType=u8{579C0112-5F60-4160-9541-F158DB127FF4}resource=/crio_Mod6/DIO5;0;ReadMethodType=bool;WriteMethodType=bool{579D217F-4DC5-45DB-BEA1-9268A70B66D8}resource=/crio_Mod5/AI19;0;ReadMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_26_5.ctl{57D0AA56-9AE7-4A17-921D-8694B11A3841}resource=/crio_Mod6/DIO21;0;ReadMethodType=bool;WriteMethodType=bool{58A31F42-137D-4418-B32A-07A13F4E3F58}resource=/crio_Mod6/DIO19;0;ReadMethodType=bool;WriteMethodType=bool{592ABD39-D5C2-4E95-8B6F-662E43599280}resource=/crio_Mod5/AI7;0;ReadMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_26_5.ctl{59E70582-A556-427A-9FFC-7A24AD7D0ACD}resource=/crio_Mod7/DI10;0;ReadMethodType=bool{5A8F9E57-38C1-4838-8F6B-ED0B18521BDD}resource=/crio_Mod4/AO2;0;WriteMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_20_5.ctl{5BF02E35-30C0-4665-8F5D-5A2D7364453A}resource=/crio_Mod4/AO11;0;WriteMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_20_5.ctl{5F3890AE-0B20-4CBC-9296-B16B9057235E}resource=/FPGA LED;0;ReadMethodType=bool;WriteMethodType=bool{5F4B6A1D-CC5E-41CC-B537-2E1965F4B23E}resource=/crio_Mod6/DIO31;0;ReadMethodType=bool;WriteMethodType=bool{5FC66CA8-BB2A-464E-A0B1-B2B50C43FD7E}resource=/crio_Mod5/AI24;0;ReadMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_26_5.ctl{603712B5-1CA4-492B-893A-BA0C4BEF8FDC}resource=/crio_Mod5/AI25;0;ReadMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_26_5.ctl{6086A36B-77E4-4585-88D9-BCCAFBDD2A61}cRIO Subresource{64FF56E9-F485-47D3-B6CF-925C5251ECC0}resource=/crio_Mod5/AI23;0;ReadMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_26_5.ctl{655F200B-582C-4255-94EC-874F8B7F8400}ResourceName=40 MHz Onboard Clock;TopSignalConnect=Clk40;ClockSignalName=Clk40;MinFreq=40000000.000000;MaxFreq=40000000.000000;VariableFreq=0;NomFreq=40000000.000000;PeakPeriodJitter=250.000000;MinDutyCycle=50.000000;MaxDutyCycle=50.000000;Accuracy=100.000000;RunTime=0;SpreadSpectrum=0;GenericDataHash=D41D8CD98F00B204E9800998ECF8427E;{66E1476D-5926-4A34-8033-6D3BCE59AEB2}resource=/crio_Mod6/DIO11;0;ReadMethodType=bool;WriteMethodType=bool{67B933B5-DB36-4A72-AD36-65A7C1D7E3C3}resource=/crio_Mod5/AI26;0;ReadMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_26_5.ctl{67C32A3B-8FF3-4127-B0DE-195A56A6A392}resource=/crio_Mod6/DIO13;0;ReadMethodType=bool;WriteMethodType=bool{68151DB3-A690-44A9-9737-865DD95EF1AA}resource=/crio_Mod5/AI22;0;ReadMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_26_5.ctl{69A81ED8-BAA5-4D6E-9874-5CFDB59412E3}resource=/crio_Mod7/DI8;0;ReadMethodType=bool{6A08D7D5-B5AD-4A70-BAA6-96FD3C67C14B}resource=/crio_Mod7/DI26;0;ReadMethodType=bool{6D20F854-F9EC-469D-B9C0-729AFEC71D6C}resource=/crio_Mod6/DIO16;0;ReadMethodType=bool;WriteMethodType=bool{6F6B6516-E5B6-4AE6-A0B7-946B32B2AB61}resource=/crio_Mod4/AO14;0;WriteMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_20_5.ctl{705FA5F3-FBC3-4CE7-ACC9-A54BA8AD7C27}resource=/crio_Mod7/DI20;0;ReadMethodType=bool{73111380-579D-4563-8D2E-BB7F8D1C3E2C}resource=/crio_Mod6/DIO31:24;0;ReadMethodType=u8;WriteMethodType=u8{76448D27-A5F2-460A-B4ED-9DFECDCED23A}resource=/crio_Mod5/AI13;0;ReadMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_26_5.ctl{781E65DD-AD91-44F4-99A3-302836A76056}resource=/crio_Mod5/AI30;0;ReadMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_26_5.ctl{794EFF79-6439-4884-875F-07A995580277}resource=/crio_Mod7/DI30;0;ReadMethodType=bool{7C4BC52F-96C8-43A1-B025-7A88FF3EC947}resource=/crio_Mod5/AI10;0;ReadMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_26_5.ctl{7EC8FA29-22FC-4426-A5F3-769B10935792}resource=/crio_Mod5/AI17;0;ReadMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_26_5.ctl{7F1983EA-3A76-4AD1-AAE7-ACAAFEDEB4C4}resource=/crio_Mod7/DI1;0;ReadMethodType=bool{81038268-EAD0-401A-AF0B-FAB237A031AB}ArbitrationForOutputData=NeverArbitrate;resource=/crio_Mod8/CH2;0;ReadMethodType=bool;WriteMethodType=bool{81D49D0D-C633-41B1-BA50-25B5CC272278}resource=/crio_Mod5/AI9;0;ReadMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_26_5.ctl{84BF8DBE-659D-407A-B503-A10DB876175D}resource=/crio_Mod7/DI3;0;ReadMethodType=bool{8552FEBF-7825-46E6-8D3B-C23EB841FF8D}resource=/crio_Mod7/DI7;0;ReadMethodType=bool{86E60440-3D55-48EC-ADF3-5BEACAD6EE7C}resource=/crio_Mod6/DIO18;0;ReadMethodType=bool;WriteMethodType=bool{8AEC8489-71BF-4F04-99AE-982D012A8EDD}[crioConfig.Begin]crio.Calibration=1,crio.Location=Slot 4,crio.Type=NI 9264,cRIOModule.EnableDECoM=false,cRIOModule.EnableInputFifo=false,cRIOModule.EnableOutputFifo=false,cRIOModule.HotSwapMode=0,cRIOModule.RsiAttributes=[crioConfig.End]{8CDE6672-5E18-4864-8F2E-ECAA5904CE92}resource=/crio_Mod7/DI9;0;ReadMethodType=bool{8D8E8A10-8438-4B04-B949-4C5235304B04}resource=/crio_Mod5/AI2;0;ReadMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_26_5.ctl{8E443FA4-8693-49B4-BCCE-F9AE98A070CD}resource=/crio_Mod6/DIO15;0;ReadMethodType=bool;WriteMethodType=bool{8F201A13-09A1-43D5-95E2-14144CCB5FB9}resource=/crio_Mod7/DI15;0;ReadMethodType=bool{91C98655-A391-42CE-89A9-73D4DE6D84CB}resource=/crio_Mod7/DI25;0;ReadMethodType=bool{97953E3B-A037-4F4E-9CEA-20E3648E36B4}resource=/crio_Mod5/AI1;0;ReadMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_26_5.ctl{97FBE057-A13C-4895-89C6-720DCF637900}resource=/crio_Mod7/DI4;0;ReadMethodType=bool{9A2FC7EF-E16E-4860-A59A-C25E8F9ABA67}resource=/crio_Mod4/AO6;0;WriteMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_20_5.ctl{9F10E2F3-C632-41AE-9061-54C9B1C25118}resource=/crio_Mod6/DIO0;0;ReadMethodType=bool;WriteMethodType=bool{9FFEFA0D-3597-4A50-84C9-0647A74A0A9A}resource=/crio_Mod5/AI4;0;ReadMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_26_5.ctl{A0216560-3E09-4B3F-85F9-1DE4EB4984D4}resource=/crio_Mod6/DIO25;0;ReadMethodType=bool;WriteMethodType=bool{A36E02DA-EB68-4EFA-9E27-76188ED67F5C}resource=/crio_Mod7/DI17;0;ReadMethodType=bool{A46B34E9-C383-4089-91AD-C90E725B4800}resource=/crio_Mod5/DO0;0;WriteMethodType=bool{A4BD14FC-BA55-4AE0-ADBB-EDA2A9B3B785}resource=/crio_Mod6/DIO28;0;ReadMethodType=bool;WriteMethodType=bool{A56B9C58-F9A2-49AF-9782-BB34BF0B5DC6}resource=/crio_Mod7/DI0;0;ReadMethodType=bool{A5EE6D18-A1F8-4C2A-93FC-32A9EA1377F8}resource=/System Reset;0;ReadMethodType=bool;WriteMethodType=bool{AAF551AD-6D94-4BB7-BC6C-799147FCCC7F}[crioConfig.Begin]crio.Calibration=1,crio.Location=Slot 3,crio.Type=NI 9870,cRIOModule.EnableDECoM=false,cRIOModule.EnableInputFifo=false,cRIOModule.EnableOutputFifo=false,cRIOModule.kBaudRateDivider1=384,cRIOModule.kBaudRateDivider2=384,cRIOModule.kBaudRateDivider3=384,cRIOModule.kBaudRateDivider4=384,cRIOModule.kBaudRatePrescaler1=1,cRIOModule.kBaudRatePrescaler2=1,cRIOModule.kBaudRatePrescaler3=1,cRIOModule.kBaudRatePrescaler4=1,cRIOModule.kDataBits1=4,cRIOModule.kDataBits2=4,cRIOModule.kDataBits3=4,cRIOModule.kDataBits4=4,cRIOModule.kDesiredBaudRate1=9.600000E+3,cRIOModule.kDesiredBaudRate2=9.600000E+3,cRIOModule.kDesiredBaudRate3=9.600000E+3,cRIOModule.kDesiredBaudRate4=9.600000E+3,cRIOModule.kFlowControl1=1,cRIOModule.kFlowControl2=1,cRIOModule.kFlowControl3=1,cRIOModule.kFlowControl4=1,cRIOModule.kParity1=1,cRIOModule.kParity2=1,cRIOModule.kParity3=1,cRIOModule.kParity4=1,cRIOModule.kStopBits1=1,cRIOModule.kStopBits2=1,cRIOModule.kStopBits3=1,cRIOModule.kStopBits4=1,cRIOModule.RsiAttributes=[crioConfig.End]{AAF96797-F24B-46D8-9054-FC0465DACB31}resource=/crio_Mod7/DI22;0;ReadMethodType=bool{AC08027B-75B2-4F90-B201-DE8CE8687770}resource=/crio_Mod6/DIO30;0;ReadMethodType=bool;WriteMethodType=bool{AD1C3D8A-582F-4F35-A5BE-84EB7B462546}resource=/Sleep;0;ReadMethodType=bool;WriteMethodType=bool{AE1E3A3A-0256-406C-87EC-33E4538AB67D}resource=/crio_Mod7/DI18;0;ReadMethodType=bool{B0F4E5CF-9135-4F03-A7D6-2B318F67350E}ArbitrationForOutputData=NeverArbitrate;resource=/crio_Mod8/CH3;0;ReadMethodType=bool;WriteMethodType=bool{B30045B2-85E0-4811-9A49-14C5965EEEE2}cRIO Subresource{B826FAE5-0A40-4FAC-BFB6-0EA8C1F66D23}resource=/crio_Mod5/AI21;0;ReadMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_26_5.ctl{B8276699-A108-496B-B536-2DF8A163E2D9}resource=/crio_Mod5/AI6;0;ReadMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_26_5.ctl{BB67885D-086C-4888-B344-209CF20BCC26}resource=/crio_Mod6/DIO8;0;ReadMethodType=bool;WriteMethodType=bool{BCF90226-0C2F-40BF-94F9-DF8FECCCEFC6}resource=/crio_Mod4/AO1;0;WriteMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_20_5.ctl{BD4907C0-D1B1-4E3C-9B4E-CCDACE410DDA}resource=/crio_Mod7/DI28;0;ReadMethodType=bool{BF728343-1121-4009-8909-BCE41FEA296F}resource=/crio_Mod6/DIO6;0;ReadMethodType=bool;WriteMethodType=bool{C199378E-5CAA-401D-BC9D-E5AD5602BA5B}resource=/crio_Mod5/AI0;0;ReadMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_26_5.ctl{C2EFE3AD-F4F5-4A1D-9C8A-AD9F21BE9D43}resource=/crio_Mod7/DI15:8;0;ReadMethodType=u8{C3DFDF54-133E-4E73-8F94-37B2AA7D4DF0}resource=/crio_Mod5/AI16;0;ReadMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_26_5.ctl{C48AB196-7062-4201-B30C-4CFF1CC987B7}resource=/crio_Mod5/AI12;0;ReadMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_26_5.ctl{C63A8F69-AC59-4B62-9029-342CACC05C99}resource=/crio_Mod6/DIO14;0;ReadMethodType=bool;WriteMethodType=bool{CC1410C5-862F-462E-81D7-BFBE624C87B3}resource=/crio_Mod6/DIO27;0;ReadMethodType=bool;WriteMethodType=bool{CE242FAA-9214-4182-BA9B-3980A59E6ED5}ArbitrationForOutputData=NeverArbitrate;resource=/crio_Mod8/CH7;0;ReadMethodType=bool;WriteMethodType=bool{CF903595-3047-4EEC-9F44-5D7090AA7596}resource=/crio_Mod6/DIO12;0;ReadMethodType=bool;WriteMethodType=bool{D6AAB481-6C23-4E06-8CBF-F9BF83D7FA87}resource=/crio_Mod7/DI6;0;ReadMethodType=bool{D742D4C7-DC13-4816-9D8D-F264A55E4E5C}resource=/crio_Mod5/Trig;0;ReadMethodType=bool{D750D0C5-ED1B-4D51-963A-EC2BEC72FD4A}[crioConfig.Begin]crio.Location=Slot 2,cRIOModule.EnableHsInput=true,cRIOModule.EnableHsOutput=true,cRIOModule.EnableSpecialtyDigital=false[crioConfig.End]{DA702CB9-3D5A-46F3-9E01-2DB5BC1D06C0}cRIO Subresource{DD28C3E3-CE8D-4899-AB78-5A13C05D89C1}resource=/crio_Mod6/DIO26;0;ReadMethodType=bool;WriteMethodType=bool{DD78E3A9-FE21-4F69-BB74-B1C2F5CB00AF}resource=/crio_Mod6/DIO20;0;ReadMethodType=bool;WriteMethodType=bool{DE5E61A7-3EB3-435C-8551-113588CF0AC4}resource=/crio_Mod7/DI23:16;0;ReadMethodType=u8{DE9CEC57-11B9-4490-BAA2-F148EAF47BBD}resource=/crio_Mod5/AI27;0;ReadMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_26_5.ctl{E4CB8185-9FFB-469B-8AD5-8089A9392E73}resource=/crio_Mod6/DIO2;0;ReadMethodType=bool;WriteMethodType=bool{E5232104-C6D6-41B7-8B9F-F9DF1A3CDEE2}resource=/crio_Mod6/DIO7:0;0;ReadMethodType=u8;WriteMethodType=u8{E6176ECE-0AC4-47EA-97FF-D8404F2A0974}resource=/crio_Mod4/AO15;0;WriteMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_20_5.ctl{E6342017-DABE-418C-9E96-9BC769FDC4EC}ArbitrationForOutputData=NeverArbitrate;resource=/crio_Mod8/CH1;0;ReadMethodType=bool;WriteMethodType=bool{E776F9DB-80EC-491C-A4AB-96E60405E15E}ArbitrationForOutputData=NeverArbitrate;resource=/crio_Mod8/CH4;0;ReadMethodType=bool;WriteMethodType=bool{EB49BB78-26A2-46CC-BA4E-8464B1EDCCB1}resource=/crio_Mod4/AO3;0;WriteMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_20_5.ctl{EBF8CA8A-DFFE-4678-926A-07435D54D391}resource=/crio_Mod7/DI14;0;ReadMethodType=bool{EDD3D184-1F65-40EC-A4BC-10501CC928D7}[crioConfig.Begin]crio.Calibration=1,crio.Location=Slot 6,crio.Type=NI 9403,cRIOModule.DisableArbitration=false,cRIOModule.EnableDECoM=false,cRIOModule.EnableInputFifo=false,cRIOModule.EnableOutputFifo=false,cRIOModule.Initial Line Direction=00000000000000000000000000000000,cRIOModule.RsiAttributes=[crioConfig.End]{F03B2C15-53AC-4667-9AB1-91BF5CDF4497}ArbitrationForOutputData=NeverArbitrate;resource=/crio_Mod8/CH7:0;0;ReadMethodType=u8;WriteMethodType=u8{F16A0CA9-200C-4048-B6ED-CACDDE2EAA23}resource=/crio_Mod5/AI18;0;ReadMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_26_5.ctl{F16B7A2C-1D60-4EE2-BA63-4B3612EF7B68}resource=/crio_Mod5/AI11;0;ReadMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_26_5.ctl{F3782B73-4396-4816-9A74-E43902085E72}resource=/crio_Mod4/AO7;0;WriteMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_20_5.ctl{F6E02E0A-0174-4A31-BE95-6EF0F5CE5DC5}resource=/crio_Mod5/AI20;0;ReadMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_26_5.ctl{F74C1211-DF48-40D2-8B0C-0A5434BC6C28}resource=/crio_Mod7/DI31:0;0;ReadMethodType=u32{F93B9DDD-B8FC-47BB-9ECE-A33DA6FF9F19}[crioConfig.Begin]crio.Calibration=1,crio.Location=Slot 7,crio.Type=NI 9426,cRIOModule.EnableDECoM=false,cRIOModule.EnableInputFifo=false,cRIOModule.EnableOutputFifo=false,cRIOModule.RsiAttributes=[crioConfig.End]{F982661A-CF18-4CDC-91EB-44BFBC4DC38C}resource=/Chassis Temperature;0;ReadMethodType=i16{FE3F900B-394C-4641-9E8D-44F0E9972F6F}cRIO SubresourcecRIO-9114/Clk40/falsefalseFPGA_EXECUTION_MODEFPGA_TARGETFPGA_TARGET_CLASSCRIO_9114FPGA_TARGET_FAMILYVIRTEX5TARGET_TYPEFPGA</Property>
					<Property Name="configString.name" Type="Str">40 MHz Onboard ClockResourceName=40 MHz Onboard Clock;TopSignalConnect=Clk40;ClockSignalName=Clk40;MinFreq=40000000.000000;MaxFreq=40000000.000000;VariableFreq=0;NomFreq=40000000.000000;PeakPeriodJitter=250.000000;MinDutyCycle=50.000000;MaxDutyCycle=50.000000;Accuracy=100.000000;RunTime=0;SpreadSpectrum=0;GenericDataHash=D41D8CD98F00B204E9800998ECF8427E;Chassis Temperatureresource=/Chassis Temperature;0;ReadMethodType=i16cRIO-9114/Clk40/falsefalseFPGA_EXECUTION_MODEFPGA_TARGETFPGA_TARGET_CLASSCRIO_9114FPGA_TARGET_FAMILYVIRTEX5TARGET_TYPEFPGAFPGA LEDresource=/FPGA LED;0;ReadMethodType=bool;WriteMethodType=boolMod2[crioConfig.Begin]crio.Location=Slot 2,cRIOModule.EnableHsInput=true,cRIOModule.EnableHsOutput=true,cRIOModule.EnableSpecialtyDigital=false[crioConfig.End]Mod3[crioConfig.Begin]crio.Calibration=1,crio.Location=Slot 3,crio.Type=NI 9870,cRIOModule.EnableDECoM=false,cRIOModule.EnableInputFifo=false,cRIOModule.EnableOutputFifo=false,cRIOModule.kBaudRateDivider1=384,cRIOModule.kBaudRateDivider2=384,cRIOModule.kBaudRateDivider3=384,cRIOModule.kBaudRateDivider4=384,cRIOModule.kBaudRatePrescaler1=1,cRIOModule.kBaudRatePrescaler2=1,cRIOModule.kBaudRatePrescaler3=1,cRIOModule.kBaudRatePrescaler4=1,cRIOModule.kDataBits1=4,cRIOModule.kDataBits2=4,cRIOModule.kDataBits3=4,cRIOModule.kDataBits4=4,cRIOModule.kDesiredBaudRate1=9.600000E+3,cRIOModule.kDesiredBaudRate2=9.600000E+3,cRIOModule.kDesiredBaudRate3=9.600000E+3,cRIOModule.kDesiredBaudRate4=9.600000E+3,cRIOModule.kFlowControl1=1,cRIOModule.kFlowControl2=1,cRIOModule.kFlowControl3=1,cRIOModule.kFlowControl4=1,cRIOModule.kParity1=1,cRIOModule.kParity2=1,cRIOModule.kParity3=1,cRIOModule.kParity4=1,cRIOModule.kStopBits1=1,cRIOModule.kStopBits2=1,cRIOModule.kStopBits3=1,cRIOModule.kStopBits4=1,cRIOModule.RsiAttributes=[crioConfig.End]Mod4/AO0resource=/crio_Mod4/AO0;0;WriteMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_20_5.ctlMod4/AO10resource=/crio_Mod4/AO10;0;WriteMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_20_5.ctlMod4/AO11resource=/crio_Mod4/AO11;0;WriteMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_20_5.ctlMod4/AO12resource=/crio_Mod4/AO12;0;WriteMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_20_5.ctlMod4/AO13resource=/crio_Mod4/AO13;0;WriteMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_20_5.ctlMod4/AO14resource=/crio_Mod4/AO14;0;WriteMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_20_5.ctlMod4/AO15resource=/crio_Mod4/AO15;0;WriteMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_20_5.ctlMod4/AO1resource=/crio_Mod4/AO1;0;WriteMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_20_5.ctlMod4/AO2resource=/crio_Mod4/AO2;0;WriteMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_20_5.ctlMod4/AO3resource=/crio_Mod4/AO3;0;WriteMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_20_5.ctlMod4/AO4resource=/crio_Mod4/AO4;0;WriteMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_20_5.ctlMod4/AO5resource=/crio_Mod4/AO5;0;WriteMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_20_5.ctlMod4/AO6resource=/crio_Mod4/AO6;0;WriteMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_20_5.ctlMod4/AO7resource=/crio_Mod4/AO7;0;WriteMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_20_5.ctlMod4/AO8resource=/crio_Mod4/AO8;0;WriteMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_20_5.ctlMod4/AO9resource=/crio_Mod4/AO9;0;WriteMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_20_5.ctlMod4[crioConfig.Begin]crio.Calibration=1,crio.Location=Slot 4,crio.Type=NI 9264,cRIOModule.EnableDECoM=false,cRIOModule.EnableInputFifo=false,cRIOModule.EnableOutputFifo=false,cRIOModule.HotSwapMode=0,cRIOModule.RsiAttributes=[crioConfig.End]Mod5/AI0resource=/crio_Mod5/AI0;0;ReadMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_26_5.ctlMod5/AI10resource=/crio_Mod5/AI10;0;ReadMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_26_5.ctlMod5/AI11resource=/crio_Mod5/AI11;0;ReadMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_26_5.ctlMod5/AI12resource=/crio_Mod5/AI12;0;ReadMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_26_5.ctlMod5/AI13resource=/crio_Mod5/AI13;0;ReadMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_26_5.ctlMod5/AI14resource=/crio_Mod5/AI14;0;ReadMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_26_5.ctlMod5/AI15resource=/crio_Mod5/AI15;0;ReadMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_26_5.ctlMod5/AI16resource=/crio_Mod5/AI16;0;ReadMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_26_5.ctlMod5/AI17resource=/crio_Mod5/AI17;0;ReadMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_26_5.ctlMod5/AI18resource=/crio_Mod5/AI18;0;ReadMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_26_5.ctlMod5/AI19resource=/crio_Mod5/AI19;0;ReadMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_26_5.ctlMod5/AI1resource=/crio_Mod5/AI1;0;ReadMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_26_5.ctlMod5/AI20resource=/crio_Mod5/AI20;0;ReadMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_26_5.ctlMod5/AI21resource=/crio_Mod5/AI21;0;ReadMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_26_5.ctlMod5/AI22resource=/crio_Mod5/AI22;0;ReadMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_26_5.ctlMod5/AI23resource=/crio_Mod5/AI23;0;ReadMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_26_5.ctlMod5/AI24resource=/crio_Mod5/AI24;0;ReadMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_26_5.ctlMod5/AI25resource=/crio_Mod5/AI25;0;ReadMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_26_5.ctlMod5/AI26resource=/crio_Mod5/AI26;0;ReadMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_26_5.ctlMod5/AI27resource=/crio_Mod5/AI27;0;ReadMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_26_5.ctlMod5/AI28resource=/crio_Mod5/AI28;0;ReadMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_26_5.ctlMod5/AI29resource=/crio_Mod5/AI29;0;ReadMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_26_5.ctlMod5/AI2resource=/crio_Mod5/AI2;0;ReadMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_26_5.ctlMod5/AI30resource=/crio_Mod5/AI30;0;ReadMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_26_5.ctlMod5/AI31resource=/crio_Mod5/AI31;0;ReadMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_26_5.ctlMod5/AI3resource=/crio_Mod5/AI3;0;ReadMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_26_5.ctlMod5/AI4resource=/crio_Mod5/AI4;0;ReadMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_26_5.ctlMod5/AI5resource=/crio_Mod5/AI5;0;ReadMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_26_5.ctlMod5/AI6resource=/crio_Mod5/AI6;0;ReadMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_26_5.ctlMod5/AI7resource=/crio_Mod5/AI7;0;ReadMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_26_5.ctlMod5/AI8resource=/crio_Mod5/AI8;0;ReadMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_26_5.ctlMod5/AI9resource=/crio_Mod5/AI9;0;ReadMethodType=vi.lib\LabVIEW Targets\FPGA\cRIO\shared\nicrio_FXP_Controls\nicrio_FXP_S_26_5.ctlMod5/DI0resource=/crio_Mod5/DI0;0;ReadMethodType=boolMod5/DO0resource=/crio_Mod5/DO0;0;WriteMethodType=boolMod5/Trigresource=/crio_Mod5/Trig;0;ReadMethodType=boolMod5[crioConfig.Begin]crio.Calibration=1,crio.Location=Slot 5,crio.Type=NI 9205,cRIOModule.AI0.TerminalMode=0,cRIOModule.AI0.VoltageRange=0,cRIOModule.AI1.TerminalMode=0,cRIOModule.AI1.VoltageRange=0,cRIOModule.AI10.TerminalMode=0,cRIOModule.AI10.VoltageRange=0,cRIOModule.AI11.TerminalMode=0,cRIOModule.AI11.VoltageRange=0,cRIOModule.AI12.TerminalMode=0,cRIOModule.AI12.VoltageRange=0,cRIOModule.AI13.TerminalMode=0,cRIOModule.AI13.VoltageRange=0,cRIOModule.AI14.TerminalMode=0,cRIOModule.AI14.VoltageRange=0,cRIOModule.AI15.TerminalMode=0,cRIOModule.AI15.VoltageRange=0,cRIOModule.AI16.TerminalMode=0,cRIOModule.AI16.VoltageRange=0,cRIOModule.AI17.TerminalMode=0,cRIOModule.AI17.VoltageRange=0,cRIOModule.AI18.TerminalMode=0,cRIOModule.AI18.VoltageRange=0,cRIOModule.AI19.TerminalMode=0,cRIOModule.AI19.VoltageRange=0,cRIOModule.AI2.TerminalMode=0,cRIOModule.AI2.VoltageRange=0,cRIOModule.AI20.TerminalMode=0,cRIOModule.AI20.VoltageRange=0,cRIOModule.AI21.TerminalMode=0,cRIOModule.AI21.VoltageRange=0,cRIOModule.AI22.TerminalMode=0,cRIOModule.AI22.VoltageRange=0,cRIOModule.AI23.TerminalMode=0,cRIOModule.AI23.VoltageRange=0,cRIOModule.AI24.TerminalMode=0,cRIOModule.AI24.VoltageRange=0,cRIOModule.AI25.TerminalMode=0,cRIOModule.AI25.VoltageRange=0,cRIOModule.AI26.TerminalMode=0,cRIOModule.AI26.VoltageRange=0,cRIOModule.AI27.TerminalMode=0,cRIOModule.AI27.VoltageRange=0,cRIOModule.AI28.TerminalMode=0,cRIOModule.AI28.VoltageRange=0,cRIOModule.AI29.TerminalMode=0,cRIOModule.AI29.VoltageRange=0,cRIOModule.AI3.TerminalMode=0,cRIOModule.AI3.VoltageRange=0,cRIOModule.AI30.TerminalMode=0,cRIOModule.AI30.VoltageRange=0,cRIOModule.AI31.TerminalMode=0,cRIOModule.AI31.VoltageRange=0,cRIOModule.AI4.TerminalMode=0,cRIOModule.AI4.VoltageRange=0,cRIOModule.AI5.TerminalMode=0,cRIOModule.AI5.VoltageRange=0,cRIOModule.AI6.TerminalMode=0,cRIOModule.AI6.VoltageRange=0,cRIOModule.AI7.TerminalMode=0,cRIOModule.AI7.VoltageRange=0,cRIOModule.AI8.TerminalMode=0,cRIOModule.AI8.VoltageRange=0,cRIOModule.AI9.TerminalMode=0,cRIOModule.AI9.VoltageRange=0,cRIOModule.EnableCalProperties=false,cRIOModule.EnableDECoM=false,cRIOModule.EnableInputFifo=false,cRIOModule.EnableOutputFifo=false,cRIOModule.MinConvTime=8.000000E+0,cRIOModule.RsiAttributes=[crioConfig.End]Mod6/DIO0resource=/crio_Mod6/DIO0;0;ReadMethodType=bool;WriteMethodType=boolMod6/DIO10resource=/crio_Mod6/DIO10;0;ReadMethodType=bool;WriteMethodType=boolMod6/DIO11resource=/crio_Mod6/DIO11;0;ReadMethodType=bool;WriteMethodType=boolMod6/DIO12resource=/crio_Mod6/DIO12;0;ReadMethodType=bool;WriteMethodType=boolMod6/DIO13resource=/crio_Mod6/DIO13;0;ReadMethodType=bool;WriteMethodType=boolMod6/DIO14resource=/crio_Mod6/DIO14;0;ReadMethodType=bool;WriteMethodType=boolMod6/DIO15:8resource=/crio_Mod6/DIO15:8;0;ReadMethodType=u8;WriteMethodType=u8Mod6/DIO15resource=/crio_Mod6/DIO15;0;ReadMethodType=bool;WriteMethodType=boolMod6/DIO16resource=/crio_Mod6/DIO16;0;ReadMethodType=bool;WriteMethodType=boolMod6/DIO17resource=/crio_Mod6/DIO17;0;ReadMethodType=bool;WriteMethodType=boolMod6/DIO18resource=/crio_Mod6/DIO18;0;ReadMethodType=bool;WriteMethodType=boolMod6/DIO19resource=/crio_Mod6/DIO19;0;ReadMethodType=bool;WriteMethodType=boolMod6/DIO1resource=/crio_Mod6/DIO1;0;ReadMethodType=bool;WriteMethodType=boolMod6/DIO20resource=/crio_Mod6/DIO20;0;ReadMethodType=bool;WriteMethodType=boolMod6/DIO21resource=/crio_Mod6/DIO21;0;ReadMethodType=bool;WriteMethodType=boolMod6/DIO22resource=/crio_Mod6/DIO22;0;ReadMethodType=bool;WriteMethodType=boolMod6/DIO23:16resource=/crio_Mod6/DIO23:16;0;ReadMethodType=u8;WriteMethodType=u8Mod6/DIO23resource=/crio_Mod6/DIO23;0;ReadMethodType=bool;WriteMethodType=boolMod6/DIO24resource=/crio_Mod6/DIO24;0;ReadMethodType=bool;WriteMethodType=boolMod6/DIO25resource=/crio_Mod6/DIO25;0;ReadMethodType=bool;WriteMethodType=boolMod6/DIO26resource=/crio_Mod6/DIO26;0;ReadMethodType=bool;WriteMethodType=boolMod6/DIO27resource=/crio_Mod6/DIO27;0;ReadMethodType=bool;WriteMethodType=boolMod6/DIO28resource=/crio_Mod6/DIO28;0;ReadMethodType=bool;WriteMethodType=boolMod6/DIO29resource=/crio_Mod6/DIO29;0;ReadMethodType=bool;WriteMethodType=boolMod6/DIO2resource=/crio_Mod6/DIO2;0;ReadMethodType=bool;WriteMethodType=boolMod6/DIO30resource=/crio_Mod6/DIO30;0;ReadMethodType=bool;WriteMethodType=boolMod6/DIO31:0resource=/crio_Mod6/DIO31:0;0;ReadMethodType=u32;WriteMethodType=u32Mod6/DIO31:24resource=/crio_Mod6/DIO31:24;0;ReadMethodType=u8;WriteMethodType=u8Mod6/DIO31resource=/crio_Mod6/DIO31;0;ReadMethodType=bool;WriteMethodType=boolMod6/DIO3resource=/crio_Mod6/DIO3;0;ReadMethodType=bool;WriteMethodType=boolMod6/DIO4resource=/crio_Mod6/DIO4;0;ReadMethodType=bool;WriteMethodType=boolMod6/DIO5resource=/crio_Mod6/DIO5;0;ReadMethodType=bool;WriteMethodType=boolMod6/DIO6resource=/crio_Mod6/DIO6;0;ReadMethodType=bool;WriteMethodType=boolMod6/DIO7:0resource=/crio_Mod6/DIO7:0;0;ReadMethodType=u8;WriteMethodType=u8Mod6/DIO7resource=/crio_Mod6/DIO7;0;ReadMethodType=bool;WriteMethodType=boolMod6/DIO8resource=/crio_Mod6/DIO8;0;ReadMethodType=bool;WriteMethodType=boolMod6/DIO9resource=/crio_Mod6/DIO9;0;ReadMethodType=bool;WriteMethodType=boolMod6[crioConfig.Begin]crio.Calibration=1,crio.Location=Slot 6,crio.Type=NI 9403,cRIOModule.DisableArbitration=false,cRIOModule.EnableDECoM=false,cRIOModule.EnableInputFifo=false,cRIOModule.EnableOutputFifo=false,cRIOModule.Initial Line Direction=00000000000000000000000000000000,cRIOModule.RsiAttributes=[crioConfig.End]Mod7/DI0resource=/crio_Mod7/DI0;0;ReadMethodType=boolMod7/DI10resource=/crio_Mod7/DI10;0;ReadMethodType=boolMod7/DI11resource=/crio_Mod7/DI11;0;ReadMethodType=boolMod7/DI12resource=/crio_Mod7/DI12;0;ReadMethodType=boolMod7/DI13resource=/crio_Mod7/DI13;0;ReadMethodType=boolMod7/DI14resource=/crio_Mod7/DI14;0;ReadMethodType=boolMod7/DI15:8resource=/crio_Mod7/DI15:8;0;ReadMethodType=u8Mod7/DI15resource=/crio_Mod7/DI15;0;ReadMethodType=boolMod7/DI16resource=/crio_Mod7/DI16;0;ReadMethodType=boolMod7/DI17resource=/crio_Mod7/DI17;0;ReadMethodType=boolMod7/DI18resource=/crio_Mod7/DI18;0;ReadMethodType=boolMod7/DI19resource=/crio_Mod7/DI19;0;ReadMethodType=boolMod7/DI1resource=/crio_Mod7/DI1;0;ReadMethodType=boolMod7/DI20resource=/crio_Mod7/DI20;0;ReadMethodType=boolMod7/DI21resource=/crio_Mod7/DI21;0;ReadMethodType=boolMod7/DI22resource=/crio_Mod7/DI22;0;ReadMethodType=boolMod7/DI23:16resource=/crio_Mod7/DI23:16;0;ReadMethodType=u8Mod7/DI23resource=/crio_Mod7/DI23;0;ReadMethodType=boolMod7/DI24resource=/crio_Mod7/DI24;0;ReadMethodType=boolMod7/DI25resource=/crio_Mod7/DI25;0;ReadMethodType=boolMod7/DI26resource=/crio_Mod7/DI26;0;ReadMethodType=boolMod7/DI27resource=/crio_Mod7/DI27;0;ReadMethodType=boolMod7/DI28resource=/crio_Mod7/DI28;0;ReadMethodType=boolMod7/DI29resource=/crio_Mod7/DI29;0;ReadMethodType=boolMod7/DI2resource=/crio_Mod7/DI2;0;ReadMethodType=boolMod7/DI30resource=/crio_Mod7/DI30;0;ReadMethodType=boolMod7/DI31:0resource=/crio_Mod7/DI31:0;0;ReadMethodType=u32Mod7/DI31:24resource=/crio_Mod7/DI31:24;0;ReadMethodType=u8Mod7/DI31resource=/crio_Mod7/DI31;0;ReadMethodType=boolMod7/DI3resource=/crio_Mod7/DI3;0;ReadMethodType=boolMod7/DI4resource=/crio_Mod7/DI4;0;ReadMethodType=boolMod7/DI5resource=/crio_Mod7/DI5;0;ReadMethodType=boolMod7/DI6resource=/crio_Mod7/DI6;0;ReadMethodType=boolMod7/DI7:0resource=/crio_Mod7/DI7:0;0;ReadMethodType=u8Mod7/DI7resource=/crio_Mod7/DI7;0;ReadMethodType=boolMod7/DI8resource=/crio_Mod7/DI8;0;ReadMethodType=boolMod7/DI9resource=/crio_Mod7/DI9;0;ReadMethodType=boolMod7[crioConfig.Begin]crio.Calibration=1,crio.Location=Slot 7,crio.Type=NI 9426,cRIOModule.EnableDECoM=false,cRIOModule.EnableInputFifo=false,cRIOModule.EnableOutputFifo=false,cRIOModule.RsiAttributes=[crioConfig.End]Mod8/CH0ArbitrationForOutputData=NeverArbitrate;resource=/crio_Mod8/CH0;0;ReadMethodType=bool;WriteMethodType=boolMod8/CH1ArbitrationForOutputData=NeverArbitrate;resource=/crio_Mod8/CH1;0;ReadMethodType=bool;WriteMethodType=boolMod8/CH2ArbitrationForOutputData=NeverArbitrate;resource=/crio_Mod8/CH2;0;ReadMethodType=bool;WriteMethodType=boolMod8/CH3ArbitrationForOutputData=NeverArbitrate;resource=/crio_Mod8/CH3;0;ReadMethodType=bool;WriteMethodType=boolMod8/CH4ArbitrationForOutputData=NeverArbitrate;resource=/crio_Mod8/CH4;0;ReadMethodType=bool;WriteMethodType=boolMod8/CH5ArbitrationForOutputData=NeverArbitrate;resource=/crio_Mod8/CH5;0;ReadMethodType=bool;WriteMethodType=boolMod8/CH6ArbitrationForOutputData=NeverArbitrate;resource=/crio_Mod8/CH6;0;ReadMethodType=bool;WriteMethodType=boolMod8/CH7:0ArbitrationForOutputData=NeverArbitrate;resource=/crio_Mod8/CH7:0;0;ReadMethodType=u8;WriteMethodType=u8Mod8/CH7ArbitrationForOutputData=NeverArbitrate;resource=/crio_Mod8/CH7;0;ReadMethodType=bool;WriteMethodType=boolMod8[crioConfig.Begin]crio.Calibration=1,crio.Location=Slot 8,crio.Type=NI 9485,cRIOModule.DIO3_0InitialDir=0,cRIOModule.DIO7_4InitialDir=0,cRIOModule.EnableDECoM=false,cRIOModule.EnableInputFifo=false,cRIOModule.EnableOutputFifo=false,cRIOModule.NumSyncRegs=11111111,cRIOModule.RsiAttributes=[crioConfig.End]Port1cRIO SubresourcePort2cRIO SubresourcePort3cRIO SubresourcePort4cRIO SubresourceScan Clockresource=/Scan Clock;0;ReadMethodType=boolSleepresource=/Sleep;0;ReadMethodType=bool;WriteMethodType=boolSystem Resetresource=/System Reset;0;ReadMethodType=bool;WriteMethodType=bool</Property>
					<Property Name="NI.LV.FPGA.InterfaceBitfile" Type="Str">D:\Syncplicity\Repo\Motor testing - Current\FPGA Bitfiles\Motortests_FPGATarget_SCFPGA_ATeoiFgBtpA.lvbitx</Property>
				</Item>
				<Item Name="Mod5" Type="RIO C Series Module">
					<Property Name="crio.Calibration" Type="Str">1</Property>
					<Property Name="crio.Location" Type="Str">Slot 5</Property>
					<Property Name="crio.RequiresValidation" Type="Bool">false</Property>
					<Property Name="crio.SDcounterSlaveChannelMask" Type="Str">0</Property>
					<Property Name="crio.SDCounterSlaveMasterSlot" Type="Str">0</Property>
					<Property Name="crio.SDInputFilter" Type="Str">128</Property>
					<Property Name="crio.SupportsDynamicRes" Type="Bool">true</Property>
					<Property Name="crio.Type" Type="Str">NI 9205</Property>
					<Property Name="cRIOModule.AI0.TerminalMode" Type="Str">0</Property>
					<Property Name="cRIOModule.AI0.VoltageRange" Type="Str">0</Property>
					<Property Name="cRIOModule.AI1.TerminalMode" Type="Str">0</Property>
					<Property Name="cRIOModule.AI1.VoltageRange" Type="Str">0</Property>
					<Property Name="cRIOModule.AI10.TerminalMode" Type="Str">0</Property>
					<Property Name="cRIOModule.AI10.VoltageRange" Type="Str">0</Property>
					<Property Name="cRIOModule.AI11.TerminalMode" Type="Str">0</Property>
					<Property Name="cRIOModule.AI11.VoltageRange" Type="Str">0</Property>
					<Property Name="cRIOModule.AI12.TerminalMode" Type="Str">0</Property>
					<Property Name="cRIOModule.AI12.VoltageRange" Type="Str">0</Property>
					<Property Name="cRIOModule.AI13.TerminalMode" Type="Str">0</Property>
					<Property Name="cRIOModule.AI13.VoltageRange" Type="Str">0</Property>
					<Property Name="cRIOModule.AI14.TerminalMode" Type="Str">0</Property>
					<Property Name="cRIOModule.AI14.VoltageRange" Type="Str">0</Property>
					<Property Name="cRIOModule.AI15.TerminalMode" Type="Str">0</Property>
					<Property Name="cRIOModule.AI15.VoltageRange" Type="Str">0</Property>
					<Property Name="cRIOModule.AI16.TerminalMode" Type="Str">0</Property>
					<Property Name="cRIOModule.AI16.VoltageRange" Type="Str">0</Property>
					<Property Name="cRIOModule.AI17.TerminalMode" Type="Str">0</Property>
					<Property Name="cRIOModule.AI17.VoltageRange" Type="Str">0</Property>
					<Property Name="cRIOModule.AI18.TerminalMode" Type="Str">0</Property>
					<Property Name="cRIOModule.AI18.VoltageRange" Type="Str">0</Property>
					<Property Name="cRIOModule.AI19.TerminalMode" Type="Str">0</Property>
					<Property Name="cRIOModule.AI19.VoltageRange" Type="Str">0</Property>
					<Property Name="cRIOModule.AI2.TerminalMode" Type="Str">0</Property>
					<Property Name="cRIOModule.AI2.VoltageRange" Type="Str">0</Property>
					<Property Name="cRIOModule.AI20.TerminalMode" Type="Str">0</Property>
					<Property Name="cRIOModule.AI20.VoltageRange" Type="Str">0</Property>
					<Property Name="cRIOModule.AI21.TerminalMode" Type="Str">0</Property>
					<Property Name="cRIOModule.AI21.VoltageRange" Type="Str">0</Property>
					<Property Name="cRIOModule.AI22.TerminalMode" Type="Str">0</Property>
					<Property Name="cRIOModule.AI22.VoltageRange" Type="Str">0</Property>
					<Property Name="cRIOModule.AI23.TerminalMode" Type="Str">0</Property>
					<Property Name="cRIOModule.AI23.VoltageRange" Type="Str">0</Property>
					<Property Name="cRIOModule.AI24.TerminalMode" Type="Str">0</Property>
					<Property Name="cRIOModule.AI24.VoltageRange" Type="Str">0</Property>
					<Property Name="cRIOModule.AI25.TerminalMode" Type="Str">0</Property>
					<Property Name="cRIOModule.AI25.VoltageRange" Type="Str">0</Property>
					<Property Name="cRIOModule.AI26.TerminalMode" Type="Str">0</Property>
					<Property Name="cRIOModule.AI26.VoltageRange" Type="Str">0</Property>
					<Property Name="cRIOModule.AI27.TerminalMode" Type="Str">0</Property>
					<Property Name="cRIOModule.AI27.VoltageRange" Type="Str">0</Property>
					<Property Name="cRIOModule.AI28.TerminalMode" Type="Str">0</Property>
					<Property Name="cRIOModule.AI28.VoltageRange" Type="Str">0</Property>
					<Property Name="cRIOModule.AI29.TerminalMode" Type="Str">0</Property>
					<Property Name="cRIOModule.AI29.VoltageRange" Type="Str">0</Property>
					<Property Name="cRIOModule.AI3.TerminalMode" Type="Str">0</Property>
					<Property Name="cRIOModule.AI3.VoltageRange" Type="Str">0</Property>
					<Property Name="cRIOModule.AI30.TerminalMode" Type="Str">0</Property>
					<Property Name="cRIOModule.AI30.VoltageRange" Type="Str">0</Property>
					<Property Name="cRIOModule.AI31.TerminalMode" Type="Str">0</Property>
					<Property Name="cRIOModule.AI31.VoltageRange" Type="Str">0</Property>
					<Property Name="cRIOModule.AI4.TerminalMode" Type="Str">0</Property>
					<Property Name="cRIOModule.AI4.VoltageRange" Type="Str">0</Property>
					<Property Name="cRIOModule.AI5.TerminalMode" Type="Str">0</Property>
					<Property Name="cRIOModule.AI5.VoltageRange" Type="Str">0</Property>
					<Property Name="cRIOModule.AI6.TerminalMode" Type="Str">0</Property>
					<Property Name="cRIOModule.AI6.VoltageRange" Type="Str">0</Property>
					<Property Name="cRIOModule.AI7.TerminalMode" Type="Str">0</Property>
					<Property Name="cRIOModule.AI7.VoltageRange" Type="Str">0</Property>
					<Property Name="cRIOModule.AI8.TerminalMode" Type="Str">0</Property>
					<Property Name="cRIOModule.AI8.VoltageRange" Type="Str">0</Property>
					<Property Name="cRIOModule.AI9.TerminalMode" Type="Str">0</Property>
					<Property Name="cRIOModule.AI9.VoltageRange" Type="Str">0</Property>
					<Property Name="cRIOModule.DigitalIOMode" Type="Str">0</Property>
					<Property Name="cRIOModule.EnableCalProperties" Type="Str">false</Property>
					<Property Name="cRIOModule.EnableSpecialtyDigital" Type="Str">false</Property>
					<Property Name="cRIOModule.MinConvTime" Type="Str">8.000000E+0</Property>
					<Property Name="FPGA.PersistentID" Type="Str">{02EBEC19-67EC-4C7B-8B56-DB2FB2E14A9B}</Property>
				</Item>
				<Item Name="Mod7" Type="RIO C Series Module">
					<Property Name="crio.Calibration" Type="Str">1</Property>
					<Property Name="crio.Location" Type="Str">Slot 7</Property>
					<Property Name="crio.RequiresValidation" Type="Bool">false</Property>
					<Property Name="crio.SDcounterSlaveChannelMask" Type="Str">0</Property>
					<Property Name="crio.SDCounterSlaveMasterSlot" Type="Str">0</Property>
					<Property Name="crio.SDInputFilter" Type="Str">128</Property>
					<Property Name="crio.SupportsDynamicRes" Type="Bool">false</Property>
					<Property Name="crio.Type" Type="Str">NI 9426</Property>
					<Property Name="cRIOModule.DigitalIOMode" Type="Str">0</Property>
					<Property Name="cRIOModule.EnableSpecialtyDigital" Type="Str">false</Property>
					<Property Name="FPGA.PersistentID" Type="Str">{F93B9DDD-B8FC-47BB-9ECE-A33DA6FF9F19}</Property>
				</Item>
				<Item Name="Mod8" Type="RIO C Series Module">
					<Property Name="crio.Calibration" Type="Str">1</Property>
					<Property Name="crio.Location" Type="Str">Slot 8</Property>
					<Property Name="crio.RequiresValidation" Type="Bool">false</Property>
					<Property Name="crio.SDcounterSlaveChannelMask" Type="Str">0</Property>
					<Property Name="crio.SDCounterSlaveMasterSlot" Type="Str">0</Property>
					<Property Name="crio.SDInputFilter" Type="Str">128</Property>
					<Property Name="crio.SupportsDynamicRes" Type="Bool">false</Property>
					<Property Name="crio.Type" Type="Str">NI 9485</Property>
					<Property Name="cRIOModule.DigitalIOMode" Type="Str">0</Property>
					<Property Name="cRIOModule.DIO3_0InitialDir" Type="Str">0</Property>
					<Property Name="cRIOModule.DIO7_4InitialDir" Type="Str">0</Property>
					<Property Name="cRIOModule.EnableSpecialtyDigital" Type="Str">false</Property>
					<Property Name="cRIOModule.NumSyncRegs" Type="Str">11111111</Property>
					<Property Name="FPGA.PersistentID" Type="Str">{0B543E04-8B32-4389-BD51-C214DBE4B204}</Property>
				</Item>
				<Item Name="Dependencies" Type="Dependencies"/>
				<Item Name="Build Specifications" Type="Build">
					<Item Name="SC FPGA" Type="{F4C5E96F-7410-48A5-BB87-3559BC9B167F}">
						<Property Name="AllowEnableRemoval" Type="Bool">false</Property>
						<Property Name="BuildSpecDecription" Type="Str"></Property>
						<Property Name="BuildSpecName" Type="Str">SC FPGA</Property>
						<Property Name="Comp.BitfileName" Type="Str">Motortests_FPGATarget_SCFPGA_ATeoiFgBtpA.lvbitx</Property>
						<Property Name="Comp.CustomXilinxParameters" Type="Str"></Property>
						<Property Name="Comp.MaxFanout" Type="Int">-1</Property>
						<Property Name="Comp.RandomSeed" Type="Bool">false</Property>
						<Property Name="Comp.Version.Build" Type="Int">0</Property>
						<Property Name="Comp.Version.Fix" Type="Int">0</Property>
						<Property Name="Comp.Version.Major" Type="Int">1</Property>
						<Property Name="Comp.Version.Minor" Type="Int">0</Property>
						<Property Name="Comp.VersionAutoIncrement" Type="Bool">false</Property>
						<Property Name="Comp.Vivado.EnableMultiThreading" Type="Bool">true</Property>
						<Property Name="Comp.Vivado.OptDirective" Type="Str"></Property>
						<Property Name="Comp.Vivado.PhysOptDirective" Type="Str"></Property>
						<Property Name="Comp.Vivado.PlaceDirective" Type="Str"></Property>
						<Property Name="Comp.Vivado.RouteDirective" Type="Str"></Property>
						<Property Name="Comp.Vivado.RunPowerOpt" Type="Bool">false</Property>
						<Property Name="Comp.Vivado.Strategy" Type="Str">Default</Property>
						<Property Name="Comp.Xilinx.DesignStrategy" Type="Str">timing</Property>
						<Property Name="Comp.Xilinx.MapEffort" Type="Str">high(timing)</Property>
						<Property Name="Comp.Xilinx.ParEffort" Type="Str">high</Property>
						<Property Name="Comp.Xilinx.SynthEffort" Type="Str">high</Property>
						<Property Name="Comp.Xilinx.SynthGoal" Type="Str">speed</Property>
						<Property Name="Comp.Xilinx.UseRecommended" Type="Bool">true</Property>
						<Property Name="DefaultBuildSpec" Type="Bool">true</Property>
						<Property Name="DestinationDirectory" Type="Path">FPGA Bitfiles</Property>
						<Property Name="NI.LV.FPGA.LastCompiledBitfilePath" Type="Path">/D/Syncplicity/Repo/Motor testing - Current/FPGA Bitfiles/Motortests_FPGATarget_SCFPGA_ATeoiFgBtpA.lvbitx</Property>
						<Property Name="NI.LV.FPGA.LastCompiledBitfilePathRelativeToProject" Type="Path">FPGA Bitfiles/Motortests_FPGATarget_SCFPGA_ATeoiFgBtpA.lvbitx</Property>
						<Property Name="ProjectPath" Type="Path">/D/Syncplicity/Repo/Motor testing - Current/Motor tests.lvproj</Property>
						<Property Name="RelativePath" Type="Bool">true</Property>
						<Property Name="RunWhenLoaded" Type="Bool">false</Property>
						<Property Name="SupportDownload" Type="Bool">true</Property>
						<Property Name="SupportResourceEstimation" Type="Bool">true</Property>
						<Property Name="TargetName" Type="Str">FPGA Target</Property>
						<Property Name="TopLevelVI" Type="Ref">/Sample-changer-2/Chassis/FPGA Target/SC FPGA.vi</Property>
					</Item>
				</Item>
			</Item>
			<Item Name="Mod2" Type="RIO C Series Module">
				<Property Name="crio.Calibration" Type="Str">1</Property>
				<Property Name="crio.Location" Type="Str">Slot 2</Property>
				<Property Name="crio.RequiresValidation" Type="Bool">false</Property>
				<Property Name="crio.SDcounterSlaveChannelMask" Type="Str">0</Property>
				<Property Name="crio.SDCounterSlaveMasterSlot" Type="Str">0</Property>
				<Property Name="crio.SDInputFilter" Type="Str">128</Property>
				<Property Name="crio.SupportsDynamicRes" Type="Bool">false</Property>
				<Property Name="crio.Type" Type="Str">NI 9512</Property>
				<Property Name="cRIOModule.DigitalIOMode" Type="Str">0</Property>
				<Property Name="cRIOModule.EnableSpecialtyDigital" Type="Str">false</Property>
				<Property Name="FPGA.PersistentID" Type="Str">{D750D0C5-ED1B-4D51-963A-EC2BEC72FD4A}</Property>
			</Item>
		</Item>
		<Item Name="SC RT.vi" Type="VI" URL="../SC RT.vi">
			<Item Name="Straight-Line Move" Type="IIO Function Block"/>
			<Item Name="Straight-Line Move 1" Type="IIO Function Block"/>
		</Item>
		<Item Name="SC2 shared var.lvlib" Type="Library" URL="../SC2 shared var.lvlib"/>
		<Item Name="Test Axis" Type="Motion Axis">
			<Property Name="axis.class:0" Type="Int">10551361</Property>
			<Property Name="axis.mapping:0" Type="Str">Mod2 (Slot 2, NI 9512)</Property>
			<Property Name="axis.slotNumber:0" Type="Int">2</Property>
			<Property Name="axis.SMVersion" Type="Int">201310</Property>
			<Property Name="deviceID:0" Type="Int">9512</Property>
			<Property Name="resource.type:0" Type="Int">10551297</Property>
			<Property Name="resourceID:0" Type="Str">{F9223FD5-C5EC-475C-900E-9C8AD449F0FA}</Property>
			<Property Name="softmotionID:0" Type="Str">{C89C22D6-09D8-451c-B54B-BE98A931F881}</Property>
			<Property Name="vendorID:0" Type="Int">4243</Property>
		</Item>
		<Item Name="Dependencies" Type="Dependencies">
			<Item Name="vi.lib" Type="Folder">
				<Item Name="BuildHelpPath.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/BuildHelpPath.vi"/>
				<Item Name="Check Special Tags.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Check Special Tags.vi"/>
				<Item Name="Clear Errors.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Clear Errors.vi"/>
				<Item Name="Convert property node font to graphics font.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Convert property node font to graphics font.vi"/>
				<Item Name="Details Display Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Details Display Dialog.vi"/>
				<Item Name="DialogType.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/DialogType.ctl"/>
				<Item Name="DialogTypeEnum.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/DialogTypeEnum.ctl"/>
				<Item Name="Error Cluster From Error Code.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Error Cluster From Error Code.vi"/>
				<Item Name="Error Code Database.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Error Code Database.vi"/>
				<Item Name="ErrWarn.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/ErrWarn.ctl"/>
				<Item Name="eventvkey.ctl" Type="VI" URL="/&lt;vilib&gt;/event_ctls.llb/eventvkey.ctl"/>
				<Item Name="Find Tag.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Find Tag.vi"/>
				<Item Name="Format Message String.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Format Message String.vi"/>
				<Item Name="General Error Handler Core CORE.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/General Error Handler Core CORE.vi"/>
				<Item Name="General Error Handler.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/General Error Handler.vi"/>
				<Item Name="Get String Text Bounds.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Get String Text Bounds.vi"/>
				<Item Name="Get Text Rect.vi" Type="VI" URL="/&lt;vilib&gt;/picture/picture.llb/Get Text Rect.vi"/>
				<Item Name="GetHelpDir.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/GetHelpDir.vi"/>
				<Item Name="GetRTHostConnectedProp.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/GetRTHostConnectedProp.vi"/>
				<Item Name="Longest Line Length in Pixels.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Longest Line Length in Pixels.vi"/>
				<Item Name="LVBoundsTypeDef.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVBoundsTypeDef.ctl"/>
				<Item Name="LVRectTypeDef.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVRectTypeDef.ctl"/>
				<Item Name="Not Found Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Not Found Dialog.vi"/>
				<Item Name="Search and Replace Pattern.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Search and Replace Pattern.vi"/>
				<Item Name="Set Bold Text.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Set Bold Text.vi"/>
				<Item Name="Set String Value.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Set String Value.vi"/>
				<Item Name="Simple Error Handler.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Simple Error Handler.vi"/>
				<Item Name="TagReturnType.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/TagReturnType.ctl"/>
				<Item Name="Three Button Dialog CORE.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Three Button Dialog CORE.vi"/>
				<Item Name="Three Button Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Three Button Dialog.vi"/>
				<Item Name="Trim Whitespace.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Trim Whitespace.vi"/>
				<Item Name="whitespace.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/whitespace.ctl"/>
			</Item>
			<Item Name="NiFpgaLv.dll" Type="Document" URL="NiFpgaLv.dll">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
		</Item>
		<Item Name="Build Specifications" Type="Build"/>
	</Item>
</Project>
