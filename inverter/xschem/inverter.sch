v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 1810 -1010 1810 -980 { lab=vss}
N 1810 -980 1840 -980 { lab=vss}
N 1760 -1130 1770 -1130 { lab=in}
N 1760 -1130 1760 -1040 { lab=in}
N 1760 -1040 1770 -1040 { lab=in}
N 1730 -1080 1760 -1080 { lab=in}
N 1810 -1100 1810 -1070 { lab=out}
N 1810 -1080 1920 -1080 { lab=out}
N 1810 -1190 1810 -1160 { lab=vdd}
N 1810 -1190 1840 -1190 { lab=vdd}
N 1830 -1040 1830 -980 { lab=vss}
N 1810 -1040 1830 -1040 { lab=vss}
C {sky130_fd_pr.patch} 1870 -1150 0 0 {}
C {sky130_fd_pr/nfet_01v8.sym} 1790 -1040 0 0 {name=M1
L=0.18
W=4.5
nf=3 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet3_01v8.sym} 1790 -1130 0 0 {name=M2
L=0.18
W=3
body=Vdd
nf=3
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {devices/ipin.sym} 1740 -1080 0 0 {name=p1 lab=in}
C {devices/opin.sym} 1920 -1080 0 0 {name=p2 lab=out
}
C {devices/iopin.sym} 1840 -980 0 0 {name=p3 lab=vss}
C {devices/iopin.sym} 1840 -1190 0 0 {name=p4 lab=vdd}
