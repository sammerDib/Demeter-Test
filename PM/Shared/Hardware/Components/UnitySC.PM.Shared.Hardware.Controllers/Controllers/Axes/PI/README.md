﻿###Supported commands/functions
Result from command `HLP?`:

```
The following commands are valid: 
#5 - Request Motion Status of each Axis 
#7 - Ask Controller Ready State for new Command 
#9 - Request Wave Generator State 
#24 - Stop all Motion abruptly 
*IDN? - Get Device Identification String 
AOS <AxisID> <Offset> Set Analog Input Offset 
AOS? [<AxisID>] Get Analog Input Offset 
ATZ [<AxisID> <LowVoltage>] Set Automatic Zero Point Calibration 
ATZ? [<AxisID>] Get Automatic Zero Point Calibration 
CCL <Level> [<PSWD>] Set Current Command Level 
CCL? - Get Current Command Level 
CST? [<AxisID>] Get Stage Type Of Selected Axis 
CSV? - Get Current Syntax Version 
CTI <TriggerInID> <CTIParaID> <Value> Configure Trigger Input 
CTI? [<TriggerInID> <CTIParaID>] Get Configuration of Trigger Input 
CTO <TriggerOutID> <CTOParaID> <Value> Configure Trigger Output 
CTO? [<TriggerOutID> <CTOParaID>] Get Configuration of Trigger Output 
DIO? [<TriggerInID>] Get State of Trigger Input 
DRC <RecTableID> <Data_Source> <Record_Option> Set Data Recorder Configuration 
DRC? [RecTableID] Get Data Recorder Configuration 
DRL? [RecTableID] Get Data Recorder Length 
DRR? [<FirstDataPoint> [<NumberOfPoints> [{<DataRecorderTable>}]]] Reading of last recorded Data 
DRT <RecTableID> <Trigger_Source> <Value> Set Data Recorder Trigger Source 
DRT? [RecTableID] Get Data Recorder Trigger Source 
ERR? - Get Error 
GWD? [<StartPoint> [<Number of Points> [{<WaveTableID>}]]] Get Wave Table Data 
HDR? - Show Help on Data Recording 
HLP? - Get List of available Commands 
HPA? - Get List of available Parameters 
HPV? - Get Help String for additional Parameter Information 
IDN? - Get Device Identification String 
IFC <InterfaceParameter> <Value> Set current Interface Configuration 
IFC? [<InterfaceParameter>] Get current Interface Configuration 
IFS <PSWD> <InterfaceParameter> <Value> Set default Interface Configuration 
IFS? [<InterfaceParameter>] Get default Interface Configuration 
IMP <AxisID> <ImpulseSize> Starts performing and recording of an Impulse-Response 
IMP? [<AxisID>] Get last sent IMP-Parameter 
MOV <AxisID> <Pos> Set new Command Position 
MOV? [<AxisID>] Get commanded Position 
MVR <AxisID> <Position> Set new relative Command Position 
ONT? [<AxisID>] Get State of On Target Signal 
OVF? [<AxisID>] Get State of Overflow Signal 
POS? [<AxisID>] Get current Position 
RBT - Reboot System 
RPA [<AxisID/ChannelID> <ParaID>] Reset Ram Parameter 
RTR <Value> Set Data Recorder Table Rate 
RTR? - Get current Data Recorder Table Rate 
SAI <oldAxis> <newAxis> Set old Axis Identifier to new Identifier 
SAI? [ALL] Get Axis Identifier 
SEP <PSWD> <AxisID/ChannelID> <ParaID> <Value> Set Parameter to different Value in non-volatile Memory 
SEP? [<AxisID/ChannelID> <ParaID>] Get Parameter Value of given Axis from Flash-Memory 
SPA <AxisID/ChannelID> <ParaID> <Value> Set Parameter to different Value in volatile Memory 
SPA? [<AxisID/ChannelID> <ParaID>] Get current Parameter Value of given Axis/Channel 
SSN? - Get Serial Number of Stage 
STE <AxisID> <StepSize> Starts performing and recording of a Step-Response 
STE? [<AxisID>] Get last sent STE-Parameter 
STP - Stops all motions instantaneously 
SVA <AxisID> <Voltage> Set new Command Voltage 
SVA? [<Axis>] Get commanded Voltage 
SVO <Axis> <ServoState> Set Servo-Control-Mode on or off for given Axis 
SVO? [<Axis>] Get current Servo-Control-Mode of given Axis 
SVR <AxisID> <Voltage> Set new relative Voltage 
TAD? [analogInputID] Tell the current Value of the A/D Converter 
TIO? - Tell Number of installed Digital I/O Lines 
TMN? [AxisID] Get the minimum commandable position 
TMX? [AxisID] Get the maximum commandable position 
TNR? - Tell Number of available Data Recorders 
TNS? [<InputSignalID>] Get Input Signal Normalized Value 
TPC? - Get the Number of Piezo Channels 
TRI <TriggerInID> <Value> Set Trigger Input Enable Status 
TRI? [<TriggerInID>] Get Trigger Input Enable Status 
TSC? - Get the Number of Sensor Channels 
TSP? [<InputSignalID>] Get Input Signal Position Value 
TWC - Clear All Wave Related Triggers 
TWG? - Get Number of available Wave Generators 
TWS <TriggerOutID> <PointNumber> <Level> Set Trigger Line Action To Waveform Point 
VEL <AxisID> <Velocity> Set Velocity of given Axis 
VEL? [<AxisID>] Get Velocity of given Axis 
VOL? [{<ChannelID>}] Get current Output Voltage 
WAV <WaveTableID> <AppendWave> <WaveType> <WaveTypeParameters> Define Wave Table 
WAV? [<WaveTableID> <WaveParameterID>] Get the Value of Wave Parameter 
WCL <WaveTableID> Clear Wavetable 
WGC <WaveGeneratorID> <Value> Set Number of Wave-Cycles for given Wave-Generator 
WGC? [<WaveGeneratorID>] Get Number of Wave-Cycles for given Wave-Generator 
WGI? [<WaveGeneratorID>] Report Index of the currently output Wave Point 
WGN? [<WaveGeneratorID>] Report Number of finished Wave-Cycles since last WGO Command 
WGO <WaveGeneratorID> <StartMode> Start and Stop Wave-Generator 
WGO? [<WaveGeneratorID>] Get Output Mode of Wave-Generator 
WGR - Restarts Data Recording with running Wave_Generator 
WOS <WaveGeneratorID> <Value> Set Waveform-Offset 
WOS? [<WaveGeneratorID>] Get Waveform-Offset 
WPA <PSWD> [<AxisID/ChannelID> <ParaID>] Write Parameter from Ram to Flash 
WSL <WaveGeneratorID> <WaveTableID> Connect a Wave-Table to the Wave-Generator 
WSL? [<WaveGeneratorID>] Get currently selected Wave-Table for Wave-Generator 
WTR <WaveGeneratorID> <Value> <InterpolationType> Change Sampling Interval of Wave-Generator 
WTR? [<WaveGeneratorID>] Get Sampling Interval of Wave-Generator 
end of help
> No error
```
