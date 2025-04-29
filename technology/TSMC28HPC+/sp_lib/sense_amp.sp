** Generated for: hspiceD
** Generated on: Apr 29 13:43:02 2025
** Design library name: OpenRAM_cells
** Design cell name: ADO_SA_HK
** Design view name: schematic


.TEMP 25
.OPTION
+    ARTIST=2
+    INGOLD=2
+    PARHIER=LOCAL
+    PSF=2
+    HIER_DELIM=0
.LIB "/lscratch/TSMC28HPC+/TSMC28nm/models/hspice/toplevel.l" TOP_TT

** Library name: tcbn28hpcplusbwp35p140
** Cell name: INVD0BWP35P140
** View name: schematic
.subckt INVD0BWP35P140 i zn vdd vss
xmm1 zn i vss vss nch_mac l=35e-9 w=140e-9 multi=1 nf=1 sd=100e-9 ad=10.5e-15 as=10.5e-15 pd=430e-9 ps=430e-9 nrd=2.677526 nrs=2.677526 sa=75e-9 sb=75e-9 sa1=75e-9 sa2=75e-9 sa3=75e-9 sa4=75e-9 sb1=75e-9 sb2=75e-9 sb3=75e-9 spa=100e-9 spa1=100e-9 spa2=100e-9 spa3=100e-9 sap=91.9776e-9 sapb=114.444e-9 spba=115.996e-9 spba1=117.547e-9 dfm_flag=0 spmt=1.11111e15 spomt=0 spomt1=1.11111e60 spmb=1.11111e15 spomb=0 spomb1=1.11111e60
xmm0 zn i vdd vdd pch_mac l=35e-9 w=170e-9 multi=1 nf=1 sd=100e-9 ad=12.75e-15 as=12.75e-15 pd=490e-9 ps=490e-9 nrd=1.62222 nrs=1.62222 sa=75e-9 sb=75e-9 sa1=75e-9 sa2=75e-9 sa3=75e-9 sa4=75e-9 sb1=75e-9 sb2=75e-9 sb3=75e-9 spa=100e-9 spa1=100e-9 spa2=100e-9 spa3=100e-9 sap=91.9776e-9 sapb=114.444e-9 spba=115.996e-9 spba1=117.547e-9 dfm_flag=0 spmt=1.11111e15 spomt=0 spomt1=1.11111e60 spmb=1.11111e15 spomb=0 spomb1=1.11111e60
.ends INVD0BWP35P140
** End of subcircuit definition.

