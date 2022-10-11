# Physical-Verification-Using-SKY130

This repository contains all the steps performed in 5-day Advanced-Physica-Design-using-openLANE/Sky130 workshop. This workshop is focused in complete RTL to GDSII flow using openLANE flow which is open source flow. In this workshop, PICORV32A RISC V core design is used.

# Table of Contents

- [Day 1 - Exploring Open-source Tools, OpenLANE Flow and Sky130 Pdk](#day-1---exploring-open-source-tools--openlane-flow-and-sky130-pdk)
  * [Open source PDK structure](#open-source-pdk-structure)
  * [Initalizing OpenLANE](#initalizing-openlane)
  * [Design synthesis](#design-synthesis)
- [Day 2 Floorplan and Introduction to library cell](#day-2-floorplan-and-introduction-to-library-cell)
  * [Floorplan](#floorplan)
  * [Floorplan using OpenLANE](#floorplan-using-openlane)
  * [Floorplan Layout in Magic](#floorplan-layout-in-magic)
  * [Placement](#placement)
  * [Placement using OpenLANE](#placement-using-openlane)
  * [Placement Layout in Magic](#placement-layout-in-magic)
- [Day 3 Library Cell Design in Magic Layout and Ngspice characterization](#day-3-library-cell-design-in-magic-layout-and-ngspice-characterization)
  * [Magic to View CMOS Inverter Layout](#magic-to-view-cmos-inverter-layout)
  * [SPICE netlist extraction from standard cell layout](#spice-netlist-extraction-from-standard-cell-layout)
  * [NGSPICE for Transient Analysis](#ngspice-for-transient-analysis)
- [Day 4 Pre-Layout Timing Analysis and Importance of Good Clock Tree](#day-4-pre-layout-timing-analysis-and-importance-of-good-clock-tree)
  * [Magic Layout to Standard Cell LEF](#magic-layout-to-standard-cell-lef)
  * [OpenSTA for Timing Analysis](#opensta-for-timing-analysis)
  * [TritonCTS for Clock Tree Synthesis](#tritoncts-for-clock-tree-synthesis)
- [Day 5  Final steps for RTL2GDS](#day-5--final-steps-for-rtl2gds)
  * [Generation of Power Distribution network](#generation-of-power-distribution-network)
  * [Generating SPEF file](#generating-spef-file)
- [References](#references)
- [Acknowledgement](#acknowledgement)
