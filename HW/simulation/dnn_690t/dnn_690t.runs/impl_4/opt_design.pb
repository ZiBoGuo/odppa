
b
Command: %s
53*	vivadotcl21
opt_design -directive Explore2default:defaultZ4-113h px� 
d
$Directive used for opt_design is: %s67*	vivadotcl2
Explore2default:defaultZ4-136h px� 
�
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2"
Implementation2default:default2
	xc7vx690t2default:defaultZ17-347h px� 
�
0Got license for feature '%s' and/or device '%s'
310*common2"
Implementation2default:default2
	xc7vx690t2default:defaultZ17-349h px� 
n
,Running DRC as a precondition to command %s
22*	vivadotcl2

opt_design2default:defaultZ4-22h px� 
R

Starting %s Task
103*constraints2
DRC2default:defaultZ18-103h px� 
P
Running DRC with %s threads
24*drc2
82default:defaultZ23-27h px� 
U
DRC finished with %s
272*project2
0 Errors2default:defaultZ1-461h px� 
d
BPlease refer to the DRC report (report_drc) for more information.
274*projectZ1-462h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:05 ; elapsed = 00:00:03 . Memory (MB): peak = 5836.629 ; gain = 64.031 ; free physical = 99059 ; free virtual = 1151762default:defaulth px� 
g

Starting %s Task
103*constraints2,
Cache Timing Information2default:defaultZ18-103h px� 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px� 
P
;Ending Cache Timing Information Task | Checksum: 13df34050
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:40 ; elapsed = 00:00:23 . Memory (MB): peak = 5836.629 ; gain = 0.000 ; free physical = 98373 ; free virtual = 1144892default:defaulth px� 
a

Starting %s Task
103*constraints2&
Logic Optimization2default:defaultZ18-103h px� 
i

Phase %s%s
101*constraints2
1 2default:default2
Retarget2default:defaultZ18-101h px� 
w
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
122default:default2
352default:defaultZ31-138h px� 
K
Retargeted %s cell(s).
49*opt2
02default:defaultZ31-49h px� 
<
'Phase 1 Retarget | Checksum: 17a7be16f
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:37 ; elapsed = 00:00:22 . Memory (MB): peak = 6252.613 ; gain = 415.984 ; free physical = 98943 ; free virtual = 1150592default:defaulth px� 
�
.Phase %s created %s cells and removed %s cells267*opt2
Retarget2default:default2
24942default:default2
55592default:defaultZ31-389h px� 
�
�In phase %s, %s netlist objects are constrained preventing optimization. Please run opt_design with -debug_log to get more detail. 510*opt2
Retarget2default:default2
3442default:defaultZ31-1021h px� 
u

