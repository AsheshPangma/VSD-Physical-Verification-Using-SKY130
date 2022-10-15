v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 1720 -1030 1780 -1030 { lab=GND}
N 1780 -1030 2120 -1030 { lab=GND}
N 2120 -1070 2120 -1030 { lab=GND}
N 1780 -1110 1780 -1090 { lab=in}
N 1780 -1110 1820 -1110 { lab=in}
N 2120 -1140 2120 -1110 { lab=#net1}
N 1720 -1140 2120 -1140 { lab=#net1}
N 1720 -1140 1720 -1090 { lab=#net1}
N 2120 -1090 2160 -1090 { lab=out}
N 1780 -1130 1800 -1130 { lab=in}
N 1780 -1130 1780 -1110 { lab=in}
C {inverter.sym} 1970 -1090 0 0 {name=x1}
C {devices/vsource.sym} 1780 -1060 0 0 {name=V1 value="PWL (0 0 20n 0 900n 1.8)"}
C {devices/vsource.sym} 1720 -1060 0 0 {name=V2 value=1.8}
C {devices/gnd.sym} 1830 -1030 0 0 {name=l1 lab=GND}
C {devices/opin.sym} 2160 -1090 0 0 {name=p1 lab=out}
C {devices/opin.sym} 1800 -1130 0 0 {name=p2 lab=in}
C {devices/code_shown.sym} 1740 -1200 0 0 {name=s1 only_toplevel=false value=".lib /usr/share/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice tt"}
C {devices/code_shown.sym} 1970 -950 0 0 {name=s2 only_toplevel=false value=".control
tran 1n 1u
plot V(in) V(out)
.endc"}
