
# Physical Verification Using SKY130

This repository contains all the steps performed in 5-day Physical Verification Using SKY130 workshop. In this workshop, we primarily focus in the process of Physical verification like DRC(Design Rule Check) and LVS(Layout vs Schematic) check using sky130 PDK. All the lab exercises are performed in VSD online platform. 

![](images/titlePic.png)


# Table of Contents

- [Day 1 - Introduction to Skywater SKY130](#day-1---introduction-to-skywater-sky130)
  * [Introduction](#introduction)
  * [Software Tools and Setup](#software-tools-and-setup)
  * [DRC and LVS Overview](#drc-and-lvs-overview)
- [Day 2 Introduction to DRC and LVS](#day-2-introduction-to-drc-and-lvs)
  * [GDS](#gds)
  * [Basic Extraction](#basic-extraction)
  * [DRC, LVS and XOR](#drc-,-lvs-and-xor)
- [Day 3 Front-end and Back-end DRC](#day-3-front---end-and-back---end-drc)
  * [DRC Rules](#drc-rules)
    * [Width Rule and Spacing Rule](#width-rule-and-spacing-rule)
    * [Wide Spacing Rule and Notch Rule](#wide-spacing-rule-and-notch-rule)
    * [Vias](#vias)
    * [Minimum Area Rule and Minimum Hole Rule](#minimum-area-rule-and-minimum-hole-rule)
    * [Wells and Deep N-well](#wells-and-deep-N---well)
    * [Derived Layers](#derived-layers)
    * [Paramaterized and PDK devices](#paramaterized-and-pdk-devices)
    * [Angle Error and Overlap Rule](#angle-error-and-overlap-rule)
    * [Unimplemented Rules](#unimplemented-rules)
    * [Latch-up and antenna Rule](#latch---up-and-antenna-rule)
    * [Density Rules](#density-rules)
- [Day 4 Understanding PNR and Physical Verification](#day-4-understanding-pnr-and-physical-verification)
  * [OpenLANE Flow](#openlane-flow)
- [Day 5  Running Layout vs Schematic](#day-5--running-layout-vs-schematic)
  * [Simple LVS Experiment](#simple-lvs-experiment)
  * [LVS Layout vs Verilog for Standard Cell](#lvs-layout-vs-verilog-for-standard-cell)
  * [LVS for Small Analog Block Power on Reset](#lvs-for-small-analog-block-power-on-reset)
  * [LVS Digital PLL](#lvs-digital-pll)
- [References](#references)
- [Acknowledgement](#acknowledgement)

# Day 1 - Introduction to Skywater SKY130

## Introduction

SKY130 is an open source PDK(Process Design Kit) provided by Skywater foundry and Google to design Ic that are opensource. This mean the IPs can be used by anyone without any charge. The main focus is to develop efficient and optimized IC for better performance.
The following git repository holds all the information about sky130 PDK.
https://github.com/google/skywater-pdk


## Software Tools and Setup

### Magic

To install Magic, do the following steps:
```
git clone git://opencircuitdesign.com/magic
cd magic
./configure
make
sudo make install
```

To run magic, go to mag directory and type `magic` in the prompt.

![](images/day1/day1_1_magicPrompt.png)

### Netgen
To run Negten, go to netgen directory and type `netgen` in the prompt.
![](images/day1/day1_1_netgenPrompt.png)

### Xschem
To run xschem, go to xschem directory and type `xschem` in the prompt.
Xschem Prompt |  Xschem Prompt Linked
:-------------------------:|:-------------------------:
![](images/day1/day1_1_xschemePrompt.png)  |  ![](images/day1/day1_1_xschemLinkedPrompt.png)
To enter deep in ths block, select the block and press `e`. To return to top level press `ctrl + e`.

### Ngspice
To run Ngspice, go to ngspice directory and type `ngspice` in the prompt.
![](images/day1/day1_2_ngspice.png)
 
### Magic Basics 
Magic Basics |  Nfet
:-------------------------:|:-------------------------:
![](images/day1/day1_3_magicBasci.png) |  ![](images/day1/day1_4_magicbasic.png)

![](images/day1/day1_5_magicnfet.png)
  
### DRC and LVS Overview with Inverter
Inverter Schematic |  Inverter Symbol
:-------------------------:|:-------------------------:
![](images/day1/day1_6_inverterSchematic.png) |  ![](images/day1/day1_7_inverterSymbol.png)  

![](images/day1/day1_8_inverterSimulation.png)

Inverter Layout Cells |  Extraction from Inverter in Magic
:-------------------------:|:-------------------------:
![](images/day1/day1_9_inverterLayoutCells.png) |  ![](images/day1/day1_10_inverterLayoutExtraction.png) 

![](images/day1/day1_10_inverterSpiceFile.png)

We run LVS using Netgen and the result is shown below:

Running Netgen |  LVS Result
:-------------------------:|:-------------------------:
![](images/day1/day1_12_runningNetgen.png) |  ![](images/day1/day1_13_firstNetgenResult.png)

  

Extraction from Inverter in Magic |  Spice File
:-------------------------:|:-------------------------:
![](images/day1/day1_14_inverterSpiceFileExtractionWithParasitics.png) |  ![](images/day1/day1_15_inverterSpiceFileWithParasitics.png)
  

  




# Day 2 Introduction to DRC and LVS

## GDS
CIF ISTYLE |  Loading AND Gate
:-------------------------:|:-------------------------:
![](images/day2/day2_1_gdsRead.png) |  ![](images/day2/day2_2_loadAndGate.png)


![](images/day2/day2_3_AndGatelayout.png)

Changing CIF Style |  Loading AND Gate with Sky130() CIF Style
:-------------------------:|:-------------------------:
![](images/day2/day2_4_changeCIFstyle.png) |  ![](images/day2/day2_5_loadAndGate.png)

![](images/day2/day2_6_AndGateports.png)

Spice File location |  AND Gate Spice File
:-------------------------:|:-------------------------:
![](images/day2/day2_7_spiceFilelocation.png) |  ![](images/day2/day2_8_spiceFile.png)


Lef Read |  Ports
:-------------------------:|:-------------------------:
![](images/day2/day2_9_lefReadAndPort.png) |  ![](images/day2/day2_10_spiceReadAndPort.png)

## Abstract Views
Open new Magic prompt and do lef read and load AND gate and expand it.

Lef Read |  Ports
:-------------------------:|:-------------------------:
![](images/day2/day2_11_secondLEFReadAndPorts.png) |  ![](images/day2/day2_12_afterSpiceReadPortAndTest.png)

Load Test Instance |  GDS Write test
:-------------------------:|:-------------------------:
![](images/day2/day2_13_loadTestinstance.png) |  ![](images/day2/day2_14_testCellGDSWrite.png)


GDS read Test |  Layout of Test
:-------------------------:|:-------------------------:
![](images/day2/day2_15_gdsReadTest.png) |  ![](images/day2/day2_16_gdsReadTest2.png)


When we load the test, we get the following layout for AND gate. The AND gate is actually loaded from sky130_fd_sc_hd/gds directory.
GDS read Test |  Layout of Test
:-------------------------:|:-------------------------:
![](images/day2/day2_17_loadTestResult.png) |  ![](images/day2/day2_18_testPath.png)

The sky130_fd_sc_hd__and2_1 cell is written to test file and edited and saved. When loading the test file the additional layer is not saved and the cell is loaded from the sky130_fd_sc_hd/gds directory.
GDS write Test |  GDS read Test
:-------------------------:|:-------------------------:
![](images/day2/day2_19_GDSWriteTest.png) |  ![](images/day2/day2_20_GDSReadTestResult.png)


## Basic Extraction

Performing Extraction |  Location of Spice file
:-------------------------:|:-------------------------:
![](images/day2/day2_21_extractionFirst.png) |  ![](images/day2/day2_22_spiceFilePath.png)

Spice File |  Spice File with Parasitic Capacitance
:-------------------------:|:-------------------------:
![](images/day2/day2_23_spiceFileFirst.png) |  ![](images/day2/day2_24_spiceFileSecond.png)


![](images/day2/day2_25_ExtractionLabel.png)

Extraction Label |  Extraction with Parasitic Resistance
:-------------------------:|:-------------------------:
![](images/day2/day2_26_extractionWithPCandPR.png) |  ![](images/day2/day2_27_extractionPR.png)


Extraction with threshold value |  Spice File
:-------------------------:|:-------------------------:
![](images/day2/day2_28_extractionWithvalue.png) |  ![](images/day2/day2_29_spiceFile.png)



## DRC, LVS and XOR

DRC mode |  DRC check
:-------------------------:|:-------------------------:
![](images/day2/day2_30_drc.png) |  ![](images/day2/day2_31_drcCheck.png)

DRC Error  |  DRC Error Correction
:-------------------------:|:-------------------------:
![](images/day2/day2_32_drcErrorTapAndGate.png) |  ![](images/day2/day2_33_drcErrorCorrection1.png)

LVS setup |  Extraction for LVS
:-------------------------:|:-------------------------:
![](images/day2/day2_35_lvsSetup.png) |  ![](images/day2/day2_36_lvsSetup2.png)

LVS result |  XOR Result
:-------------------------:|:-------------------------:
![](images/day2/day2_37_netgenOutput.png) | ![](images/day2/day2_38_xor.png)





# Day 3 Front-end and Back-end DRC


## DRC Rules


### Width Rule, Spacing Rule, Wide Spacing Rule and Notch Rule

Clone Git Repository |  DRC Rule
:-------------------------:|:-------------------------:
![](images/day3/day3_1_cloneDRCLabGitRepo.png) | ![](images/day3/day3_2_WidthAndSpacingRule.png)

### Vias

Via Overlap Rule |  Via Overlap Error Correction
:-------------------------:|:-------------------------:
![](images/day3/day3_3_via1.png) |  ![](images/day3/day3_4_via2.png)

![](images/day3/day3_5_via3.png)

### Minimum Area Rule and Minimum Hole Rule

Minimum Area Error |  Minimum Area Error Correction
:-------------------------:|:-------------------------:
![](images/day3/day3_6_minArea.png) | ![](images/day3/day3_7_minArea.png)

Minimim Hole Area |  Minimim Hole Area Error Correction
:-------------------------:|:-------------------------:
![](images/day3/day3_8_minHoleArea.png) | ![](images/day3/day3_9_minHoleArea.png)

### Wells and Deep N-well

Nwell Error |  Nwell Error Correction
:-------------------------:|:-------------------------:
![](images/day3/day3_10_wellError.png)  | ![](images/day3/day3_12_wellSolution.png)

Pwell Error |  Pwell Error Correction
:-------------------------:|:-------------------------:
![](images/day3/day3_11_pwellError.png) | ![](images/day3/day3_13_pwellSolution.png)

DeepNwell Error |  DeepNwell Error Correction
:-------------------------:|:-------------------------:
![](images/day3/day3_14_deepNwellError.png) | ![](images/day3/day3_15_deepNwellSolution.png)


### Derived Layers

Derived Layer |  HVI Layer
:-------------------------:|:-------------------------:
![](images/day3/day3_16_derivedLayers.png) | ![](images/day3/day3_17_derivedLayers5b.png)

Derived Layer Error |  NPC Layer
:-------------------------:|:-------------------------:
![](images/day3/day3_18_derivedLayers5bError.png) | ![](images/day3/day3_19_derivedLayers5c.png)

NPC Layer |  NPC Layer
:-------------------------:|:-------------------------:
![](images/day3/day3_20_derivedLayers5cNPC.png) | ![](images/day3/day3_22_derivedLayers5cNPC.png)


### Paramaterized and PDK devices

Paramaterized Devices Error |  Paramaterized Devices Error Solution
:-------------------------:|:-------------------------:
![](images/day3/day3_23_paramaterizedDevices6aError.png) | ![](images/day3/day3_24_paramaterizedDevices6aSolution.png)


### Angle Error and Overlap Rule

![](images/day3/day3_25_AngleError7.png)

Angle Error |  Angle Error
:-------------------------:|:-------------------------:
![](images/day3/day3_26_AngleError7a.png) | ![](images/day3/day3_27_AngleError7aSolution1.png)

Angle Error Correction |  Angle Error Correction
:-------------------------:|:-------------------------:
![](images/day3/day3_28_AngleError7aSolution2.png) | ![](images/day3/day3_29_AngleError7aSolution3.png)

Overlap Error | 
:-------------------------:|:-------------------------:
![](images/day3/day3_30_overLapRule7d.png) |


Overlap Rule |  Overlap Error Correction
:-------------------------:|:-------------------------:
![](images/day3/day3_31_overLapRule7e.png) | ![](images/day3/day3_32_overLapRule7d.png)



### Unimplemented Rules

Latchup Rule Error |  Latchup Rule Error Correction
:-------------------------:|:-------------------------:
![](images/day3/day3_33_9_LatchUpRuleError.png) | ![](images/day3/day3_34_9_LatchUpRuleSolution.png)



### Latch-up and antenna Rule

Antenna Rule Error |  Antenna Rule Error
:-------------------------:|:-------------------------:
![](images/day3/day3_35_10_AntennaRule.png) | ![](images/day3/day3_36_10_AntennaRuleError.png)

Antenna Rule Error |  Antenna Rule Error Correction
:-------------------------:|:-------------------------:
![](images/day3/day3_37_10_AntennaRuleError2.png) | ![](images/day3/day3_38_10_AntennaRuleSolution.png)

Antenna Rule Error |
:-------------------------:|
![](images/day3/day3_39_10_AntennaRuleSolution2.png)


### Density Rules

Density of Metal Layers |  Density Rule Error
:-------------------------:|:-------------------------:
![](images/day3/day3_40_11_densityRule.png) | ![](images/day3/day3_41_11_densityRuleError.png)

Fill Pattern View |  Generated GDS File
:-------------------------:|:-------------------------:
![](images/day3/day3_42_11_densityRuleGenerateFiller.png) | ![](images/day3/day3_43_11_densityRuleGeneratedFillerPattern.png)

Generated Fill Pattern |  Density of Different Metal Layers | Fill Pattern
:-------------------------:|:-------------------------:|:-------------------------:
![](images/day3/day3_44_11_densityRuleGeneratedFillerPatternView.png) | ![](images/day3/day3_45_11_densityRuleDensityView.png) | ![](images/day3/day3_46_11_densityRuleFillerPatternView.png)


# Day 4 Understanding PNR and Physical Verification
## OpenLANE Flow

# Day 5  Final steps for RTL2GDS

## Simple LVS Experiment

![](images/day5/day5_1_1_gitCloneRepository.png)
![](images/day5/day5_2_1_lvsNetgen1.png)
![](images/day5/day5_3_1_runLVSNetgen2.png)
![](images/day5/day5_4_1_runLVSNetgen3.png)
![](images/day5/day5_5_1_subCkt.png)
![](images/day5/day5_6_1_netgenOutput.png)
![](images/day5/day5_7_1_compOut.png)
![](images/day5/day5_8_1_netASpice.png)
![](images/day5/day5_9_1_netASpiceEdited.png)
![](images/day5/day5_10_1_LVSNetgenResult.png)
![](images/day5/day5_11_1_compOut2.png)
![](images/day5/day5_11_1_compOut3.png)



![](images/day5/day5_12_2_netAndnetBLVSRun.png)
![](images/day5/day5_12_2_netAndnetBSpiceFile.png)
![](images/day5/day5_13_2_ngspice.png)
![](images/day5/day5_14_2_LVSRunWithTest.png)
![](images/day5/day5_15_2_LVSRunWithTestResult.png)
![](images/day5/day5_16_2_compOut.png)
![](images/day5/day5_17_2_ngASpice.png)
![](images/day5/day5_17_2_ngASpiceChanged.png)
![](images/day5/day5_18_2_LVSRun.png)
![](images/day5/day5_18_2_LVSRun2.png)
![](images/day5/day5_19_2_LVSFromTerminal.png)
![](images/day5/day5_20_2_LVSFromTerminal2.png)
![](images/day5/day5_21_2_LVSFromTerminal3.png)


![](images/day5/day5_22_3_netASPICEFile.png)
![](images/day5/day5_23_3_netASPICEFile.png)
![](images/day5/day5_24_3_netASPICEFileChanged.png)
![](images/day5/day5_25_3_runLVSResult.png)
![](images/day5/day5_26_3_compOut.png)
![](images/day5/day5_27_3_netASPICEFileChanged2.png)
![](images/day5/day5_28_3_LVSRunResult.png)
![](images/day5/day5_29_3_compOut.png)
![](images/day5/day5_30_3_compOut2.png)
![](images/day5/day5_31_3_netASPICEFileChanged.png)
![](images/day5/day5_32_3_LVSRunResult.png)
![](images/day5/day5_33_3_compOut.png)
![](images/day5/day5_34_3_run_lvsShFile.png)
![](images/day5/day5_35_3_LVSRunResult.png)
![](images/day5/day5_36_3_compOut.png)


![](images/day5/day5_37_4_netASPICEFile.png)
![](images/day5/day5_37_4_netASPICEFileChanged.png)
![](images/day5/day5_39_4_LVSRun.png)
![](images/day5/day5_40_4_sky130_setupTCLEdited.png)
![](images/day5/day5_41_4_netASPICEFileCell3Edited.png)
![](images/day5/day5_42_4_compOutSecond.png)


![](images/day5/day5_43_5_runXschemAnalogProjectWrapper.png)
![](images/day5/day5_44_5_schematicAnalogProjectWrapper.png)
![](images/day5/day5_44_5_schematicAnalogProjectWrapper.png)
![](images/day5/day5_45_5_blockDiagramUserAnalogProjectWrapper.png)
![](images/day5/day5_46_5_spiceFileUserAnalogProjectWrapper.png)
![](images/day5/day5_47_5_layoutUserAnalogProjectWrapper.png)
![](images/day5/day5_48_5_layoutUserAnalogProjectWrapper2.png)
![](images/day5/day5_49_5_layoutExtractUserAnalogProjectWrapper.png)
![](images/day5/day5_50_5_layoutExtractUserAnalogProjectWrapper2.png)
![](images/day5/day5_51_5_layoutUserAnalogProjectWrapperWarning.png)
![](images/day5/day5_52_5_wrapperCompOut.png)
![](images/day5/day5_53_5_schematicAnalogWrapperTb.png)
![](images/day5/day5_54_5_schematicAnalogWrapperTb2.png)
![](images/day5/day5_55_5_runLVSWrapperShEdited.png)
![](images/day5/day5_56_5_runLVSWrapper.png)
![](images/day5/day5_57_5_runLVSPor.png)
![](images/day5/day5_58_5_runLVSPorResult.png)
![](images/day5/day5_59_5_porCompOut.png)
![](images/day5/day5_60_5_layoutExamplePor.png)
![](images/day5/day5_61_5_layoutExamplePor2.png)
![](images/day5/day5_62_5_spiceFileUserAnalogProjectWrapper.png)
![](images/day5/day5_63_5_porCompOut.png)
![](images/day5/day5_64_5_wrapperCompOut.png)
![](images/day5/day5_65_5_wrapperCompOut2.png)
![](images/day5/day5_66_5_schemeticAnalogWrapperTb.png)
![](images/day5/day5_67_5_schemeticAnalogWrapperTb2.png)
![](images/day5/day5_68_5_layoutUserAnalogProjectWrapper.png)
![](images/day5/day5_69_5_layoutUserAnalogProjectWrapper2.png)
![](images/day5/day5_70_5_layoutUserAnalogProjectWrapperPaintedm3.png)
![](images/day5/day5_71_5_runLVSWrapperResult.png)
![](images/day5/day5_72_5_schemeticAnalogWrapperTbEdited.png)
![](images/day5/day5_73_5_schemeticAnalogWrapperTbNetlistGeneration.png)
![](images/day5/day5_74_5_runLVSWrapperResult.png)


![](images/day5/day5_75_6_layoutDigitalPLLExtractionAndError.png)
![](images/day5/day5_76_6_layoutDigitalPLLError.png)
![](images/day5/day5_77_6_runLVS.png)
![](images/day5/day5_78_6_example6compOut.png)
![](images/day5/day5_79_6_verilogDigitalPLLFiller10.png)
![](images/day5/day5_80_6_spiceDigitalPLLFiller011.png)
![](images/day5/day5_81_6_layoutShowingFiller011.png)
![](images/day5/day5_82_6_layoutShowingFiller011Zoomed.png)
![](images/day5/day5_83_6_layoutShowingFiller011pushedDown.png)
![](images/day5/day5_84_6_sky130SetupTcl.png)
![](images/day5/day5_85_6_runLVSScriptEdited.png)
![](images/day5/day5_86_6_runLVSResult.png)


![](images/day5/day5_87_7_layoutMgmtProtectExtraction.png)
![](images/day5/day5_88_7_runLVSResult.png)
![](images/day5/day5_89_7_runLVSResultHighlight.png)
![](images/day5/day5_90_7_mgmtProtectVerilogLine242.png)
![](images/day5/day5_91_7_runLVSScriptEdited.png)
![](images/day5/day5_92_7_runLVSResult.png)
![](images/day5/day5_93_7_layoutMgmtProtectvssd1.png)
![](images/day5/day5_94_7_layoutMgmtProtectvssd1Connection.png)
![](images/day5/day5_95_7_mgmtProtectHVVerilogEdited.png)
![](images/day5/day5_96_7_mgmtProtectVerilog.png)


![](images/day5/day5_97_8_layoutDigitalPLLExtraction.png)
![](images/day5/day5_98_8_runLVSResult.png)
![](images/day5/day5_99_8_execise8CompOutMismatch.png)
![](images/day5/day5_100_8_execise8CompOutMismatchDiode.png)
![](images/day5/day5_101_8_execise8CompOutMismatchElement.png)
![](images/day5/day5_102_8_runLVSResult.png)
![](images/day5/day5_103_8_runLVSResult2.png)
![](images/day5/day5_104_8_exercise8CompOutDiode.png)
![](images/day5/day5_105_8_grepdiode.png)
![](images/day5/day5_106_8_layoutDiode.png)
![](images/day5/day5_107_8_layoutDiodeNodeConnection.png)
![](images/day5/day5_108_8_grepDiodeExercise8compOut.png)
![](images/day5/day5_109_8_digitalPLL_V_DiodeAdded.png)
![](images/day5/day5_110_8_runLVSResult.png)
![](images/day5/day5_111_8_exercise8CompOut.png)
![](images/day5/day5_112_8_layoutCellInstance_249_.png)
![](images/day5/day5_113_8_layoutGetNodeVertical.png)
![](images/day5/day5_114_8_layoutInstanceConnection.png)
![](images/day5/day5_115_8_layoutVia3Painted.png)
![](images/day5/day5_116_8_runLVSResult.png)
![](images/day5/day5_117_8_exercise8compOut_364_.png)
![](images/day5/day5_118_8_layoutInstance_364_.png)
![](images/day5/day5_119_8_layoutInstance_364_Zoomed.png)
![](images/day5/day5_120_8_layoutInstance_364_Clk.png)
![](images/day5/day5_121_8_layoutInstance_328_Zoomed.png)
![](images/day5/day5_122_8_layoutInstance_328_Connection.png)
![](images/day5/day5_123_8_layoutInstance_328_UnconnectedShown.png)
![](images/day5/day5_124_8_layoutInstance_328_connectedToClk.png)
![](images/day5/day5_125_8_layoutInstance_376_Zoomed.png)
![](images/day5/day5_126_8_layoutInstance_376_Connection.png)
![](images/day5/day5_127_8_layoutInstance_376_Connection2.png)
![](images/day5/day5_128_8_layoutInstance_376_Connection3.png)
![](images/day5/day5_129_8_layoutInstance_376_EraseM1.png)
![](images/day5/day5_130_8_layoutInstance_376_1.png)
![](images/day5/day5_131_8_layoutInstance_376_2.png)
![](images/day5/day5_132_8_runLVSResult.png)
![](images/day5/day5_133_8_exercise8compOut.png)
![](images/day5/day5_134_8_layoutExt_trim22.png)
![](images/day5/day5_135_8_digitalPLL_V_ext_trim22.png)
![](images/day5/day5_136_8_layoutInstance_335_.png)
![](images/day5/day5_137_8_layoutInstance_335_ConnectTo_ext_trim22.png)
![](images/day5/day5_138_8_runLVSResult.png)


![](images/day5/day5_139_9_layoutExample_porExtraction.png)
![](images/day5/day5_140_9_schemeticExamplePorTbNetlist.png)
![](images/day5/day5_141_9_runLVSResult.png)
![](images/day5/day5_142_9_exercise9CompOutError.png)
![](images/day5/day5_143_9_schematicEdit1.png)
![](images/day5/day5_144_9_schematicEdit2.png)
![](images/day5/day5_145_9_schematicEdit3.png)
![](images/day5/day5_146_9_schematicEdit4.png)
![](images/day5/day5_147_9_schematicEdit5.png)
![](images/day5/day5_148_9_schematicSymbolEdit6.png)
![](images/day5/day5_149_9_runLVSResult.png)
![](images/day5/day5_150_9_exercise9compOut)
![](images/day5/day5_151_9_CellInstance.png)
![](images/day5/day5_152_9_CellInstanceEdited.png)
![](images/day5/day5_153_9_CellInstanceEdited2.png)
![](images/day5/day5_154_9_runLVSResult.png)

##

# References

* VLSI System Design: https://www.vlsisystemdesign.com/
* OpenLANE: https://github.com/The-OpenROAD-Project/OpenLane

# Acknowledgement

* Kunal Ghosh, Co-founder, VSD Corp. Pvt. Ltd.
* Timothy Edwards, Founder Opencircuitdesign.com and SVP at Efabless.
* Google