Phase %s%s
101*constraints2
2 2default:default2(
Constant propagation2default:defaultZ18-101h px� 
u
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
32default:default2
32default:defaultZ31-138h px� 
H
3Phase 2 Constant propagation | Checksum: 180092f01
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:52 ; elapsed = 00:00:38 . Memory (MB): peak = 6252.613 ; gain = 415.984 ; free physical = 98924 ; free virtual = 1150422default:defaulth px� 
�
.Phase %s created %s cells and removed %s cells267*opt2(
Constant propagation2default:default2
34752default:default2
714632default:defaultZ31-389h px� 
�
�In phase %s, %s netlist objects are constrained preventing optimization. Please run opt_design with -debug_log to get more detail. 510*opt2(
Constant propagation2default:default2
1362default:defaultZ31-1021h px� 
f

Phase %s%s
101*constraints2
3 2default:default2
Sweep2default:defaultZ18-101h px� 
9
$Phase 3 Sweep | Checksum: 10f9a745c
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:01:34 ; elapsed = 00:01:19 . Memory (MB): peak = 6252.613 ; gain = 415.984 ; free physical = 98901 ; free virtual = 1150172default:defaulth px� 
�
.Phase %s created %s cells and removed %s cells267*opt2
Sweep2default:default2
22default:default2
385112default:defaultZ31-389h px� 
�
�In phase %s, %s netlist objects are constrained preventing optimization. Please run opt_design with -debug_log to get more detail. 510*opt2
Sweep2default:default2
6052default:defaultZ31-1021h px� 
r

Phase %s%s
101*constraints2
4 2default:default2%
BUFG optimization2default:defaultZ18-101h px� 
E
0Phase 4 BUFG optimization | Checksum: 10f9a745c
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:01:43 ; elapsed = 00:01:28 . Memory (MB): peak = 6252.613 ; gain = 415.984 ; free physical = 98898 ; free virtual = 1150152default:defaulth px� 
�
EPhase %s created %s cells of which %s are BUFGs and removed %s cells.395*opt2%
BUFG optimization2default:default2
02default:default2
02default:default2
02default:defaultZ31-662h px� 
|

Phase %s%s
101*constraints2
5 2default:default2/
Shift Register Optimization2default:defaultZ18-101h px� 
O
:Phase 5 Shift Register Optimization | Checksum: 1208cfccf
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:02:03 ; elapsed = 00:01:49 . Memory (MB): peak = 6252.613 ; gain = 415.984 ; free physical = 98907 ; free virtual = 1150242default:defaulth px� 
�
.Phase %s created %s cells and removed %s cells267*opt2/
Shift Register Optimization2default:default2
02default:default2
02default:defaultZ31-389h px� 
x

Phase %s%s
101*constraints2
6 2default:default2+
Post Processing Netlist2default:defaultZ18-101h px� 
K
6Phase 6 Post Processing Netlist | Checksum: 15c35be29
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:02:11 ; elapsed = 00:01:56 . Memory (MB): peak = 6252.613 ; gain = 415.984 ; free physical = 98908 ; free virtual = 1150252default:defaulth px� 
�
.Phase %s created %s cells and removed %s cells267*opt2+
Post Processing Netlist2default:default2
02default:default2
22default:defaultZ31-389h px� 
�
�In phase %s, %s netlist objects are constrained preventing optimization. Please run opt_design with -debug_log to get more detail. 510*opt2+
Post Processing Netlist2default:default2
1342default:defaultZ31-1021h px� 
/
Opt_design Change Summary
*commonh px� 
/
=========================
*commonh px� 


*commonh px� 


*commonh px� 
�
z-------------------------------------------------------------------------------------------------------------------------
*commonh px� 
�
�|  Phase                        |  #Cells created  |  #Cells Removed  |  #Constrained objects preventing optimizations  |
-------------------------------------------------------------------------------------------------------------------------
*commonh px� 
�
�|  Retarget                     |            2494  |            5559  |                                            344  |
|  Constant propagation         |            3475  |           71463  |                                            136  |
|  Sweep                        |               2  |           38511  |                                            605  |
|  BUFG optimization            |               0  |               0  |                                              0  |
|  Shift Register Optimization  |               0  |               0  |                                              0  |
|  Post Processing Netlist      |               0  |               2  |                                            134  |
-------------------------------------------------------------------------------------------------------------------------
*commonh px� 


*commonh px� 


*commonh px� 
a

Starting %s Task
103*constraints2&
Connectivity Check2default:defaultZ18-103h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:00.82 ; elapsed = 00:00:00.82 . Memory (MB): peak = 6252.613 ; gain = 0.000 ; free physical = 98909 ; free virtual = 1150262default:defaulth px� 
J
5Ending Logic Optimization Task | Checksum: 103c13c71
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:02:13 ; elapsed = 00:01:58 . Memory (MB): peak = 6252.613 ; gain = 415.984 ; free physical = 98907 ; free virtual = 1150252default:defaulth px� 
a

Starting %s Task
103*constraints2&
Power Optimization2default:defaultZ18-103h px� 
s
7Will skip clock gating for clocks with period < %s ns.
114*pwropt2
2.002default:defaultZ34-132h px� 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px� 
=
Applying IDT optimizations ...
9*pwroptZ34-9h px� 
?
Applying ODC optimizations ...
10*pwroptZ34-10h px� 
�
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
0.2002default:default2
0.0002default:defaultZ32-619h px� 
K
,Running Vector-less Activity Propagation...
51*powerZ33-51h px� 
P
3
Finished Running Vector-less Activity Propagation
1*powerZ33-1h px� 


*pwropth px� 
e

Starting %s Task
103*constraints2*
PowerOpt Patch Enables2default:defaultZ18-103h px� 
�
�WRITE_MODE attribute of %s BRAM(s) out of a total of %s has been updated to save power.
    Run report_power_opt to get a complete listing of the BRAMs updated.
129*pwropt2
2292default:default2
11782default:defaultZ34-162h px� 
d
+Structural ODC has moved %s WE to EN ports
155*pwropt2
22default:defaultZ34-201h px� 
�
CNumber of BRAM Ports augmented: %s newly gated: %s Total Ports: %s
65*pwropt2
6702default:default2
7332default:default2
23562default:defaultZ34-65h px� 
h
1Number of Flops added for Enable Generation: %s

23*pwropt2
82default:defaultZ34-23h px� 
M
8Ending PowerOpt Patch Enables Task | Checksum: d91189d7
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:05 ; elapsed = 00:00:05 . Memory (MB): peak = 10389.516 ; gain = 0.000 ; free physical = 97805 ; free virtual = 1139222default:defaulth px� 
I
4Ending Power Optimization Task | Checksum: d91189d7
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:05:16 ; elapsed = 00:02:06 . Memory (MB): peak = 10389.516 ; gain = 4136.902 ; free physical = 98295 ; free virtual = 1144122default:defaulth px� 
\

Starting %s Task
103*constraints2!
Final Cleanup2default:defaultZ18-103h px� 
a

Starting %s Task
103*constraints2&
Logic Optimization2default:defaultZ18-103h px� 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px� 
I
4Ending Logic Optimization Task | Checksum: fd48eb2b
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:01:12 ; elapsed = 00:00:46 . Memory (MB): peak = 10389.516 ; gain = 0.000 ; free physical = 98317 ; free virtual = 1144342default:defaulth px� 
D
/Ending Final Cleanup Task | Checksum: fd48eb2b
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:01:15 ; elapsed = 00:00:50 . Memory (MB): peak = 10389.516 ; gain = 0.000 ; free physical = 98315 ; free virtual = 1144332default:defaulth px� 
b

Starting %s Task
103*constraints2'
Netlist Obfuscation2default:defaultZ18-103h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:00.142default:default2
00:00:00.142default:default2
	10389.5162default:default2
0.0002default:default2
983382default:default2
1144562default:defaultZ17-722h px� 
J
5Ending Netlist Obfuscation Task | Checksum: fd48eb2b
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:00.14 ; elapsed = 00:00:00.14 . Memory (MB): peak = 10389.516 ; gain = 0.000 ; free physical = 98338 ; free virtual = 1144562default:defaulth px� 
Z
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
1022default:default2
212default:default2
02default:default2
02default:defaultZ4-41h px� 
\
%s completed successfully
29*	vivadotcl2

opt_design2default:defaultZ4-42h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2 
opt_design: 2default:default2
00:09:382default:default2
00:05:292default:default2
	10389.5162default:default2
4624.9222default:default2
983432default:default2
1144612default:defaultZ17-722h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:00.142default:default2
00:00:00.142default:default2
	10389.5162default:default2
0.0002default:default2
983452default:default2
1144622default:defaultZ17-722h px� 
H
&Writing timing data to binary archive.266*timingZ38-480h px� 
D
Writing placer database...
1603*designutilsZ20-1893h px� 
=
Writing XDEF routing.
211*designutilsZ20-211h px� 
J
#Writing XDEF routing logical nets.
209*designutilsZ20-209h px� 
J
#Writing XDEF routing special nets.
210*designutilsZ20-210h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2)
Write XDEF Complete: 2default:default2
00:00:00.502default:default2
00:00:00.112default:default2
	10389.5162default:default2
0.0002default:default2
983192default:default2
1144492default:defaultZ17-722h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:00.312default:default2
00:00:00.142default:default2
	10389.5162default:default2
0.0002default:default2
979882default:default2
1141782default:defaultZ17-722h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2a
M/home/hht/gzb/DNN330/DNNv4/418/dnn_690t/dnn_690t.runs/impl_4/user_top_opt.dcp2default:defaultZ17-1381h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2&
write_checkpoint: 2default:default2
00:02:222default:default2
00:02:022default:default2
	10389.5162default:default2
0.0002default:default2
981262default:default2
1144022default:defaultZ17-722h px� 
�
%s4*runtcl2~
jExecuting : report_drc -file user_top_drc_opted.rpt -pb user_top_drc_opted.pb -rpx user_top_drc_opted.rpx
2default:defaulth px� 
�
Command: %s
53*	vivadotcl2q
]report_drc -file user_top_drc_opted.rpt -pb user_top_drc_opted.pb -rpx user_top_drc_opted.rpx2default:defaultZ4-113h px� 
>
IP Catalog is up to date.1232*coregenZ19-1839h px� 
P
Running DRC with %s threads
24*drc2
82default:defaultZ23-27h px� 
�
#The results of DRC are in file %s.
168*coretcl2�
S/home/hht/gzb/DNN330/DNNv4/418/dnn_690t/dnn_690t.runs/impl_4/user_top_drc_opted.rptS/home/hht/gzb/DNN330/DNNv4/418/dnn_690t/dnn_690t.runs/impl_4/user_top_drc_opted.rpt2default:default8Z2-168h px� 
\
%s completed successfully
29*	vivadotcl2

report_drc2default:defaultZ4-42h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2 
report_drc: 2default:default2
00:00:332default:default2
00:00:152default:default2
	10389.5162default:default2
0.0002default:default2
981312default:default2
1144072default:defaultZ17-722h px� 


End Record