** Library name: OpenRAM_cells
** Cell name: ADO_SA_HK
** View name: schematic
xm13 vop vmn vdd vdd pch_mac l=30e-9 w=680e-9 multi=1 nf=4 sd=100e-9 ad=34e-15 as=42.5e-15 pd=1.08e-6 ps=1.52e-6 nrd=477.758e-3 nrs=477.758e-3 sa=179.203e-9 sb=179.203e-9 sa1=118.069e-9 sa2=174.76e-9 sa3=310.76e-9 sa4=171.966e-9 sb1=118.069e-9 sb2=174.76e-9 sb3=310.76e-9 spa=100e-9 spa1=100e-9 spa2=100e-9 spa3=100e-9 sap=120.952e-9 sapb=140.537e-9 spba=115.715e-9 spba1=117.043e-9 dfm_flag=0 spmt=1.11111e15 spomt=0 spomt1=1.11111e60 spmb=1.11111e15 spomb=0 spomb1=1.11111e60
xm14 von vmp vdd vdd pch_mac l=30e-9 w=680e-9 multi=1 nf=4 sd=100e-9 ad=34e-15 as=42.5e-15 pd=1.08e-6 ps=1.52e-6 nrd=477.758e-3 nrs=477.758e-3 sa=179.203e-9 sb=179.203e-9 sa1=118.069e-9 sa2=174.76e-9 sa3=310.76e-9 sa4=171.966e-9 sb1=118.069e-9 sb2=174.76e-9 sb3=310.76e-9 spa=100e-9 spa1=100e-9 spa2=100e-9 spa3=100e-9 sap=120.952e-9 sapb=140.537e-9 spba=115.715e-9 spba1=117.043e-9 dfm_flag=0 spmt=1.11111e15 spomt=0 spomt1=1.11111e60 spmb=1.11111e15 spomb=0 spomb1=1.11111e60
xm5 net22 ck vdd vdd pch_mac l=30e-9 w=340e-9 multi=1 nf=2 sd=100e-9 ad=17e-15 as=25.5e-15 pd=540e-9 ps=980e-9 nrd=901.988e-3 nrs=901.988e-3 sa=112.742e-9 sb=112.742e-9 sa1=93.6047e-9 sa2=112.078e-9 sa3=163.715e-9 sa4=110.059e-9 sb1=93.6047e-9 sb2=112.078e-9 sb3=163.715e-9 spa=100e-9 spa1=100e-9 spa2=100e-9 spa3=100e-9 sap=104.359e-9 sapb=125.813e-9 spba=115.715e-9 spba1=117.043e-9 dfm_flag=0 spmt=1.11111e15 spomt=0 spomt1=1.11111e60 spmb=1.11111e15 spomb=0 spomb1=1.11111e60
xm4 vmp ck vdd vdd pch_mac l=30e-9 w=340e-9 multi=1 nf=2 sd=100e-9 ad=17e-15 as=25.5e-15 pd=540e-9 ps=980e-9 nrd=901.988e-3 nrs=901.988e-3 sa=112.742e-9 sb=112.742e-9 sa1=93.6047e-9 sa2=112.078e-9 sa3=163.715e-9 sa4=110.059e-9 sb1=93.6047e-9 sb2=112.078e-9 sb3=163.715e-9 spa=100e-9 spa1=100e-9 spa2=100e-9 spa3=100e-9 sap=104.359e-9 sapb=125.813e-9 spba=115.715e-9 spba1=117.043e-9 dfm_flag=0 spmt=1.11111e15 spomt=0 spomt1=1.11111e60 spmb=1.11111e15 spomb=0 spomb1=1.11111e60
xm3 vmp vmn vdd vdd pch_mac l=30e-9 w=680e-9 multi=1 nf=4 sd=100e-9 ad=34e-15 as=42.5e-15 pd=1.08e-6 ps=1.52e-6 nrd=477.758e-3 nrs=477.758e-3 sa=179.203e-9 sb=179.203e-9 sa1=118.069e-9 sa2=174.76e-9 sa3=310.76e-9 sa4=171.966e-9 sb1=118.069e-9 sb2=174.76e-9 sb3=310.76e-9 spa=100e-9 spa1=100e-9 spa2=100e-9 spa3=100e-9 sap=120.952e-9 sapb=140.537e-9 spba=115.715e-9 spba1=117.043e-9 dfm_flag=0 spmt=1.11111e15 spomt=0 spomt1=1.11111e60 spmb=1.11111e15 spomb=0 spomb1=1.11111e60
xm2 vmn vmp vdd vdd pch_mac l=30e-9 w=680e-9 multi=1 nf=4 sd=100e-9 ad=34e-15 as=42.5e-15 pd=1.08e-6 ps=1.52e-6 nrd=477.758e-3 nrs=477.758e-3 sa=179.203e-9 sb=179.203e-9 sa1=118.069e-9 sa2=174.76e-9 sa3=310.76e-9 sa4=171.966e-9 sb1=118.069e-9 sb2=174.76e-9 sb3=310.76e-9 spa=100e-9 spa1=100e-9 spa2=100e-9 spa3=100e-9 sap=120.952e-9 sapb=140.537e-9 spba=115.715e-9 spba1=117.043e-9 dfm_flag=0 spmt=1.11111e15 spomt=0 spomt1=1.11111e60 spmb=1.11111e15 spomb=0 spomb1=1.11111e60
xm1 net6 ck vdd vdd pch_mac l=30e-9 w=340e-9 multi=1 nf=2 sd=100e-9 ad=17e-15 as=25.5e-15 pd=540e-9 ps=980e-9 nrd=901.988e-3 nrs=901.988e-3 sa=112.742e-9 sb=112.742e-9 sa1=93.6047e-9 sa2=112.078e-9 sa3=163.715e-9 sa4=110.059e-9 sb1=93.6047e-9 sb2=112.078e-9 sb3=163.715e-9 spa=100e-9 spa1=100e-9 spa2=100e-9 spa3=100e-9 sap=104.359e-9 sapb=125.813e-9 spba=115.715e-9 spba1=117.043e-9 dfm_flag=0 spmt=1.11111e15 spomt=0 spomt1=1.11111e60 spmb=1.11111e15 spomb=0 spomb1=1.11111e60
xm0 vmn ck vdd vdd pch_mac l=30e-9 w=340e-9 multi=1 nf=2 sd=100e-9 ad=17e-15 as=25.5e-15 pd=540e-9 ps=980e-9 nrd=901.988e-3 nrs=901.988e-3 sa=112.742e-9 sb=112.742e-9 sa1=93.6047e-9 sa2=112.078e-9 sa3=163.715e-9 sa4=110.059e-9 sb1=93.6047e-9 sb2=112.078e-9 sb3=163.715e-9 spa=100e-9 spa1=100e-9 spa2=100e-9 spa3=100e-9 sap=104.359e-9 sapb=125.813e-9 spba=115.715e-9 spba1=117.043e-9 dfm_flag=0 spmt=1.11111e15 spomt=0 spomt1=1.11111e60 spmb=1.11111e15 spomb=0 spomb1=1.11111e60
xm15 vop net15 vss vss nch_mac l=30e-9 w=680e-9 multi=1 nf=4 sd=100e-9 ad=34e-15 as=42.5e-15 pd=1.08e-6 ps=1.52e-6 nrd=1.033765 nrs=1.033765 sa=179.203e-9 sb=179.203e-9 sa1=118.069e-9 sa2=174.76e-9 sa3=310.76e-9 sa4=171.966e-9 sb1=118.069e-9 sb2=174.76e-9 sb3=310.76e-9 spa=100e-9 spa1=100e-9 spa2=100e-9 spa3=100e-9 sap=120.952e-9 sapb=140.537e-9 spba=115.715e-9 spba1=117.043e-9 dfm_flag=0 spmt=1.11111e15 spomt=0 spomt1=1.11111e60 spmb=1.11111e15 spomb=0 spomb1=1.11111e60
xm12 von net11 vss vss nch_mac l=30e-9 w=680e-9 multi=1 nf=4 sd=100e-9 ad=34e-15 as=42.5e-15 pd=1.08e-6 ps=1.52e-6 nrd=1.033765 nrs=1.033765 sa=179.203e-9 sb=179.203e-9 sa1=118.069e-9 sa2=174.76e-9 sa3=310.76e-9 sa4=171.966e-9 sb1=118.069e-9 sb2=174.76e-9 sb3=310.76e-9 spa=100e-9 spa1=100e-9 spa2=100e-9 spa3=100e-9 sap=120.952e-9 sapb=140.537e-9 spba=115.715e-9 spba1=117.043e-9 dfm_flag=0 spmt=1.11111e15 spomt=0 spomt1=1.11111e60 spmb=1.11111e15 spomb=0 spomb1=1.11111e60
xm11 net1 ck vss vss nch_mac l=30e-9 w=340e-9 multi=1 nf=2 sd=100e-9 ad=17e-15 as=25.5e-15 pd=540e-9 ps=980e-9 nrd=1.771202 nrs=1.771202 sa=112.742e-9 sb=112.742e-9 sa1=93.6047e-9 sa2=112.078e-9 sa3=163.715e-9 sa4=110.059e-9 sb1=93.6047e-9 sb2=112.078e-9 sb3=163.715e-9 spa=100e-9 spa1=100e-9 spa2=100e-9 spa3=100e-9 sap=104.359e-9 sapb=125.813e-9 spba=115.715e-9 spba1=117.043e-9 dfm_flag=0 spmt=1.11111e15 spomt=0 spomt1=1.11111e60 spmb=1.11111e15 spomb=0 spomb1=1.11111e60
xm10 net1 ck vss vss nch_mac l=30e-9 w=340e-9 multi=1 nf=2 sd=100e-9 ad=17e-15 as=25.5e-15 pd=540e-9 ps=980e-9 nrd=1.771202 nrs=1.771202 sa=112.742e-9 sb=112.742e-9 sa1=93.6047e-9 sa2=112.078e-9 sa3=163.715e-9 sa4=110.059e-9 sb1=93.6047e-9 sb2=112.078e-9 sb3=163.715e-9 spa=100e-9 spa1=100e-9 spa2=100e-9 spa3=100e-9 sap=104.359e-9 sapb=125.813e-9 spba=115.715e-9 spba1=117.043e-9 dfm_flag=0 spmt=1.11111e15 spomt=0 spomt1=1.11111e60 spmb=1.11111e15 spomb=0 spomb1=1.11111e60
xm9 net6 vip net1 vss nch_mac l=30e-9 w=680e-9 multi=1 nf=4 sd=100e-9 ad=34e-15 as=42.5e-15 pd=1.08e-6 ps=1.52e-6 nrd=1.033765 nrs=1.033765 sa=179.203e-9 sb=179.203e-9 sa1=118.069e-9 sa2=174.76e-9 sa3=310.76e-9 sa4=171.966e-9 sb1=118.069e-9 sb2=174.76e-9 sb3=310.76e-9 spa=100e-9 spa1=100e-9 spa2=100e-9 spa3=100e-9 sap=120.952e-9 sapb=140.537e-9 spba=115.715e-9 spba1=117.043e-9 dfm_flag=0 spmt=1.11111e15 spomt=0 spomt1=1.11111e60 spmb=1.11111e15 spomb=0 spomb1=1.11111e60
xm8 net22 vin net1 vss nch_mac l=30e-9 w=680e-9 multi=1 nf=4 sd=100e-9 ad=34e-15 as=42.5e-15 pd=1.08e-6 ps=1.52e-6 nrd=1.033765 nrs=1.033765 sa=179.203e-9 sb=179.203e-9 sa1=118.069e-9 sa2=174.76e-9 sa3=310.76e-9 sa4=171.966e-9 sb1=118.069e-9 sb2=174.76e-9 sb3=310.76e-9 spa=100e-9 spa1=100e-9 spa2=100e-9 spa3=100e-9 sap=120.952e-9 sapb=140.537e-9 spba=115.715e-9 spba1=117.043e-9 dfm_flag=0 spmt=1.11111e15 spomt=0 spomt1=1.11111e60 spmb=1.11111e15 spomb=0 spomb1=1.11111e60
xm7 vmn vmp net6 vss nch_mac l=30e-9 w=680e-9 multi=1 nf=4 sd=100e-9 ad=34e-15 as=42.5e-15 pd=1.08e-6 ps=1.52e-6 nrd=1.033765 nrs=1.033765 sa=179.203e-9 sb=179.203e-9 sa1=118.069e-9 sa2=174.76e-9 sa3=310.76e-9 sa4=171.966e-9 sb1=118.069e-9 sb2=174.76e-9 sb3=310.76e-9 spa=100e-9 spa1=100e-9 spa2=100e-9 spa3=100e-9 sap=120.952e-9 sapb=140.537e-9 spba=115.715e-9 spba1=117.043e-9 dfm_flag=0 spmt=1.11111e15 spomt=0 spomt1=1.11111e60 spmb=1.11111e15 spomb=0 spomb1=1.11111e60
xm6 vmp vmn net22 vss nch_mac l=30e-9 w=680e-9 multi=1 nf=4 sd=100e-9 ad=34e-15 as=42.5e-15 pd=1.08e-6 ps=1.52e-6 nrd=1.033765 nrs=1.033765 sa=179.203e-9 sb=179.203e-9 sa1=118.069e-9 sa2=174.76e-9 sa3=310.76e-9 sa4=171.966e-9 sb1=118.069e-9 sb2=174.76e-9 sb3=310.76e-9 spa=100e-9 spa1=100e-9 spa2=100e-9 spa3=100e-9 sap=120.952e-9 sapb=140.537e-9 spba=115.715e-9 spba1=117.043e-9 dfm_flag=0 spmt=1.11111e15 spomt=0 spomt1=1.11111e60 spmb=1.11111e15 spomb=0 spomb1=1.11111e60
xi3 vmp net15 vdd vss INVD0BWP35P140
xi2 vmn net11 vdd vss INVD0BWP35P140
xi1 vop von vdd vss INVD0BWP35P140
xi0 von vop vdd vss INVD0BWP35P140
.END
