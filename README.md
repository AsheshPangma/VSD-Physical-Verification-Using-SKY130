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

## Software Tools and Setup

![](images/day1/day1_1_magicPrompt.png)
  
![](images/day1/day1_1_netgenPrompt.png)
  
![](images/day1/day1_1_xschemPrompt.png)
  
![](images/day1/day1_1_xschemLinkedPrompt.png)
  
![](images/day1/day1_2_ngspice.png)
  
![](images/day1/day1_3_magicBasci.png)
  
![](images/day1/day1_4_magicbasic.png)
  
![](images/day1/day1_5_magicnfet.png)
  
![](images/day1/day1_6_inverterSchematic.png)
  
![](images/day1/day1_7_inverterSymbol.png)
  
![](images/day1/day1_8_inverterSimulation.png)
  
![](images/day1/day1_9_inverterLayoutCells.png)
  
![](images/day1/day1_10_inverterLayoutExtraction.png)
  
![](images/day1/day1_10_inverterSpiceFile.png)
  
![](images/day1/day1_12_runningNetgen.png)
  
![](images/day1/day1_13_firstNetgenResult.png)
  
![](images/day1/day1_14_inverterSpiceFileExtractionWithParasitics.png)
  
![](images/day1/day1_15_inverterSpiceFileWithParasitics.png)

## DRC and LVS Overview

# Day 2 Introduction to DRC and LVS

## GDS

![](images/day2/day2_1_gdsRead.png)

![](images/day2/day2_2_loadAndGate.png)

![](images/day2/day2_3_AndGatelayout.png)

![](images/day2/day2_4_changeCIFstyle.png)

![](images/day2/day2_5_loadAndGate.png)

![](images/day2/day2_6_AndGateports.png)

![](images/day2/day2_7_spiceFilelocation.png)

![](images/day2/day2_8_spiceFile.png)

![](images/day2/day2_9_lefReadAndPort.png)

![](images/day2/day2_10_spiceReadAndPort.png)

![](images/day2/day2_11_secondLEFReadAndPorts.png)

![](images/day2/day2_12_afterSpiceReadPortAndTest.png)

![](images/day2/day2_13_loadTestinstance.png)

![](images/day2/day2_14_testCellGDSWrite.png)

![](images/day2/day2_15_gdsReadTest.png)

![](images/day2/day2_16_gdsReadTest2.png)

![](images/day2/day2_17_loadTestResult.png)

![](images/day2/day2_18_testPath.png)

![](images/day2/day2_19_GDSWriteTest.png)

![](images/day2/day2_20_GDSReadTestResult.png)




## Basic Extraction

![](images/day2/day2_21_extractionFirst.png)

![](images/day2/day2_22_spiceFilePath.png)

![](images/day2/day2_23_spiceFileFirst.png)

![](images/day2/day2_24_spiceFileSecond.png)

![](images/day2/day2_25_ExtractionLabel.png)

![](images/day2/day2_26_extractionWithPCandPR.png)

![](images/day2/day2_27_extractionPR.png)

![](images/day2/day2_28_extractionWithvalue.png)

![](images/day2/day2_29_spiceFile.png)

## DRC, LVS and XOR

![](images/day2/day2_30_drc.png)

![](images/day2/day2_31_drcCheck.png)

![](images/day2/day2_32_drcErrorTapAndGate.png)

![](images/day2/day2_32_drcErrorTapAndGate.png)

![](images/day2/day2_33_drcErrorCorrection1.png)

![](images/day2/day2_34_drcErrorCorrection2.png)

![](images/day2/day2_35_lvsSetup.png)

![](images/day2/day2_36_lvsSetup2.png)

![](images/day2/day2_37_netgenOutput.png)

![](images/day2/day2_38_xor.png)

# Day 3 Front-end and Back-end DRC


## DRC Rules

![](images/day3/day3_1_cloneDRCLabGitRepo.png)



### Width Rule and Spacing Rule

![](images/day3/day3_2_WidthAndSpacingRule.png)

### Wide Spacing Rule and Notch Rule

### Vias

![](images/day3/day3_3_via1.png)
![](images/day3/day3_4_via2.png)
![](images/day3/day3_5_via3.png)

### Minimum Area Rule and Minimum Hole Rule

![](images/day3/day3_6_minArea.png)
![](images/day3/day3_7_minArea.png)
![](images/day3/day3_8_minHoleArea.png)
![](images/day3/day3_9_minHoleArea.png)

### Wells and Deep N-well

![](images/day3/day3_10_wellError.png)
![](images/day3/day3_11_pwellError.png)
![](images/day3/day3_12_wellSolution.png)
![](images/day3/day3_13_pwellSolution.png)
![](images/day3/day3_14_deepNwellError.png)
![](images/day3/day3_15_deepNwellSolution.png)


### Derived Layers

![](images/day3/day3_16_derivedLayers.png)
![](images/day3/day3_17_derivedLayers5b.png)
![](images/day3/day3_18_derivedLayers5bError.png)
![](images/day3/day3_19_derivedLayers5c.png)
![](images/day3/day3_20_derivedLayers5cNPC.png)
![](images/day3/day3_21_derivedLayers5cNPC.png)
![](images/day3/day3_22_derivedLayers5cNPC.png)

### Paramaterized and PDK devices

![](images/day3/day3_23_paramaterizedDevices6aError.png)
![](images/day3/day3_24_paramaterizedDevices6aSolution.png)


### Angle Error and Overlap Rule

![](images/day3/day3_25_AngleError7.png)
![](images/day3/day3_26_AngleError7a.png)
![](images/day3/day3_27_AngleError7aSolution1.png)
![](images/day3/day3_28_AngleError7aSolution2.png)
![](images/day3/day3_29_AngleError7aSolution3.png)

![](images/day3/day3_30_overLapRule7d.png)
![](images/day3/day3_31_overLapRule7e.png)
![](images/day3/day3_32_overLapRule7d.png)

### Unimplemented Rules

![](images/day3/day3_33_9_LatchUpRuleError.png)
![](images/day3/day3_34_9_LatchUpRuleSolution.png)


### Latch-up and antenna Rule

![](images/day3/day3_35_10_AntennaRule.png)
![](images/day3/day3_36_10_AntennaRuleError.png)
![](images/day3/day3_37_10_AntennaRuleError2.png)
![](images/day3/day3_38_10_AntennaRuleSolution.png)
![](images/day3/day3_39_10_AntennaRuleSolution2.png)


### Density Rules

![](images/day3/day3_40_11_densityRule.png)
![](images/day3/day3_41_11_densityRuleError.png)
![](images/day3/day3_42_11_densityRuleGenerateFiller.png)
![](images/day3/day3_43_11_densityRuleGeneratedFillerPattern.png)
![](images/day3/day3_44_11_densityRuleGeneratedFillerPatternView.png)
![](images/day3/day3_45_11_densityRuleDensityView.png)
![](images/day3/day3_46_11_densityRuleFillerPatternView.png)


# Day 4 Understanding PNR and Physical Verification
## OpenLANE Flow

# Day 5  Final steps for RTL2GDS
## Simple LVS Experiment
##

# References

* VLSI System Design: https://www.vlsisystemdesign.com/
* OpenLANE: https://github.com/The-OpenROAD-Project/OpenLane

# Acknowledgement

* Kunal Ghosh, Co-founder, VSD Corp. Pvt. Ltd.
* Timothy Edwards, Founder Opencircuitdesign.com and SVP at Efabless.
* Google
