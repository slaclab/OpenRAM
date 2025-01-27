**************************************************
* OpenRAM generated memory.
* Words: 16
* Data bits: 2
* Banks: 1
* Column mux: 1:1
* Trimmed: False
* LVS: False
**************************************************

* spice ptx X{0} {1} sky130_fd_pr__pfet_01v8 m=6 w=2.0 l=0.15 pd=4.30 ps=4.30 as=0.75u ad=0.75u

* spice ptx X{0} {1} sky130_fd_pr__nfet_01v8 m=6 w=2.0 l=0.15 pd=4.30 ps=4.30 as=0.75u ad=0.75u

.SUBCKT sram_16x2_pinv_8
+ A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* size: 10
Xpinv_pmos Z A vdd vdd sky130_fd_pr__pfet_01v8 m=6 w=2.0 l=0.15 pd=4.30 ps=4.30 as=0.75u ad=0.75u
Xpinv_nmos Z A gnd gnd sky130_fd_pr__nfet_01v8 m=6 w=2.0 l=0.15 pd=4.30 ps=4.30 as=0.75u ad=0.75u
.ENDS sram_16x2_pinv_8

.SUBCKT sram_16x2_pdriver_2
+ A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* sizes: [10]
Xbuf_inv1
+ A Z vdd gnd
+ sram_16x2_pinv_8
.ENDS sram_16x2_pdriver_2

* spice ptx X{0} {1} sky130_fd_pr__nfet_01v8 m=1 w=0.74 l=0.15 pd=1.78 ps=1.78 as=0.28u ad=0.28u

* spice ptx X{0} {1} sky130_fd_pr__nfet_01v8 m=1 w=0.74 l=0.15 pd=1.78 ps=1.78 as=0.28u ad=0.28u

* spice ptx X{0} {1} sky130_fd_pr__pfet_01v8 m=1 w=1.12 l=0.15 pd=2.54 ps=2.54 as=0.42u ad=0.42u

* spice ptx X{0} {1} sky130_fd_pr__nfet_01v8 m=1 w=0.74 l=0.15 pd=1.78 ps=1.78 as=0.28u ad=0.28u

.SUBCKT sram_16x2_pnand3
+ A B C Z vdd gnd
* INPUT : A 
* INPUT : B 
* INPUT : C 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* size: 1
Xpnand3_pmos1 vdd A Z vdd sky130_fd_pr__pfet_01v8 m=1 w=1.12 l=0.15 pd=2.54 ps=2.54 as=0.42u ad=0.42u
Xpnand3_pmos2 Z B vdd vdd sky130_fd_pr__pfet_01v8 m=1 w=1.12 l=0.15 pd=2.54 ps=2.54 as=0.42u ad=0.42u
Xpnand3_pmos3 Z C vdd vdd sky130_fd_pr__pfet_01v8 m=1 w=1.12 l=0.15 pd=2.54 ps=2.54 as=0.42u ad=0.42u
Xpnand3_nmos1 Z C net1 gnd sky130_fd_pr__nfet_01v8 m=1 w=0.74 l=0.15 pd=1.78 ps=1.78 as=0.28u ad=0.28u
Xpnand3_nmos2 net1 B net2 gnd sky130_fd_pr__nfet_01v8 m=1 w=0.74 l=0.15 pd=1.78 ps=1.78 as=0.28u ad=0.28u
Xpnand3_nmos3 net2 A gnd gnd sky130_fd_pr__nfet_01v8 m=1 w=0.74 l=0.15 pd=1.78 ps=1.78 as=0.28u ad=0.28u
.ENDS sram_16x2_pnand3

.SUBCKT sram_16x2_pand3
+ A B C Z vdd gnd
* INPUT : A 
* INPUT : B 
* INPUT : C 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* size: 10
Xpand3_nand
+ A B C zb_int vdd gnd
+ sram_16x2_pnand3
Xpand3_inv
+ zb_int Z vdd gnd
+ sram_16x2_pdriver_2
.ENDS sram_16x2_pand3

* spice ptx X{0} {1} sky130_fd_pr__pfet_01v8 m=9 w=2.0 l=0.15 pd=4.30 ps=4.30 as=0.75u ad=0.75u

* spice ptx X{0} {1} sky130_fd_pr__nfet_01v8 m=9 w=2.0 l=0.15 pd=4.30 ps=4.30 as=0.75u ad=0.75u

.SUBCKT sram_16x2_pinv_7
+ A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* size: 15
Xpinv_pmos Z A vdd vdd sky130_fd_pr__pfet_01v8 m=9 w=2.0 l=0.15 pd=4.30 ps=4.30 as=0.75u ad=0.75u
Xpinv_nmos Z A gnd gnd sky130_fd_pr__nfet_01v8 m=9 w=2.0 l=0.15 pd=4.30 ps=4.30 as=0.75u ad=0.75u
.ENDS sram_16x2_pinv_7

* spice ptx X{0} {1} sky130_fd_pr__pfet_01v8 m=3 w=2.0 l=0.15 pd=4.30 ps=4.30 as=0.75u ad=0.75u

* spice ptx X{0} {1} sky130_fd_pr__nfet_01v8 m=3 w=2.0 l=0.15 pd=4.30 ps=4.30 as=0.75u ad=0.75u

.SUBCKT sram_16x2_pinv_6
+ A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* size: 5
Xpinv_pmos Z A vdd vdd sky130_fd_pr__pfet_01v8 m=3 w=2.0 l=0.15 pd=4.30 ps=4.30 as=0.75u ad=0.75u
Xpinv_nmos Z A gnd gnd sky130_fd_pr__nfet_01v8 m=3 w=2.0 l=0.15 pd=4.30 ps=4.30 as=0.75u ad=0.75u
.ENDS sram_16x2_pinv_6

* spice ptx X{0} {1} sky130_fd_pr__nfet_01v8 m=2 w=0.74 l=0.15 pd=1.78 ps=1.78 as=0.28u ad=0.28u

* spice ptx X{0} {1} sky130_fd_pr__pfet_01v8 m=2 w=1.26 l=0.15 pd=2.82 ps=2.82 as=0.47u ad=0.47u

.SUBCKT sram_16x2_pinv_5
+ A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* size: 2
Xpinv_pmos Z A vdd vdd sky130_fd_pr__pfet_01v8 m=2 w=1.26 l=0.15 pd=2.82 ps=2.82 as=0.47u ad=0.47u
Xpinv_nmos Z A gnd gnd sky130_fd_pr__nfet_01v8 m=2 w=0.74 l=0.15 pd=1.78 ps=1.78 as=0.28u ad=0.28u
.ENDS sram_16x2_pinv_5

* spice ptx X{0} {1} sky130_fd_pr__pfet_01v8 m=1 w=1.12 l=0.15 pd=2.54 ps=2.54 as=0.42u ad=0.42u

* spice ptx X{0} {1} sky130_fd_pr__nfet_01v8 m=1 w=0.36 l=0.15 pd=1.02 ps=1.02 as=0.14u ad=0.14u

.SUBCKT sram_16x2_pinv_4
+ A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* size: 1
Xpinv_pmos Z A vdd vdd sky130_fd_pr__pfet_01v8 m=1 w=1.12 l=0.15 pd=2.54 ps=2.54 as=0.42u ad=0.42u
Xpinv_nmos Z A gnd gnd sky130_fd_pr__nfet_01v8 m=1 w=0.36 l=0.15 pd=1.02 ps=1.02 as=0.14u ad=0.14u
.ENDS sram_16x2_pinv_4

.SUBCKT sram_16x2_pdriver_0
+ A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* sizes: [1, 2, 5, 15]
Xbuf_inv1
+ A Zb1_int vdd gnd
+ sram_16x2_pinv_4
Xbuf_inv2
+ Zb1_int Zb2_int vdd gnd
+ sram_16x2_pinv_5
Xbuf_inv3
+ Zb2_int Zb3_int vdd gnd
+ sram_16x2_pinv_6
Xbuf_inv4
+ Zb3_int Z vdd gnd
+ sram_16x2_pinv_7
.ENDS sram_16x2_pdriver_0

.SUBCKT sram_16x2_pnand2_0
+ A B Z vdd gnd
* INPUT : A 
* INPUT : B 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* size: 1
Xpnand2_pmos1 vdd A Z vdd sky130_fd_pr__pfet_01v8 m=1 w=1.12 l=0.15 pd=2.54 ps=2.54 as=0.42u ad=0.42u
Xpnand2_pmos2 Z B vdd vdd sky130_fd_pr__pfet_01v8 m=1 w=1.12 l=0.15 pd=2.54 ps=2.54 as=0.42u ad=0.42u
Xpnand2_nmos1 Z B net1 gnd sky130_fd_pr__nfet_01v8 m=1 w=0.74 l=0.15 pd=1.78 ps=1.78 as=0.28u ad=0.28u
Xpnand2_nmos2 net1 A gnd gnd sky130_fd_pr__nfet_01v8 m=1 w=0.74 l=0.15 pd=1.78 ps=1.78 as=0.28u ad=0.28u
.ENDS sram_16x2_pnand2_0

* spice ptx X{0} {1} sky130_fd_pr__nfet_01v8 m=3 w=1.68 l=0.15 pd=3.66 ps=3.66 as=0.63u ad=0.63u

* spice ptx X{0} {1} sky130_fd_pr__pfet_01v8 m=3 w=1.68 l=0.15 pd=3.66 ps=3.66 as=0.63u ad=0.63u

.SUBCKT sram_16x2_pinv_0
+ A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* size: 4
Xpinv_pmos Z A vdd vdd sky130_fd_pr__pfet_01v8 m=3 w=1.68 l=0.15 pd=3.66 ps=3.66 as=0.63u ad=0.63u
Xpinv_nmos Z A gnd gnd sky130_fd_pr__nfet_01v8 m=3 w=1.68 l=0.15 pd=3.66 ps=3.66 as=0.63u ad=0.63u
.ENDS sram_16x2_pinv_0

.SUBCKT sram_16x2_pinv
+ A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* size: 2
Xpinv_pmos Z A vdd vdd sky130_fd_pr__pfet_01v8 m=2 w=1.26 l=0.15 pd=2.82 ps=2.82 as=0.47u ad=0.47u
Xpinv_nmos Z A gnd gnd sky130_fd_pr__nfet_01v8 m=2 w=0.74 l=0.15 pd=1.78 ps=1.78 as=0.28u ad=0.28u
.ENDS sram_16x2_pinv
* Copyright 2020 The SkyWater PDK Authors
*
* Licensed under the Apache License, Version 2.0 (the "License");
* you may not use this file except in compliance with the License.
* You may obtain a copy of the License at
*
*     https://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS,
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
* See the License for the specific language governing permissions and
* limitations under the License.
*
* SPDX-License-Identifier: Apache-2.0

* SPICE3 file created from sky130_fd_bd_sram__openram_dff.ext - technology: EFS8A

.subckt sky130_fd_bd_sram__openram_dff D Q CLK VDD GND
X1000 a_511_725# a_n8_115# VDD VDD sky130_fd_pr__pfet_01v8 W=3 L=0.15
X1001 a_353_115# CLK a_11_624# GND sky130_fd_pr__nfet_01v8 W=1 L=0.15
X1002 a_353_725# a_203_89# a_11_624# VDD sky130_fd_pr__pfet_01v8 W=3 L=0.15
X1003 a_11_624# a_203_89# a_161_115# GND sky130_fd_pr__nfet_01v8 W=1 L=0.15
X1004 a_11_624# CLK a_161_725# VDD sky130_fd_pr__pfet_01v8 W=3 L=0.15
X1005 GND Q a_703_115# GND sky130_fd_pr__nfet_01v8 W=1 L=0.15
X1006 VDD Q a_703_725# VDD sky130_fd_pr__pfet_01v8 W=3 L=0.15
X1007 a_203_89# CLK GND GND sky130_fd_pr__nfet_01v8 W=1 L=0.15
X1008 a_203_89# CLK VDD VDD sky130_fd_pr__pfet_01v8 W=3 L=0.15
X1009 a_161_115# D GND GND sky130_fd_pr__nfet_01v8 W=1 L=0.15
X1010 a_161_725# D VDD VDD sky130_fd_pr__pfet_01v8 W=3 L=0.15
X1011 GND a_11_624# a_n8_115# GND sky130_fd_pr__nfet_01v8 W=1 L=0.15
X1012 a_703_115# a_203_89# ON GND sky130_fd_pr__nfet_01v8 W=1 L=0.15
X1013 VDD a_11_624# a_n8_115# VDD sky130_fd_pr__pfet_01v8 W=3 L=0.15
X1014 a_703_725# CLK ON VDD sky130_fd_pr__pfet_01v8 W=3 L=0.15
X1015 Q ON VDD VDD sky130_fd_pr__pfet_01v8 W=3 L=0.15
X1016 Q ON GND GND sky130_fd_pr__nfet_01v8 W=1 L=0.15
X1017 ON a_203_89# a_511_725# VDD sky130_fd_pr__pfet_01v8 W=3 L=0.15
X1018 ON CLK a_511_115# GND sky130_fd_pr__nfet_01v8 W=1 L=0.15
X1019 GND a_n8_115# a_353_115# GND sky130_fd_pr__nfet_01v8 W=1 L=0.15
X1020 VDD a_n8_115# a_353_725# VDD sky130_fd_pr__pfet_01v8 W=3 L=0.15
X1021 a_511_115# a_n8_115# GND GND sky130_fd_pr__nfet_01v8 W=1 L=0.15
.ends

.SUBCKT sram_16x2_dff_buf_0
+ D Q Qb clk vdd gnd
* INPUT : D 
* OUTPUT: Q 
* OUTPUT: Qb 
* INPUT : clk 
* POWER : vdd 
* GROUND: gnd 
* inv1: 2 inv2: 4
Xdff_buf_dff
+ D qint clk vdd gnd
+ sky130_fd_bd_sram__openram_dff
Xdff_buf_inv1
+ qint Qb vdd gnd
+ sram_16x2_pinv
Xdff_buf_inv2
+ Qb Q vdd gnd
+ sram_16x2_pinv_0
.ENDS sram_16x2_dff_buf_0

.SUBCKT sram_16x2_dff_buf_array
+ din_0 din_1 dout_0 dout_bar_0 dout_1 dout_bar_1 clk vdd gnd
* INPUT : din_0 
* INPUT : din_1 
* OUTPUT: dout_0 
* OUTPUT: dout_bar_0 
* OUTPUT: dout_1 
* OUTPUT: dout_bar_1 
* INPUT : clk 
* POWER : vdd 
* GROUND: gnd 
* rows: 2 cols: 1
* inv1: 2 inv2: 4
Xdff_r0_c0
+ din_0 dout_0 dout_bar_0 clk vdd gnd
+ sram_16x2_dff_buf_0
Xdff_r1_c0
+ din_1 dout_1 dout_bar_1 clk vdd gnd
+ sram_16x2_dff_buf_0
.ENDS sram_16x2_dff_buf_array

.SUBCKT sram_16x2_pdriver_3
+ A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* sizes: [2]
Xbuf_inv1
+ A Z vdd gnd
+ sram_16x2_pinv_5
.ENDS sram_16x2_pdriver_3

.SUBCKT sram_16x2_pand3_0
+ A B C Z vdd gnd
* INPUT : A 
* INPUT : B 
* INPUT : C 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* size: 2
Xpand3_nand
+ A B C zb_int vdd gnd
+ sram_16x2_pnand3
Xpand3_inv
+ zb_int Z vdd gnd
+ sram_16x2_pdriver_3
.ENDS sram_16x2_pand3_0

.SUBCKT sram_16x2_pdriver_4
+ A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* sizes: [1, 1]
Xbuf_inv1
+ A Zb1_int vdd gnd
+ sram_16x2_pinv_4
Xbuf_inv2
+ Zb1_int Z vdd gnd
+ sram_16x2_pinv_4
.ENDS sram_16x2_pdriver_4

.SUBCKT sram_16x2_pinv_2
+ A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* size: 1
Xpinv_pmos Z A vdd vdd sky130_fd_pr__pfet_01v8 m=1 w=1.12 l=0.15 pd=2.54 ps=2.54 as=0.42u ad=0.42u
Xpinv_nmos Z A gnd gnd sky130_fd_pr__nfet_01v8 m=1 w=0.36 l=0.15 pd=1.02 ps=1.02 as=0.14u ad=0.14u
.ENDS sram_16x2_pinv_2

.SUBCKT sram_16x2_pinv_9
+ A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* size: 1
Xpinv_pmos Z A vdd vdd sky130_fd_pr__pfet_01v8 m=1 w=1.12 l=0.15 pd=2.54 ps=2.54 as=0.42u ad=0.42u
Xpinv_nmos Z A gnd gnd sky130_fd_pr__nfet_01v8 m=1 w=0.36 l=0.15 pd=1.02 ps=1.02 as=0.14u ad=0.14u
.ENDS sram_16x2_pinv_9

.SUBCKT sram_16x2_delay_chain
+ in out vdd gnd
* INPUT : in 
* OUTPUT: out 
* POWER : vdd 
* GROUND: gnd 
* fanouts: [4, 4, 4, 4, 4, 4, 4, 4, 4]
Xdinv0
+ in dout_1 vdd gnd
+ sram_16x2_pinv_9
Xdload_0_0
+ dout_1 n_0_0 vdd gnd
+ sram_16x2_pinv_9
Xdload_0_1
+ dout_1 n_0_1 vdd gnd
+ sram_16x2_pinv_9
Xdload_0_2
+ dout_1 n_0_2 vdd gnd
+ sram_16x2_pinv_9
Xdload_0_3
+ dout_1 n_0_3 vdd gnd
+ sram_16x2_pinv_9
Xdinv1
+ dout_1 dout_2 vdd gnd
+ sram_16x2_pinv_9
Xdload_1_0
+ dout_2 n_1_0 vdd gnd
+ sram_16x2_pinv_9
Xdload_1_1
+ dout_2 n_1_1 vdd gnd
+ sram_16x2_pinv_9
Xdload_1_2
+ dout_2 n_1_2 vdd gnd
+ sram_16x2_pinv_9
Xdload_1_3
+ dout_2 n_1_3 vdd gnd
+ sram_16x2_pinv_9
Xdinv2
+ dout_2 dout_3 vdd gnd
+ sram_16x2_pinv_9
Xdload_2_0
+ dout_3 n_2_0 vdd gnd
+ sram_16x2_pinv_9
Xdload_2_1
+ dout_3 n_2_1 vdd gnd
+ sram_16x2_pinv_9
Xdload_2_2
+ dout_3 n_2_2 vdd gnd
+ sram_16x2_pinv_9
Xdload_2_3
+ dout_3 n_2_3 vdd gnd
+ sram_16x2_pinv_9
Xdinv3
+ dout_3 dout_4 vdd gnd
+ sram_16x2_pinv_9
Xdload_3_0
+ dout_4 n_3_0 vdd gnd
+ sram_16x2_pinv_9
Xdload_3_1
+ dout_4 n_3_1 vdd gnd
+ sram_16x2_pinv_9
Xdload_3_2
+ dout_4 n_3_2 vdd gnd
+ sram_16x2_pinv_9
Xdload_3_3
+ dout_4 n_3_3 vdd gnd
+ sram_16x2_pinv_9
Xdinv4
+ dout_4 dout_5 vdd gnd
+ sram_16x2_pinv_9
Xdload_4_0
+ dout_5 n_4_0 vdd gnd
+ sram_16x2_pinv_9
Xdload_4_1
+ dout_5 n_4_1 vdd gnd
+ sram_16x2_pinv_9
Xdload_4_2
+ dout_5 n_4_2 vdd gnd
+ sram_16x2_pinv_9
Xdload_4_3
+ dout_5 n_4_3 vdd gnd
+ sram_16x2_pinv_9
Xdinv5
+ dout_5 dout_6 vdd gnd
+ sram_16x2_pinv_9
Xdload_5_0
+ dout_6 n_5_0 vdd gnd
+ sram_16x2_pinv_9
Xdload_5_1
+ dout_6 n_5_1 vdd gnd
+ sram_16x2_pinv_9
Xdload_5_2
+ dout_6 n_5_2 vdd gnd
+ sram_16x2_pinv_9
Xdload_5_3
+ dout_6 n_5_3 vdd gnd
+ sram_16x2_pinv_9
Xdinv6
+ dout_6 dout_7 vdd gnd
+ sram_16x2_pinv_9
Xdload_6_0
+ dout_7 n_6_0 vdd gnd
+ sram_16x2_pinv_9
Xdload_6_1
+ dout_7 n_6_1 vdd gnd
+ sram_16x2_pinv_9
Xdload_6_2
+ dout_7 n_6_2 vdd gnd
+ sram_16x2_pinv_9
Xdload_6_3
+ dout_7 n_6_3 vdd gnd
+ sram_16x2_pinv_9
Xdinv7
+ dout_7 dout_8 vdd gnd
+ sram_16x2_pinv_9
Xdload_7_0
+ dout_8 n_7_0 vdd gnd
+ sram_16x2_pinv_9
Xdload_7_1
+ dout_8 n_7_1 vdd gnd
+ sram_16x2_pinv_9
Xdload_7_2
+ dout_8 n_7_2 vdd gnd
+ sram_16x2_pinv_9
Xdload_7_3
+ dout_8 n_7_3 vdd gnd
+ sram_16x2_pinv_9
Xdinv8
+ dout_8 out vdd gnd
+ sram_16x2_pinv_9
Xdload_8_0
+ out n_8_0 vdd gnd
+ sram_16x2_pinv_9
Xdload_8_1
+ out n_8_1 vdd gnd
+ sram_16x2_pinv_9
Xdload_8_2
+ out n_8_2 vdd gnd
+ sram_16x2_pinv_9
Xdload_8_3
+ out n_8_3 vdd gnd
+ sram_16x2_pinv_9
.ENDS sram_16x2_delay_chain

* spice ptx X{0} {1} sky130_fd_pr__nfet_01v8 m=7 w=1.68 l=0.15 pd=3.66 ps=3.66 as=0.63u ad=0.63u

* spice ptx X{0} {1} sky130_fd_pr__pfet_01v8 m=7 w=2.0 l=0.15 pd=4.30 ps=4.30 as=0.75u ad=0.75u

.SUBCKT sram_16x2_pinv_1
+ A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* size: 12
Xpinv_pmos Z A vdd vdd sky130_fd_pr__pfet_01v8 m=7 w=2.0 l=0.15 pd=4.30 ps=4.30 as=0.75u ad=0.75u
Xpinv_nmos Z A gnd gnd sky130_fd_pr__nfet_01v8 m=7 w=1.68 l=0.15 pd=3.66 ps=3.66 as=0.63u ad=0.63u
.ENDS sram_16x2_pinv_1

.SUBCKT sram_16x2_pdriver
+ A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* sizes: [12]
Xbuf_inv1
+ A Z vdd gnd
+ sram_16x2_pinv_1
.ENDS sram_16x2_pdriver

.SUBCKT sram_16x2_pnand2
+ A B Z vdd gnd
* INPUT : A 
* INPUT : B 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* size: 1
Xpnand2_pmos1 vdd A Z vdd sky130_fd_pr__pfet_01v8 m=1 w=1.12 l=0.15 pd=2.54 ps=2.54 as=0.42u ad=0.42u
Xpnand2_pmos2 Z B vdd vdd sky130_fd_pr__pfet_01v8 m=1 w=1.12 l=0.15 pd=2.54 ps=2.54 as=0.42u ad=0.42u
Xpnand2_nmos1 Z B net1 gnd sky130_fd_pr__nfet_01v8 m=1 w=0.74 l=0.15 pd=1.78 ps=1.78 as=0.28u ad=0.28u
Xpnand2_nmos2 net1 A gnd gnd sky130_fd_pr__nfet_01v8 m=1 w=0.74 l=0.15 pd=1.78 ps=1.78 as=0.28u ad=0.28u
.ENDS sram_16x2_pnand2

.SUBCKT sram_16x2_pand2
+ A B Z vdd gnd
* INPUT : A 
* INPUT : B 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* size: 12
Xpand2_nand
+ A B zb_int vdd gnd
+ sram_16x2_pnand2
Xpand2_inv
+ zb_int Z vdd gnd
+ sram_16x2_pdriver
.ENDS sram_16x2_pand2

.SUBCKT sram_16x2_pdriver_1
+ A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* sizes: [1, 5]
Xbuf_inv1
+ A Zb1_int vdd gnd
+ sram_16x2_pinv_4
Xbuf_inv2
+ Zb1_int Z vdd gnd
+ sram_16x2_pinv_6
.ENDS sram_16x2_pdriver_1

.SUBCKT sram_16x2_control_logic_rw
+ csb web clk rbl_bl s_en w_en p_en_bar wl_en clk_buf vdd gnd
* INPUT : csb 
* INPUT : web 
* INPUT : clk 
* INPUT : rbl_bl 
* OUTPUT: s_en 
* OUTPUT: w_en 
* OUTPUT: p_en_bar 
* OUTPUT: wl_en 
* OUTPUT: clk_buf 
* POWER : vdd 
* GROUND: gnd 
* num_rows: 16
* words_per_row: 1
* word_size 2
Xctrl_dffs
+ csb web cs_bar cs we_bar we clk_buf vdd gnd
+ sram_16x2_dff_buf_array
Xclkbuf
+ clk clk_buf vdd gnd
+ sram_16x2_pdriver_0
Xinv_clk_bar
+ clk_buf clk_bar vdd gnd
+ sram_16x2_pinv_2
Xand2_gated_clk_bar
+ clk_bar cs gated_clk_bar vdd gnd
+ sram_16x2_pand2
Xand2_gated_clk_buf
+ clk_buf cs gated_clk_buf vdd gnd
+ sram_16x2_pand2
Xbuf_wl_en
+ gated_clk_bar wl_en vdd gnd
+ sram_16x2_pdriver_1
Xrbl_bl_delay_inv
+ rbl_bl_delay rbl_bl_delay_bar vdd gnd
+ sram_16x2_pinv_2
Xw_en_and
+ we rbl_bl_delay_bar gated_clk_bar w_en vdd gnd
+ sram_16x2_pand3
Xbuf_s_en_and
+ rbl_bl_delay gated_clk_bar we_bar s_en vdd gnd
+ sram_16x2_pand3_0
Xdelay_chain
+ rbl_bl rbl_bl_delay vdd gnd
+ sram_16x2_delay_chain
Xnand_p_en_bar
+ gated_clk_buf rbl_bl_delay p_en_bar_unbuf vdd gnd
+ sram_16x2_pnand2_0
Xbuf_p_en_bar
+ p_en_bar_unbuf p_en_bar vdd gnd
+ sram_16x2_pdriver_4
.ENDS sram_16x2_control_logic_rw

.SUBCKT sram_16x2_data_dff
+ din_0 din_1 dout_0 dout_1 clk vdd gnd
* INPUT : din_0 
* INPUT : din_1 
* OUTPUT: dout_0 
* OUTPUT: dout_1 
* INPUT : clk 
* POWER : vdd 
* GROUND: gnd 
* rows: 1 cols: 2
Xdff_r0_c0
+ din_0 dout_0 CLK VDD GND
+ sky130_fd_bd_sram__openram_dff
Xdff_r0_c1
+ din_1 dout_1 CLK VDD GND
+ sky130_fd_bd_sram__openram_dff
.ENDS sram_16x2_data_dff

* spice ptx X{0} {1} sky130_fd_pr__pfet_01v8 m=1 w=0.55 l=0.15 pd=1.40 ps=1.40 as=0.21u ad=0.21u

.SUBCKT sram_16x2_precharge_1
+ bl br en_bar vdd
* OUTPUT: bl 
* OUTPUT: br 
* INPUT : en_bar 
* POWER : vdd 
Xlower_pmos bl en_bar br vdd sky130_fd_pr__pfet_01v8 m=1 w=0.55 l=0.15 pd=1.40 ps=1.40 as=0.21u ad=0.21u
Xupper_pmos1 bl en_bar vdd vdd sky130_fd_pr__pfet_01v8 m=1 w=0.55 l=0.15 pd=1.40 ps=1.40 as=0.21u ad=0.21u
Xupper_pmos2 br en_bar vdd vdd sky130_fd_pr__pfet_01v8 m=1 w=0.55 l=0.15 pd=1.40 ps=1.40 as=0.21u ad=0.21u
.ENDS sram_16x2_precharge_1

.SUBCKT sram_16x2_precharge_array_0
+ bl_0 br_0 bl_1 br_1 bl_2 br_2 en_bar vdd
* OUTPUT: bl_0 
* OUTPUT: br_0 
* OUTPUT: bl_1 
* OUTPUT: br_1 
* OUTPUT: bl_2 
* OUTPUT: br_2 
* INPUT : en_bar 
* POWER : vdd 
* cols: 3 size: 1 bl: bl1 br: br1
Xpre_column_0
+ bl_0 br_0 en_bar vdd
+ sram_16x2_precharge_1
Xpre_column_1
+ bl_1 br_1 en_bar vdd
+ sram_16x2_precharge_1
Xpre_column_2
+ bl_2 br_2 en_bar vdd
+ sram_16x2_precharge_1
.ENDS sram_16x2_precharge_array_0
* Copyright 2020 The SkyWater PDK Authors
*
* Licensed under the Apache License, Version 2.0 (the "License");
* you may not use this file except in compliance with the License.
* You may obtain a copy of the License at
*
*     https://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS,
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
* See the License for the specific language governing permissions and
* limitations under the License.
*
* SPDX-License-Identifier: Apache-2.0

*********************** "sky130_fd_bd_sram__openram_sense_amp" ******************************

.SUBCKT sky130_fd_bd_sram__openram_sense_amp BL BR DOUT EN VDD GND
X1000 GND EN a_56_432# GND sky130_fd_pr__nfet_01v8 W=0.65 L=0.15
X1001 a_56_432# dint_bar dint GND sky130_fd_pr__nfet_01v8 W=0.65 L=0.15
X1002 dint_bar dint a_56_432# GND sky130_fd_pr__nfet_01v8 W=0.65 L=0.15

X1003 VDD dint_bar dint VDD sky130_fd_pr__pfet_01v8 W=1.26 L=0.15
X1004 dint_bar dint VDD VDD sky130_fd_pr__pfet_01v8 W=1.26 L=0.15

X1005 BL EN dint VDD sky130_fd_pr__pfet_01v8 W=2 L=0.15
X1006 dint_bar EN BR VDD sky130_fd_pr__pfet_01v8 W=2 L=0.15

X1007 VDD dint_bar DOUT VDD sky130_fd_pr__pfet_01v8 W=1.26 L=0.15
X1008 DOUT dint_bar GND GND sky130_fd_pr__nfet_01v8 W=0.65 L=0.15

.ENDS sky130_fd_bd_sram__openram_sense_amp

.SUBCKT sram_16x2_sense_amp_array
+ data_0 bl_0 br_0 data_1 bl_1 br_1 en vdd gnd
* OUTPUT: data_0 
* INPUT : bl_0 
* INPUT : br_0 
* OUTPUT: data_1 
* INPUT : bl_1 
* INPUT : br_1 
* INPUT : en 
* POWER : vdd 
* GROUND: gnd 
* word_size 2
* words_per_row: 1
Xsa_d0
+ bl_0 br_0 data_0 en vdd gnd
+ sky130_fd_bd_sram__openram_sense_amp
Xsa_d1
+ bl_1 br_1 data_1 en vdd gnd
+ sky130_fd_bd_sram__openram_sense_amp
.ENDS sram_16x2_sense_amp_array
* Copyright 2020 The SkyWater PDK Authors
*
* Licensed under the Apache License, Version 2.0 (the "License");
* you may not use this file except in compliance with the License.
* You may obtain a copy of the License at
*
*     https://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS,
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
* See the License for the specific language governing permissions and
* limitations under the License.
*
* SPDX-License-Identifier: Apache-2.0

*********************** "sky130_fd_bd_sram__openram_write_driver" ******************************

.SUBCKT sky130_fd_bd_sram__openram_write_driver DIN BL BR EN VDD GND

**** Inverter to conver Data_in to data_in_bar ******
* din_bar = inv(DIN)
X_1 din_bar DIN GND GND sky130_fd_pr__nfet_01v8 W=0.36 L=0.15
X_2 din_bar DIN VDD VDD sky130_fd_pr__pfet_01v8 W=0.55 L=0.15

**** 2input nand gate follwed by inverter to drive BL ******
* din_bar_gated = nand(EN, DIN)
X_3 din_bar_gated EN net_7 GND sky130_fd_pr__nfet_01v8 W=0.55 L=0.15
X_4 net_7 DIN GND GND sky130_fd_pr__nfet_01v8 W=0.55 L=0.15
X_5 din_bar_gated EN VDD VDD sky130_fd_pr__pfet_01v8 W=0.55 L=0.15
X_6 din_bar_gated DIN VDD VDD sky130_fd_pr__pfet_01v8 W=0.55 L=0.15
* din_bar_gated_bar = inv(din_bar_gated)
X_7 din_bar_gated_bar din_bar_gated VDD VDD sky130_fd_pr__pfet_01v8 W=0.55 L=0.15
X_8 din_bar_gated_bar din_bar_gated GND GND sky130_fd_pr__nfet_01v8 W=0.36 L=0.15

**** 2input nand gate follwed by inverter to drive BR******
* din_gated = nand(EN, din_bar)
X_9 din_gated EN VDD VDD sky130_fd_pr__pfet_01v8 W=0.55 L=0.15
X_10 din_gated EN net_8 GND sky130_fd_pr__nfet_01v8 W=0.55 L=0.15
X_11 net_8 din_bar GND GND sky130_fd_pr__nfet_01v8 W=0.55 L=0.15
X_12 din_gated din_bar VDD VDD sky130_fd_pr__pfet_01v8 W=0.55 L=0.15
* din_gated_bar = inv(din_gated)
X_13 din_gated_bar din_gated VDD VDD sky130_fd_pr__pfet_01v8 W=0.55 L=0.15
X_14 din_gated_bar din_gated GND GND sky130_fd_pr__nfet_01v8 W=0.36 L=0.15

************************************************
* pull down with EN enable
X_15 BL din_gated_bar GND GND sky130_fd_pr__nfet_01v8 W=1 L=0.15
X_16 BR din_bar_gated_bar GND GND sky130_fd_pr__nfet_01v8 W=1 L=0.15

.ENDS sky130_fd_bd_sram__openram_write_driver

.SUBCKT sram_16x2_write_driver_array
+ data_0 data_1 bl_0 br_0 bl_1 br_1 en vdd gnd
* INPUT : data_0 
* INPUT : data_1 
* OUTPUT: bl_0 
* OUTPUT: br_0 
* OUTPUT: bl_1 
* OUTPUT: br_1 
* INPUT : en 
* POWER : vdd 
* GROUND: gnd 
* columns: 2
* word_size 2
Xwrite_driver0
+ data_0 bl_0 br_0 en vdd gnd
+ sky130_fd_bd_sram__openram_write_driver
Xwrite_driver1
+ data_1 bl_1 br_1 en vdd gnd
+ sky130_fd_bd_sram__openram_write_driver
.ENDS sram_16x2_write_driver_array

.SUBCKT sram_16x2_port_data_0
+ rbl_bl rbl_br bl_0 br_0 bl_1 br_1 dout_0 dout_1 din_0 din_1 s_en
+ p_en_bar w_en vdd gnd
* INOUT : rbl_bl 
* INOUT : rbl_br 
* INOUT : bl_0 
* INOUT : br_0 
* INOUT : bl_1 
* INOUT : br_1 
* OUTPUT: dout_0 
* OUTPUT: dout_1 
* INPUT : din_0 
* INPUT : din_1 
* INPUT : s_en 
* INPUT : p_en_bar 
* INPUT : w_en 
* POWER : vdd 
* GROUND: gnd 
Xprecharge_array1
+ bl_0 br_0 bl_1 br_1 rbl_bl rbl_br p_en_bar vdd
+ sram_16x2_precharge_array_0
Xsense_amp_array1
+ dout_0 bl_0 br_0 dout_1 bl_1 br_1 s_en vdd gnd
+ sram_16x2_sense_amp_array
Xwrite_driver_array1
+ din_0 din_1 bl_0 br_0 bl_1 br_1 w_en vdd gnd
+ sram_16x2_write_driver_array
.ENDS sram_16x2_port_data_0

.SUBCKT sram_16x2_pinv_dec
+ A Z vdd gnd
* INPUT : A 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* size: 1
Xpinv_pmos Z A vdd vdd sky130_fd_pr__pfet_01v8 m=1 w=1.12 l=0.15 pd=2.54 ps=2.54 as=0.42u ad=0.42u
Xpinv_nmos Z A gnd gnd sky130_fd_pr__nfet_01v8 m=1 w=0.36 l=0.15 pd=1.02 ps=1.02 as=0.14u ad=0.14u
.ENDS sram_16x2_pinv_dec
* Copyright 2020 The SkyWater PDK Authors
*
* Licensed under the Apache License, Version 2.0 (the "License");
* you may not use this file except in compliance with the License.
* You may obtain a copy of the License at
*
*     https://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS,
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
* See the License for the specific language governing permissions and
* limitations under the License.
*
* SPDX-License-Identifier: Apache-2.0

* NGSPICE file created from sky130_fd_bd_sram__openram_dp_nand2_dec.ext - technology: EFS8A


* Top level circuit sky130_fd_bd_sram__openram_dp_nand2_dec
.subckt sky130_fd_bd_sram__openram_dp_nand2_dec A B Z VDD GND

X1001 Z B VDD VDD sky130_fd_pr__pfet_01v8 W=1.12 L=0.15
X1002 VDD A Z VDD sky130_fd_pr__pfet_01v8 W=1.12 L=0.15
X1000 Z A a_n722_276# GND sky130_fd_pr__nfet_01v8 W=0.74 L=0.15
X1003 a_n722_276# B GND GND sky130_fd_pr__nfet_01v8 W=0.74 L=0.15
.ends


.SUBCKT sram_16x2_and2_dec
+ A B Z vdd gnd
* INPUT : A 
* INPUT : B 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* size: 1
Xpand2_dec_nand
+ A B zb_int vdd gnd
+ sky130_fd_bd_sram__openram_dp_nand2_dec
Xpand2_dec_inv
+ zb_int Z vdd gnd
+ sram_16x2_pinv_dec
.ENDS sram_16x2_and2_dec

.SUBCKT sram_16x2_hierarchical_predecode2x4
+ in_0 in_1 out_0 out_1 out_2 out_3 vdd gnd
* INPUT : in_0 
* INPUT : in_1 
* OUTPUT: out_0 
* OUTPUT: out_1 
* OUTPUT: out_2 
* OUTPUT: out_3 
* POWER : vdd 
* GROUND: gnd 
Xpre_inv_0
+ in_0 inbar_0 vdd gnd
+ sram_16x2_pinv_dec
Xpre_inv_1
+ in_1 inbar_1 vdd gnd
+ sram_16x2_pinv_dec
XXpre2x4_and_0
+ inbar_0 inbar_1 out_0 vdd gnd
+ sram_16x2_and2_dec
XXpre2x4_and_1
+ in_0 inbar_1 out_1 vdd gnd
+ sram_16x2_and2_dec
XXpre2x4_and_2
+ inbar_0 in_1 out_2 vdd gnd
+ sram_16x2_and2_dec
XXpre2x4_and_3
+ in_0 in_1 out_3 vdd gnd
+ sram_16x2_and2_dec
.ENDS sram_16x2_hierarchical_predecode2x4

.SUBCKT sram_16x2_hierarchical_decoder
+ addr_0 addr_1 addr_2 addr_3 decode_0 decode_1 decode_2 decode_3
+ decode_4 decode_5 decode_6 decode_7 decode_8 decode_9 decode_10
+ decode_11 decode_12 decode_13 decode_14 decode_15 vdd gnd
* INPUT : addr_0 
* INPUT : addr_1 
* INPUT : addr_2 
* INPUT : addr_3 
* OUTPUT: decode_0 
* OUTPUT: decode_1 
* OUTPUT: decode_2 
* OUTPUT: decode_3 
* OUTPUT: decode_4 
* OUTPUT: decode_5 
* OUTPUT: decode_6 
* OUTPUT: decode_7 
* OUTPUT: decode_8 
* OUTPUT: decode_9 
* OUTPUT: decode_10 
* OUTPUT: decode_11 
* OUTPUT: decode_12 
* OUTPUT: decode_13 
* OUTPUT: decode_14 
* OUTPUT: decode_15 
* POWER : vdd 
* GROUND: gnd 
Xpre_0
+ addr_0 addr_1 out_0 out_1 out_2 out_3 vdd gnd
+ sram_16x2_hierarchical_predecode2x4
Xpre_1
+ addr_2 addr_3 out_4 out_5 out_6 out_7 vdd gnd
+ sram_16x2_hierarchical_predecode2x4
XDEC_AND_0
+ out_0 out_4 decode_0 vdd gnd
+ sram_16x2_and2_dec
XDEC_AND_4
+ out_0 out_5 decode_4 vdd gnd
+ sram_16x2_and2_dec
XDEC_AND_8
+ out_0 out_6 decode_8 vdd gnd
+ sram_16x2_and2_dec
XDEC_AND_12
+ out_0 out_7 decode_12 vdd gnd
+ sram_16x2_and2_dec
XDEC_AND_1
+ out_1 out_4 decode_1 vdd gnd
+ sram_16x2_and2_dec
XDEC_AND_5
+ out_1 out_5 decode_5 vdd gnd
+ sram_16x2_and2_dec
XDEC_AND_9
+ out_1 out_6 decode_9 vdd gnd
+ sram_16x2_and2_dec
XDEC_AND_13
+ out_1 out_7 decode_13 vdd gnd
+ sram_16x2_and2_dec
XDEC_AND_2
+ out_2 out_4 decode_2 vdd gnd
+ sram_16x2_and2_dec
XDEC_AND_6
+ out_2 out_5 decode_6 vdd gnd
+ sram_16x2_and2_dec
XDEC_AND_10
+ out_2 out_6 decode_10 vdd gnd
+ sram_16x2_and2_dec
XDEC_AND_14
+ out_2 out_7 decode_14 vdd gnd
+ sram_16x2_and2_dec
XDEC_AND_3
+ out_3 out_4 decode_3 vdd gnd
+ sram_16x2_and2_dec
XDEC_AND_7
+ out_3 out_5 decode_7 vdd gnd
+ sram_16x2_and2_dec
XDEC_AND_11
+ out_3 out_6 decode_11 vdd gnd
+ sram_16x2_and2_dec
XDEC_AND_15
+ out_3 out_7 decode_15 vdd gnd
+ sram_16x2_and2_dec
.ENDS sram_16x2_hierarchical_decoder

.SUBCKT sram_16x2_and2_dec_0
+ A B Z vdd gnd
* INPUT : A 
* INPUT : B 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* size: 1
Xpand2_dec_nand
+ A B zb_int vdd gnd
+ sky130_fd_bd_sram__openram_dp_nand2_dec
Xpand2_dec_inv
+ zb_int Z vdd gnd
+ sram_16x2_pinv_dec
.ENDS sram_16x2_and2_dec_0

.SUBCKT sram_16x2_wordline_driver
+ A B Z vdd gnd
* INPUT : A 
* INPUT : B 
* OUTPUT: Z 
* POWER : vdd 
* GROUND: gnd 
* cols: 2
Xwld_nand
+ A B zb_int vdd gnd
+ sky130_fd_bd_sram__openram_dp_nand2_dec
Xwl_driver
+ zb_int Z vdd gnd
+ sram_16x2_pinv_dec
.ENDS sram_16x2_wordline_driver

.SUBCKT sram_16x2_wordline_driver_array
+ in_0 in_1 in_2 in_3 in_4 in_5 in_6 in_7 in_8 in_9 in_10 in_11 in_12
+ in_13 in_14 in_15 wl_0 wl_1 wl_2 wl_3 wl_4 wl_5 wl_6 wl_7 wl_8 wl_9
+ wl_10 wl_11 wl_12 wl_13 wl_14 wl_15 en vdd gnd
* INPUT : in_0 
* INPUT : in_1 
* INPUT : in_2 
* INPUT : in_3 
* INPUT : in_4 
* INPUT : in_5 
* INPUT : in_6 
* INPUT : in_7 
* INPUT : in_8 
* INPUT : in_9 
* INPUT : in_10 
* INPUT : in_11 
* INPUT : in_12 
* INPUT : in_13 
* INPUT : in_14 
* INPUT : in_15 
* OUTPUT: wl_0 
* OUTPUT: wl_1 
* OUTPUT: wl_2 
* OUTPUT: wl_3 
* OUTPUT: wl_4 
* OUTPUT: wl_5 
* OUTPUT: wl_6 
* OUTPUT: wl_7 
* OUTPUT: wl_8 
* OUTPUT: wl_9 
* OUTPUT: wl_10 
* OUTPUT: wl_11 
* OUTPUT: wl_12 
* OUTPUT: wl_13 
* OUTPUT: wl_14 
* OUTPUT: wl_15 
* INPUT : en 
* POWER : vdd 
* GROUND: gnd 
* rows: 16 cols: 2
Xwl_driver_and0
+ in_0 en wl_0 vdd gnd
+ sram_16x2_wordline_driver
Xwl_driver_and1
+ in_1 en wl_1 vdd gnd
+ sram_16x2_wordline_driver
Xwl_driver_and2
+ in_2 en wl_2 vdd gnd
+ sram_16x2_wordline_driver
Xwl_driver_and3
+ in_3 en wl_3 vdd gnd
+ sram_16x2_wordline_driver
Xwl_driver_and4
+ in_4 en wl_4 vdd gnd
+ sram_16x2_wordline_driver
Xwl_driver_and5
+ in_5 en wl_5 vdd gnd
+ sram_16x2_wordline_driver
Xwl_driver_and6
+ in_6 en wl_6 vdd gnd
+ sram_16x2_wordline_driver
Xwl_driver_and7
+ in_7 en wl_7 vdd gnd
+ sram_16x2_wordline_driver
Xwl_driver_and8
+ in_8 en wl_8 vdd gnd
+ sram_16x2_wordline_driver
Xwl_driver_and9
+ in_9 en wl_9 vdd gnd
+ sram_16x2_wordline_driver
Xwl_driver_and10
+ in_10 en wl_10 vdd gnd
+ sram_16x2_wordline_driver
Xwl_driver_and11
+ in_11 en wl_11 vdd gnd
+ sram_16x2_wordline_driver
Xwl_driver_and12
+ in_12 en wl_12 vdd gnd
+ sram_16x2_wordline_driver
Xwl_driver_and13
+ in_13 en wl_13 vdd gnd
+ sram_16x2_wordline_driver
Xwl_driver_and14
+ in_14 en wl_14 vdd gnd
+ sram_16x2_wordline_driver
Xwl_driver_and15
+ in_15 en wl_15 vdd gnd
+ sram_16x2_wordline_driver
.ENDS sram_16x2_wordline_driver_array

.SUBCKT sram_16x2_port_address_0
+ addr_0 addr_1 addr_2 addr_3 wl_en wl_0 wl_1 wl_2 wl_3 wl_4 wl_5 wl_6
+ wl_7 wl_8 wl_9 wl_10 wl_11 wl_12 wl_13 wl_14 wl_15 rbl_wl vdd gnd
* INPUT : addr_0 
* INPUT : addr_1 
* INPUT : addr_2 
* INPUT : addr_3 
* INPUT : wl_en 
* OUTPUT: wl_0 
* OUTPUT: wl_1 
* OUTPUT: wl_2 
* OUTPUT: wl_3 
* OUTPUT: wl_4 
* OUTPUT: wl_5 
* OUTPUT: wl_6 
* OUTPUT: wl_7 
* OUTPUT: wl_8 
* OUTPUT: wl_9 
* OUTPUT: wl_10 
* OUTPUT: wl_11 
* OUTPUT: wl_12 
* OUTPUT: wl_13 
* OUTPUT: wl_14 
* OUTPUT: wl_15 
* OUTPUT: rbl_wl 
* POWER : vdd 
* GROUND: gnd 
Xrow_decoder
+ addr_0 addr_1 addr_2 addr_3 dec_out_0 dec_out_1 dec_out_2 dec_out_3
+ dec_out_4 dec_out_5 dec_out_6 dec_out_7 dec_out_8 dec_out_9 dec_out_10
+ dec_out_11 dec_out_12 dec_out_13 dec_out_14 dec_out_15 vdd gnd
+ sram_16x2_hierarchical_decoder
Xwordline_driver
+ dec_out_0 dec_out_1 dec_out_2 dec_out_3 dec_out_4 dec_out_5 dec_out_6
+ dec_out_7 dec_out_8 dec_out_9 dec_out_10 dec_out_11 dec_out_12
+ dec_out_13 dec_out_14 dec_out_15 wl_0 wl_1 wl_2 wl_3 wl_4 wl_5 wl_6
+ wl_7 wl_8 wl_9 wl_10 wl_11 wl_12 wl_13 wl_14 wl_15 wl_en vdd gnd
+ sram_16x2_wordline_driver_array
Xrbl_driver
+ wl_en vdd rbl_wl vdd gnd
+ sram_16x2_and2_dec_0
.ENDS sram_16x2_port_address_0

.SUBCKT sram_16x2_precharge_0
+ bl br en_bar vdd
* OUTPUT: bl 
* OUTPUT: br 
* INPUT : en_bar 
* POWER : vdd 
Xlower_pmos bl en_bar br vdd sky130_fd_pr__pfet_01v8 m=1 w=0.55 l=0.15 pd=1.40 ps=1.40 as=0.21u ad=0.21u
Xupper_pmos1 bl en_bar vdd vdd sky130_fd_pr__pfet_01v8 m=1 w=0.55 l=0.15 pd=1.40 ps=1.40 as=0.21u ad=0.21u
Xupper_pmos2 br en_bar vdd vdd sky130_fd_pr__pfet_01v8 m=1 w=0.55 l=0.15 pd=1.40 ps=1.40 as=0.21u ad=0.21u
.ENDS sram_16x2_precharge_0

.SUBCKT sram_16x2_precharge_array
+ bl_0 br_0 bl_1 br_1 bl_2 br_2 en_bar vdd
* OUTPUT: bl_0 
* OUTPUT: br_0 
* OUTPUT: bl_1 
* OUTPUT: br_1 
* OUTPUT: bl_2 
* OUTPUT: br_2 
* INPUT : en_bar 
* POWER : vdd 
* cols: 3 size: 1 bl: bl0 br: br0
Xpre_column_0
+ bl_0 br_0 en_bar vdd
+ sram_16x2_precharge_0
Xpre_column_1
+ bl_1 br_1 en_bar vdd
+ sram_16x2_precharge_0
Xpre_column_2
+ bl_2 br_2 en_bar vdd
+ sram_16x2_precharge_0
.ENDS sram_16x2_precharge_array

.SUBCKT sram_16x2_port_data
+ rbl_bl rbl_br bl_0 br_0 bl_1 br_1 dout_0 dout_1 din_0 din_1 s_en
+ p_en_bar w_en vdd gnd
* INOUT : rbl_bl 
* INOUT : rbl_br 
* INOUT : bl_0 
* INOUT : br_0 
* INOUT : bl_1 
* INOUT : br_1 
* OUTPUT: dout_0 
* OUTPUT: dout_1 
* INPUT : din_0 
* INPUT : din_1 
* INPUT : s_en 
* INPUT : p_en_bar 
* INPUT : w_en 
* POWER : vdd 
* GROUND: gnd 
Xprecharge_array0
+ rbl_bl rbl_br bl_0 br_0 bl_1 br_1 p_en_bar vdd
+ sram_16x2_precharge_array
Xsense_amp_array0
+ dout_0 bl_0 br_0 dout_1 bl_1 br_1 s_en vdd gnd
+ sram_16x2_sense_amp_array
Xwrite_driver_array0
+ din_0 din_1 bl_0 br_0 bl_1 br_1 w_en vdd gnd
+ sram_16x2_write_driver_array
.ENDS sram_16x2_port_data
* Copyright 2020 The SkyWater PDK Authors
*
* Licensed under the Apache License, Version 2.0 (the "License");
* you may not use this file except in compliance with the License.
* You may obtain a copy of the License at
*
*     https://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS,
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
* See the License for the specific language governing permissions and
* limitations under the License.
*
* SPDX-License-Identifier: Apache-2.0


.SUBCKT sky130_fd_bd_sram__openram_dp_cell_dummy BL0 BR0 BL1 BR1 WL0 WL1 VDD GND
** N=14 EP=6 IP=0 FDC=16
*.SEEDPROM

* Bitcell Core
X1 1 GND GND GND sky130_fd_pr__special_nfet_latch W=0.21 L=0.15
X2 1 WL1 BL1 GND sky130_fd_pr__special_nfet_latch W=0.21 L=0.15
X3 2 GND GND GND sky130_fd_pr__special_nfet_latch W=0.21 L=0.15
X4 2 WL1 BR1 GND sky130_fd_pr__special_nfet_latch W=0.21 L=0.15
X5 3 GND GND GND sky130_fd_pr__special_nfet_latch W=0.21 L=0.15
X6 3 WL0 BL0 GND sky130_fd_pr__special_nfet_latch W=0.21 L=0.15
X7 4 GND GND GND sky130_fd_pr__special_nfet_latch W=0.21 L=0.15
X8 4 WL0 BR0 GND sky130_fd_pr__special_nfet_latch W=0.21 L=0.15

* drainOnly NMOS
X9 BL1 GND BL1 GND sky130_fd_pr__special_nfet_latch W=0.21 L=0.08
X10 BR1 GND BR1 GND sky130_fd_pr__special_nfet_latch W=0.21 L=0.08

.ENDS

.SUBCKT sram_16x2_dummy_array
+ bl_0_0 bl_1_0 br_0_0 br_1_0 bl_0_1 bl_1_1 br_0_1 br_1_1 wl_0_0 wl_1_0
+ vdd gnd
* INOUT : bl_0_0 
* INOUT : bl_1_0 
* INOUT : br_0_0 
* INOUT : br_1_0 
* INOUT : bl_0_1 
* INOUT : bl_1_1 
* INOUT : br_0_1 
* INOUT : br_1_1 
* INPUT : wl_0_0 
* INPUT : wl_1_0 
* POWER : vdd 
* GROUND: gnd 
Xbit_r0_c0
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_0 wl_1_0 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell_dummy
Xbit_r0_c1
+ bl_0_1 br_0_1 bl_1_1 br_1_1 wl_0_0 wl_1_0 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell_dummy
.ENDS sram_16x2_dummy_array
* Copyright 2020 The SkyWater PDK Authors
*
* Licensed under the Apache License, Version 2.0 (the "License");
* you may not use this file except in compliance with the License.
* You may obtain a copy of the License at
*
*     https://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS,
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
* See the License for the specific language governing permissions and
* limitations under the License.
*
* SPDX-License-Identifier: Apache-2.0


.SUBCKT sky130_fd_bd_sram__openram_dp_cell BL0 BR0 BL1 BR1 WL0 WL1 VDD GND

X0 Q WL1 BL1 GND sky130_fd_pr__special_nfet_latch W=0.21 L=0.15
X4 Q_bar WL1 BR1 GND sky130_fd_pr__special_nfet_latch W=0.21 L=0.15

X3 BL0 WL0 Q GND sky130_fd_pr__special_nfet_latch W=0.21 L=0.15
X7 BR0 WL0 Q_bar GND sky130_fd_pr__special_nfet_latch W=0.21 L=0.15

* Bitcell Core
X1 GND Q_bar Q GND sky130_fd_pr__special_nfet_latch W=0.21 L=0.15
X2 GND Q_bar Q GND sky130_fd_pr__special_nfet_latch W=0.21 L=0.15
X9 Q Q_bar VDD VDD sky130_fd_pr__special_pfet_pass W=0.14 L=0.15

X5 GND Q Q_bar GND sky130_fd_pr__special_nfet_latch W=0.21 L=0.15
X6 GND Q Q_bar GND sky130_fd_pr__special_nfet_latch W=0.21 L=0.15
X8 VDD Q Q_bar VDD sky130_fd_pr__special_pfet_pass W=0.14 L=0.15

* drainOnly PMOS
*X10 Q_bar WL1 Q_bar VDD sky130_fd_pr__special_pfet_pass L=0.08 W=0.14
*X11 Q WL0 Q VDD sky130_fd_pr__special_pfet_pass L=0.08 W=0.14

* drainOnly NMOS
X12 BL1 GND BL1 GND sky130_fd_pr__special_nfet_latch W=0.21 L=0.08
X14 BR1 GND BR1 GND sky130_fd_pr__special_nfet_latch W=0.21 L=0.08

.ENDS

.SUBCKT sram_16x2_bitcell_array
+ bl_0_0 bl_1_0 br_0_0 br_1_0 bl_0_1 bl_1_1 br_0_1 br_1_1 wl_0_0 wl_1_0
+ wl_0_1 wl_1_1 wl_0_2 wl_1_2 wl_0_3 wl_1_3 wl_0_4 wl_1_4 wl_0_5 wl_1_5
+ wl_0_6 wl_1_6 wl_0_7 wl_1_7 wl_0_8 wl_1_8 wl_0_9 wl_1_9 wl_0_10
+ wl_1_10 wl_0_11 wl_1_11 wl_0_12 wl_1_12 wl_0_13 wl_1_13 wl_0_14
+ wl_1_14 wl_0_15 wl_1_15 vdd gnd
* INOUT : bl_0_0 
* INOUT : bl_1_0 
* INOUT : br_0_0 
* INOUT : br_1_0 
* INOUT : bl_0_1 
* INOUT : bl_1_1 
* INOUT : br_0_1 
* INOUT : br_1_1 
* INPUT : wl_0_0 
* INPUT : wl_1_0 
* INPUT : wl_0_1 
* INPUT : wl_1_1 
* INPUT : wl_0_2 
* INPUT : wl_1_2 
* INPUT : wl_0_3 
* INPUT : wl_1_3 
* INPUT : wl_0_4 
* INPUT : wl_1_4 
* INPUT : wl_0_5 
* INPUT : wl_1_5 
* INPUT : wl_0_6 
* INPUT : wl_1_6 
* INPUT : wl_0_7 
* INPUT : wl_1_7 
* INPUT : wl_0_8 
* INPUT : wl_1_8 
* INPUT : wl_0_9 
* INPUT : wl_1_9 
* INPUT : wl_0_10 
* INPUT : wl_1_10 
* INPUT : wl_0_11 
* INPUT : wl_1_11 
* INPUT : wl_0_12 
* INPUT : wl_1_12 
* INPUT : wl_0_13 
* INPUT : wl_1_13 
* INPUT : wl_0_14 
* INPUT : wl_1_14 
* INPUT : wl_0_15 
* INPUT : wl_1_15 
* POWER : vdd 
* GROUND: gnd 
* rows: 16 cols: 2
Xbit_r0_c0
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_0 wl_1_0 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r1_c0
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_1 wl_1_1 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r2_c0
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_2 wl_1_2 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r3_c0
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_3 wl_1_3 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r4_c0
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_4 wl_1_4 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r5_c0
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_5 wl_1_5 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r6_c0
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_6 wl_1_6 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r7_c0
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_7 wl_1_7 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r8_c0
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_8 wl_1_8 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r9_c0
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_9 wl_1_9 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r10_c0
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_10 wl_1_10 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r11_c0
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_11 wl_1_11 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r12_c0
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_12 wl_1_12 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r13_c0
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_13 wl_1_13 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r14_c0
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_14 wl_1_14 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r15_c0
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_15 wl_1_15 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r0_c1
+ bl_0_1 br_0_1 bl_1_1 br_1_1 wl_0_0 wl_1_0 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r1_c1
+ bl_0_1 br_0_1 bl_1_1 br_1_1 wl_0_1 wl_1_1 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r2_c1
+ bl_0_1 br_0_1 bl_1_1 br_1_1 wl_0_2 wl_1_2 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r3_c1
+ bl_0_1 br_0_1 bl_1_1 br_1_1 wl_0_3 wl_1_3 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r4_c1
+ bl_0_1 br_0_1 bl_1_1 br_1_1 wl_0_4 wl_1_4 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r5_c1
+ bl_0_1 br_0_1 bl_1_1 br_1_1 wl_0_5 wl_1_5 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r6_c1
+ bl_0_1 br_0_1 bl_1_1 br_1_1 wl_0_6 wl_1_6 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r7_c1
+ bl_0_1 br_0_1 bl_1_1 br_1_1 wl_0_7 wl_1_7 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r8_c1
+ bl_0_1 br_0_1 bl_1_1 br_1_1 wl_0_8 wl_1_8 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r9_c1
+ bl_0_1 br_0_1 bl_1_1 br_1_1 wl_0_9 wl_1_9 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r10_c1
+ bl_0_1 br_0_1 bl_1_1 br_1_1 wl_0_10 wl_1_10 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r11_c1
+ bl_0_1 br_0_1 bl_1_1 br_1_1 wl_0_11 wl_1_11 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r12_c1
+ bl_0_1 br_0_1 bl_1_1 br_1_1 wl_0_12 wl_1_12 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r13_c1
+ bl_0_1 br_0_1 bl_1_1 br_1_1 wl_0_13 wl_1_13 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r14_c1
+ bl_0_1 br_0_1 bl_1_1 br_1_1 wl_0_14 wl_1_14 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
Xbit_r15_c1
+ bl_0_1 br_0_1 bl_1_1 br_1_1 wl_0_15 wl_1_15 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell
.ENDS sram_16x2_bitcell_array
* Copyright 2020 The SkyWater PDK Authors
*
* Licensed under the Apache License, Version 2.0 (the "License");
* you may not use this file except in compliance with the License.
* You may obtain a copy of the License at
*
*     https://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS,
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
* See the License for the specific language governing permissions and
* limitations under the License.
*
* SPDX-License-Identifier: Apache-2.0


.SUBCKT sky130_fd_bd_sram__openram_dp_cell_replica BL0 BR0 BL1 BR1 WL0 WL1 VDD GND
** N=9 EP=8 IP=0 FDC=16
*.SEEDPROM

* Bitcell Core
X0 Q WL1 BL1 GND sky130_fd_pr__special_nfet_latch W=0.21 L=0.15
X1 GND VDD Q GND sky130_fd_pr__special_nfet_latch W=0.21 L=0.15
X2 GND VDD Q GND sky130_fd_pr__special_nfet_latch W=0.21 L=0.15
X3 BL0 WL0 Q GND sky130_fd_pr__special_nfet_latch W=0.21 L=0.15
X4 VDD WL1 BR1 GND sky130_fd_pr__special_nfet_latch W=0.21 L=0.15
X5 GND Q VDD GND sky130_fd_pr__special_nfet_latch W=0.21 L=0.15
X6 GND Q VDD GND sky130_fd_pr__special_nfet_latch W=0.21 L=0.15
X7 BR0 WL0 VDD GND sky130_fd_pr__special_nfet_latch W=0.21 L=0.15
X8 VDD Q VDD VDD sky130_fd_pr__special_pfet_pass W=0.14 L=0.15
X9 Q VDD VDD VDD sky130_fd_pr__special_pfet_pass W=0.14 L=0.15

* drainOnly PMOS
*X10 VDD WL1 VDD VDD sky130_fd_pr__special_pfet_pass L=0.08 W=0.14
*X11 Q WL0 Q VDD sky130_fd_pr__special_pfet_pass L=0.08 W=0.14

* drainOnly NMOS
X12 BL1 GND BL1 GND sky130_fd_pr__special_nfet_latch W=0.21 L=0.08
X14 BR1 GND BR1 GND sky130_fd_pr__special_nfet_latch W=0.21 L=0.08

.ENDS

.SUBCKT sram_16x2_replica_column
+ bl_0_0 bl_1_0 br_0_0 br_1_0 wl_0_0 wl_1_0 wl_0_1 wl_1_1 wl_0_2 wl_1_2
+ wl_0_3 wl_1_3 wl_0_4 wl_1_4 wl_0_5 wl_1_5 wl_0_6 wl_1_6 wl_0_7 wl_1_7
+ wl_0_8 wl_1_8 wl_0_9 wl_1_9 wl_0_10 wl_1_10 wl_0_11 wl_1_11 wl_0_12
+ wl_1_12 wl_0_13 wl_1_13 wl_0_14 wl_1_14 wl_0_15 wl_1_15 wl_0_16
+ wl_1_16 wl_0_17 wl_1_17 vdd gnd
* OUTPUT: bl_0_0 
* OUTPUT: bl_1_0 
* OUTPUT: br_0_0 
* OUTPUT: br_1_0 
* INPUT : wl_0_0 
* INPUT : wl_1_0 
* INPUT : wl_0_1 
* INPUT : wl_1_1 
* INPUT : wl_0_2 
* INPUT : wl_1_2 
* INPUT : wl_0_3 
* INPUT : wl_1_3 
* INPUT : wl_0_4 
* INPUT : wl_1_4 
* INPUT : wl_0_5 
* INPUT : wl_1_5 
* INPUT : wl_0_6 
* INPUT : wl_1_6 
* INPUT : wl_0_7 
* INPUT : wl_1_7 
* INPUT : wl_0_8 
* INPUT : wl_1_8 
* INPUT : wl_0_9 
* INPUT : wl_1_9 
* INPUT : wl_0_10 
* INPUT : wl_1_10 
* INPUT : wl_0_11 
* INPUT : wl_1_11 
* INPUT : wl_0_12 
* INPUT : wl_1_12 
* INPUT : wl_0_13 
* INPUT : wl_1_13 
* INPUT : wl_0_14 
* INPUT : wl_1_14 
* INPUT : wl_0_15 
* INPUT : wl_1_15 
* INPUT : wl_0_16 
* INPUT : wl_1_16 
* INPUT : wl_0_17 
* INPUT : wl_1_17 
* POWER : vdd 
* GROUND: gnd 
Xrbc_0
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_0 wl_1_0 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell_replica
Xrbc_1
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_1 wl_1_1 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell_replica
Xrbc_2
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_2 wl_1_2 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell_replica
Xrbc_3
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_3 wl_1_3 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell_replica
Xrbc_4
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_4 wl_1_4 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell_replica
Xrbc_5
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_5 wl_1_5 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell_replica
Xrbc_6
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_6 wl_1_6 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell_replica
Xrbc_7
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_7 wl_1_7 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell_replica
Xrbc_8
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_8 wl_1_8 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell_replica
Xrbc_9
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_9 wl_1_9 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell_replica
Xrbc_10
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_10 wl_1_10 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell_replica
Xrbc_11
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_11 wl_1_11 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell_replica
Xrbc_12
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_12 wl_1_12 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell_replica
Xrbc_13
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_13 wl_1_13 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell_replica
Xrbc_14
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_14 wl_1_14 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell_replica
Xrbc_15
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_15 wl_1_15 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell_replica
Xrbc_16
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_16 wl_1_16 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell_replica
Xrbc_17
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_17 wl_1_17 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell_dummy
.ENDS sram_16x2_replica_column

.SUBCKT sram_16x2_replica_column_0
+ bl_0_0 bl_1_0 br_0_0 br_1_0 wl_0_0 wl_1_0 wl_0_1 wl_1_1 wl_0_2 wl_1_2
+ wl_0_3 wl_1_3 wl_0_4 wl_1_4 wl_0_5 wl_1_5 wl_0_6 wl_1_6 wl_0_7 wl_1_7
+ wl_0_8 wl_1_8 wl_0_9 wl_1_9 wl_0_10 wl_1_10 wl_0_11 wl_1_11 wl_0_12
+ wl_1_12 wl_0_13 wl_1_13 wl_0_14 wl_1_14 wl_0_15 wl_1_15 wl_0_16
+ wl_1_16 wl_0_17 wl_1_17 vdd gnd
* OUTPUT: bl_0_0 
* OUTPUT: bl_1_0 
* OUTPUT: br_0_0 
* OUTPUT: br_1_0 
* INPUT : wl_0_0 
* INPUT : wl_1_0 
* INPUT : wl_0_1 
* INPUT : wl_1_1 
* INPUT : wl_0_2 
* INPUT : wl_1_2 
* INPUT : wl_0_3 
* INPUT : wl_1_3 
* INPUT : wl_0_4 
* INPUT : wl_1_4 
* INPUT : wl_0_5 
* INPUT : wl_1_5 
* INPUT : wl_0_6 
* INPUT : wl_1_6 
* INPUT : wl_0_7 
* INPUT : wl_1_7 
* INPUT : wl_0_8 
* INPUT : wl_1_8 
* INPUT : wl_0_9 
* INPUT : wl_1_9 
* INPUT : wl_0_10 
* INPUT : wl_1_10 
* INPUT : wl_0_11 
* INPUT : wl_1_11 
* INPUT : wl_0_12 
* INPUT : wl_1_12 
* INPUT : wl_0_13 
* INPUT : wl_1_13 
* INPUT : wl_0_14 
* INPUT : wl_1_14 
* INPUT : wl_0_15 
* INPUT : wl_1_15 
* INPUT : wl_0_16 
* INPUT : wl_1_16 
* INPUT : wl_0_17 
* INPUT : wl_1_17 
* POWER : vdd 
* GROUND: gnd 
Xrbc_0
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_0 wl_1_0 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell_dummy
Xrbc_1
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_1 wl_1_1 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell_replica
Xrbc_2
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_2 wl_1_2 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell_replica
Xrbc_3
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_3 wl_1_3 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell_replica
Xrbc_4
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_4 wl_1_4 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell_replica
Xrbc_5
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_5 wl_1_5 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell_replica
Xrbc_6
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_6 wl_1_6 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell_replica
Xrbc_7
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_7 wl_1_7 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell_replica
Xrbc_8
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_8 wl_1_8 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell_replica
Xrbc_9
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_9 wl_1_9 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell_replica
Xrbc_10
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_10 wl_1_10 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell_replica
Xrbc_11
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_11 wl_1_11 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell_replica
Xrbc_12
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_12 wl_1_12 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell_replica
Xrbc_13
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_13 wl_1_13 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell_replica
Xrbc_14
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_14 wl_1_14 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell_replica
Xrbc_15
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_15 wl_1_15 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell_replica
Xrbc_16
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_16 wl_1_16 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell_replica
Xrbc_17
+ bl_0_0 br_0_0 bl_1_0 br_1_0 wl_0_17 wl_1_17 vdd gnd
+ sky130_fd_bd_sram__openram_dp_cell_replica
.ENDS sram_16x2_replica_column_0

.SUBCKT sram_16x2_replica_bitcell_array
+ rbl_bl_0_0 rbl_bl_1_0 rbl_br_0_0 rbl_br_1_0 bl_0_0 bl_1_0 br_0_0
+ br_1_0 bl_0_1 bl_1_1 br_0_1 br_1_1 rbl_bl_0_1 rbl_bl_1_1 rbl_br_0_1
+ rbl_br_1_1 rbl_wl_0_0 rbl_wl_0_1 wl_0_0 wl_1_0 wl_0_1 wl_1_1 wl_0_2
+ wl_1_2 wl_0_3 wl_1_3 wl_0_4 wl_1_4 wl_0_5 wl_1_5 wl_0_6 wl_1_6 wl_0_7
+ wl_1_7 wl_0_8 wl_1_8 wl_0_9 wl_1_9 wl_0_10 wl_1_10 wl_0_11 wl_1_11
+ wl_0_12 wl_1_12 wl_0_13 wl_1_13 wl_0_14 wl_1_14 wl_0_15 wl_1_15
+ rbl_wl_1_0 rbl_wl_1_1 vdd gnd
* INOUT : rbl_bl_0_0 
* INOUT : rbl_bl_1_0 
* INOUT : rbl_br_0_0 
* INOUT : rbl_br_1_0 
* INOUT : bl_0_0 
* INOUT : bl_1_0 
* INOUT : br_0_0 
* INOUT : br_1_0 
* INOUT : bl_0_1 
* INOUT : bl_1_1 
* INOUT : br_0_1 
* INOUT : br_1_1 
* INOUT : rbl_bl_0_1 
* INOUT : rbl_bl_1_1 
* INOUT : rbl_br_0_1 
* INOUT : rbl_br_1_1 
* INPUT : rbl_wl_0_0 
* INPUT : rbl_wl_0_1 
* INPUT : wl_0_0 
* INPUT : wl_1_0 
* INPUT : wl_0_1 
* INPUT : wl_1_1 
* INPUT : wl_0_2 
* INPUT : wl_1_2 
* INPUT : wl_0_3 
* INPUT : wl_1_3 
* INPUT : wl_0_4 
* INPUT : wl_1_4 
* INPUT : wl_0_5 
* INPUT : wl_1_5 
* INPUT : wl_0_6 
* INPUT : wl_1_6 
* INPUT : wl_0_7 
* INPUT : wl_1_7 
* INPUT : wl_0_8 
* INPUT : wl_1_8 
* INPUT : wl_0_9 
* INPUT : wl_1_9 
* INPUT : wl_0_10 
* INPUT : wl_1_10 
* INPUT : wl_0_11 
* INPUT : wl_1_11 
* INPUT : wl_0_12 
* INPUT : wl_1_12 
* INPUT : wl_0_13 
* INPUT : wl_1_13 
* INPUT : wl_0_14 
* INPUT : wl_1_14 
* INPUT : wl_0_15 
* INPUT : wl_1_15 
* INPUT : rbl_wl_1_0 
* INPUT : rbl_wl_1_1 
* POWER : vdd 
* GROUND: gnd 
* rows: 16 cols: 2
* rbl: [1, 1] left_rbl: [0] right_rbl: [1]
Xbitcell_array
+ bl_0_0 bl_1_0 br_0_0 br_1_0 bl_0_1 bl_1_1 br_0_1 br_1_1 wl_0_0 wl_1_0
+ wl_0_1 wl_1_1 wl_0_2 wl_1_2 wl_0_3 wl_1_3 wl_0_4 wl_1_4 wl_0_5 wl_1_5
+ wl_0_6 wl_1_6 wl_0_7 wl_1_7 wl_0_8 wl_1_8 wl_0_9 wl_1_9 wl_0_10
+ wl_1_10 wl_0_11 wl_1_11 wl_0_12 wl_1_12 wl_0_13 wl_1_13 wl_0_14
+ wl_1_14 wl_0_15 wl_1_15 vdd gnd
+ sram_16x2_bitcell_array
Xreplica_col_0
+ rbl_bl_0_0 rbl_bl_1_0 rbl_br_0_0 rbl_br_1_0 rbl_wl_0_0 rbl_wl_0_1
+ wl_0_0 wl_1_0 wl_0_1 wl_1_1 wl_0_2 wl_1_2 wl_0_3 wl_1_3 wl_0_4 wl_1_4
+ wl_0_5 wl_1_5 wl_0_6 wl_1_6 wl_0_7 wl_1_7 wl_0_8 wl_1_8 wl_0_9 wl_1_9
+ wl_0_10 wl_1_10 wl_0_11 wl_1_11 wl_0_12 wl_1_12 wl_0_13 wl_1_13
+ wl_0_14 wl_1_14 wl_0_15 wl_1_15 rbl_wl_1_0 rbl_wl_1_1 vdd gnd
+ sram_16x2_replica_column
Xreplica_col_1
+ rbl_bl_0_1 rbl_bl_1_1 rbl_br_0_1 rbl_br_1_1 rbl_wl_0_0 rbl_wl_0_1
+ wl_0_0 wl_1_0 wl_0_1 wl_1_1 wl_0_2 wl_1_2 wl_0_3 wl_1_3 wl_0_4 wl_1_4
+ wl_0_5 wl_1_5 wl_0_6 wl_1_6 wl_0_7 wl_1_7 wl_0_8 wl_1_8 wl_0_9 wl_1_9
+ wl_0_10 wl_1_10 wl_0_11 wl_1_11 wl_0_12 wl_1_12 wl_0_13 wl_1_13
+ wl_0_14 wl_1_14 wl_0_15 wl_1_15 rbl_wl_1_0 rbl_wl_1_1 vdd gnd
+ sram_16x2_replica_column_0
Xdummy_row_0
+ bl_0_0 bl_1_0 br_0_0 br_1_0 bl_0_1 bl_1_1 br_0_1 br_1_1 rbl_wl_0_0
+ rbl_wl_0_1 vdd gnd
+ sram_16x2_dummy_array
Xdummy_row_1
+ bl_0_0 bl_1_0 br_0_0 br_1_0 bl_0_1 bl_1_1 br_0_1 br_1_1 rbl_wl_1_0
+ rbl_wl_1_1 vdd gnd
+ sram_16x2_dummy_array
.ENDS sram_16x2_replica_bitcell_array

.SUBCKT sram_16x2_capped_replica_bitcell_array
+ rbl_bl_0_0 rbl_bl_1_0 rbl_br_0_0 rbl_br_1_0 bl_0_0 bl_1_0 br_0_0
+ br_1_0 bl_0_1 bl_1_1 br_0_1 br_1_1 rbl_bl_0_1 rbl_bl_1_1 rbl_br_0_1
+ rbl_br_1_1 rbl_wl_0_0 wl_0_0 wl_1_0 wl_0_1 wl_1_1 wl_0_2 wl_1_2 wl_0_3
+ wl_1_3 wl_0_4 wl_1_4 wl_0_5 wl_1_5 wl_0_6 wl_1_6 wl_0_7 wl_1_7 wl_0_8
+ wl_1_8 wl_0_9 wl_1_9 wl_0_10 wl_1_10 wl_0_11 wl_1_11 wl_0_12 wl_1_12
+ wl_0_13 wl_1_13 wl_0_14 wl_1_14 wl_0_15 wl_1_15 rbl_wl_1_1 vdd gnd
* INOUT : rbl_bl_0_0 
* INOUT : rbl_bl_1_0 
* INOUT : rbl_br_0_0 
* INOUT : rbl_br_1_0 
* INOUT : bl_0_0 
* INOUT : bl_1_0 
* INOUT : br_0_0 
* INOUT : br_1_0 
* INOUT : bl_0_1 
* INOUT : bl_1_1 
* INOUT : br_0_1 
* INOUT : br_1_1 
* INOUT : rbl_bl_0_1 
* INOUT : rbl_bl_1_1 
* INOUT : rbl_br_0_1 
* INOUT : rbl_br_1_1 
* INPUT : rbl_wl_0_0 
* INPUT : wl_0_0 
* INPUT : wl_1_0 
* INPUT : wl_0_1 
* INPUT : wl_1_1 
* INPUT : wl_0_2 
* INPUT : wl_1_2 
* INPUT : wl_0_3 
* INPUT : wl_1_3 
* INPUT : wl_0_4 
* INPUT : wl_1_4 
* INPUT : wl_0_5 
* INPUT : wl_1_5 
* INPUT : wl_0_6 
* INPUT : wl_1_6 
* INPUT : wl_0_7 
* INPUT : wl_1_7 
* INPUT : wl_0_8 
* INPUT : wl_1_8 
* INPUT : wl_0_9 
* INPUT : wl_1_9 
* INPUT : wl_0_10 
* INPUT : wl_1_10 
* INPUT : wl_0_11 
* INPUT : wl_1_11 
* INPUT : wl_0_12 
* INPUT : wl_1_12 
* INPUT : wl_0_13 
* INPUT : wl_1_13 
* INPUT : wl_0_14 
* INPUT : wl_1_14 
* INPUT : wl_0_15 
* INPUT : wl_1_15 
* INPUT : rbl_wl_1_1 
* POWER : vdd 
* GROUND: gnd 
* rows: 16 cols: 2
* rbl: [1, 1] left_rbl: [0] right_rbl: [1]
Xreplica_bitcell_array
+ rbl_bl_0_0 rbl_bl_1_0 rbl_br_0_0 rbl_br_1_0 bl_0_0 bl_1_0 br_0_0
+ br_1_0 bl_0_1 bl_1_1 br_0_1 br_1_1 rbl_bl_0_1 rbl_bl_1_1 rbl_br_0_1
+ rbl_br_1_1 rbl_wl_0_0 gnd wl_0_0 wl_1_0 wl_0_1 wl_1_1 wl_0_2 wl_1_2
+ wl_0_3 wl_1_3 wl_0_4 wl_1_4 wl_0_5 wl_1_5 wl_0_6 wl_1_6 wl_0_7 wl_1_7
+ wl_0_8 wl_1_8 wl_0_9 wl_1_9 wl_0_10 wl_1_10 wl_0_11 wl_1_11 wl_0_12
+ wl_1_12 wl_0_13 wl_1_13 wl_0_14 wl_1_14 wl_0_15 wl_1_15 gnd rbl_wl_1_1
+ vdd gnd
+ sram_16x2_replica_bitcell_array
.ENDS sram_16x2_capped_replica_bitcell_array

.SUBCKT sram_16x2_port_address
+ addr_0 addr_1 addr_2 addr_3 wl_en wl_0 wl_1 wl_2 wl_3 wl_4 wl_5 wl_6
+ wl_7 wl_8 wl_9 wl_10 wl_11 wl_12 wl_13 wl_14 wl_15 rbl_wl vdd gnd
* INPUT : addr_0 
* INPUT : addr_1 
* INPUT : addr_2 
* INPUT : addr_3 
* INPUT : wl_en 
* OUTPUT: wl_0 
* OUTPUT: wl_1 
* OUTPUT: wl_2 
* OUTPUT: wl_3 
* OUTPUT: wl_4 
* OUTPUT: wl_5 
* OUTPUT: wl_6 
* OUTPUT: wl_7 
* OUTPUT: wl_8 
* OUTPUT: wl_9 
* OUTPUT: wl_10 
* OUTPUT: wl_11 
* OUTPUT: wl_12 
* OUTPUT: wl_13 
* OUTPUT: wl_14 
* OUTPUT: wl_15 
* OUTPUT: rbl_wl 
* POWER : vdd 
* GROUND: gnd 
Xrow_decoder
+ addr_0 addr_1 addr_2 addr_3 dec_out_0 dec_out_1 dec_out_2 dec_out_3
+ dec_out_4 dec_out_5 dec_out_6 dec_out_7 dec_out_8 dec_out_9 dec_out_10
+ dec_out_11 dec_out_12 dec_out_13 dec_out_14 dec_out_15 vdd gnd
+ sram_16x2_hierarchical_decoder
Xwordline_driver
+ dec_out_0 dec_out_1 dec_out_2 dec_out_3 dec_out_4 dec_out_5 dec_out_6
+ dec_out_7 dec_out_8 dec_out_9 dec_out_10 dec_out_11 dec_out_12
+ dec_out_13 dec_out_14 dec_out_15 wl_0 wl_1 wl_2 wl_3 wl_4 wl_5 wl_6
+ wl_7 wl_8 wl_9 wl_10 wl_11 wl_12 wl_13 wl_14 wl_15 wl_en vdd gnd
+ sram_16x2_wordline_driver_array
Xrbl_driver
+ wl_en vdd rbl_wl vdd gnd
+ sram_16x2_and2_dec_0
.ENDS sram_16x2_port_address

.SUBCKT sram_16x2_bank
+ dout0_0 dout0_1 dout1_0 dout1_1 rbl_bl_0_0 rbl_bl_1_1 din0_0 din0_1
+ din1_0 din1_1 addr0_0 addr0_1 addr0_2 addr0_3 addr1_0 addr1_1 addr1_2
+ addr1_3 s_en0 s_en1 p_en_bar0 p_en_bar1 w_en0 w_en1 wl_en0 wl_en1 vdd
+ gnd
* OUTPUT: dout0_0 
* OUTPUT: dout0_1 
* OUTPUT: dout1_0 
* OUTPUT: dout1_1 
* OUTPUT: rbl_bl_0_0 
* OUTPUT: rbl_bl_1_1 
* INPUT : din0_0 
* INPUT : din0_1 
* INPUT : din1_0 
* INPUT : din1_1 
* INPUT : addr0_0 
* INPUT : addr0_1 
* INPUT : addr0_2 
* INPUT : addr0_3 
* INPUT : addr1_0 
* INPUT : addr1_1 
* INPUT : addr1_2 
* INPUT : addr1_3 
* INPUT : s_en0 
* INPUT : s_en1 
* INPUT : p_en_bar0 
* INPUT : p_en_bar1 
* INPUT : w_en0 
* INPUT : w_en1 
* INPUT : wl_en0 
* INPUT : wl_en1 
* POWER : vdd 
* GROUND: gnd 
Xbitcell_array
+ rbl_bl_0_0 rbl_bl_1_0 rbl_br_0_0 rbl_br_1_0 bl_0_0 bl_1_0 br_0_0
+ br_1_0 bl_0_1 bl_1_1 br_0_1 br_1_1 rbl_bl_0_1 rbl_bl_1_1 rbl_br_0_1
+ rbl_br_1_1 rbl_wl0 wl_0_0 wl_1_0 wl_0_1 wl_1_1 wl_0_2 wl_1_2 wl_0_3
+ wl_1_3 wl_0_4 wl_1_4 wl_0_5 wl_1_5 wl_0_6 wl_1_6 wl_0_7 wl_1_7 wl_0_8
+ wl_1_8 wl_0_9 wl_1_9 wl_0_10 wl_1_10 wl_0_11 wl_1_11 wl_0_12 wl_1_12
+ wl_0_13 wl_1_13 wl_0_14 wl_1_14 wl_0_15 wl_1_15 rbl_wl1 vdd gnd
+ sram_16x2_capped_replica_bitcell_array
Xport_data0
+ rbl_bl_0_0 rbl_br_0_0 bl_0_0 br_0_0 bl_0_1 br_0_1 dout0_0 dout0_1
+ din0_0 din0_1 s_en0 p_en_bar0 w_en0 vdd gnd
+ sram_16x2_port_data
Xport_data1
+ rbl_bl_1_1 rbl_br_1_1 bl_1_0 br_1_0 bl_1_1 br_1_1 dout1_0 dout1_1
+ din1_0 din1_1 s_en1 p_en_bar1 w_en1 vdd gnd
+ sram_16x2_port_data_0
Xport_address0
+ addr0_0 addr0_1 addr0_2 addr0_3 wl_en0 wl_0_0 wl_0_1 wl_0_2 wl_0_3
+ wl_0_4 wl_0_5 wl_0_6 wl_0_7 wl_0_8 wl_0_9 wl_0_10 wl_0_11 wl_0_12
+ wl_0_13 wl_0_14 wl_0_15 rbl_wl0 vdd gnd
+ sram_16x2_port_address
Xport_address1
+ addr1_0 addr1_1 addr1_2 addr1_3 wl_en1 wl_1_0 wl_1_1 wl_1_2 wl_1_3
+ wl_1_4 wl_1_5 wl_1_6 wl_1_7 wl_1_8 wl_1_9 wl_1_10 wl_1_11 wl_1_12
+ wl_1_13 wl_1_14 wl_1_15 rbl_wl1 vdd gnd
+ sram_16x2_port_address_0
.ENDS sram_16x2_bank

.SUBCKT sram_16x2_row_addr_dff
+ din_0 din_1 din_2 din_3 dout_0 dout_1 dout_2 dout_3 clk vdd gnd
* INPUT : din_0 
* INPUT : din_1 
* INPUT : din_2 
* INPUT : din_3 
* OUTPUT: dout_0 
* OUTPUT: dout_1 
* OUTPUT: dout_2 
* OUTPUT: dout_3 
* INPUT : clk 
* POWER : vdd 
* GROUND: gnd 
* rows: 4 cols: 1
Xdff_r0_c0
+ din_0 dout_0 CLK VDD GND
+ sky130_fd_bd_sram__openram_dff
Xdff_r1_c0
+ din_1 dout_1 CLK VDD GND
+ sky130_fd_bd_sram__openram_dff
Xdff_r2_c0
+ din_2 dout_2 CLK VDD GND
+ sky130_fd_bd_sram__openram_dff
Xdff_r3_c0
+ din_3 dout_3 CLK VDD GND
+ sky130_fd_bd_sram__openram_dff
.ENDS sram_16x2_row_addr_dff

.SUBCKT sram_16x2
+ din0[0] din0[1] din1[0] din1[1] addr0[0] addr0[1] addr0[2] addr0[3]
+ addr1[0] addr1[1] addr1[2] addr1[3] csb0 csb1 web0 web1 clk0 clk1
+ dout0[0] dout0[1] dout1[0] dout1[1] vccd1 vssd1
* INPUT : din0[0] 
* INPUT : din0[1] 
* INPUT : din1[0] 
* INPUT : din1[1] 
* INPUT : addr0[0] 
* INPUT : addr0[1] 
* INPUT : addr0[2] 
* INPUT : addr0[3] 
* INPUT : addr1[0] 
* INPUT : addr1[1] 
* INPUT : addr1[2] 
* INPUT : addr1[3] 
* INPUT : csb0 
* INPUT : csb1 
* INPUT : web0 
* INPUT : web1 
* INPUT : clk0 
* INPUT : clk1 
* OUTPUT: dout0[0] 
* OUTPUT: dout0[1] 
* OUTPUT: dout1[0] 
* OUTPUT: dout1[1] 
* POWER : vccd1 
* GROUND: vssd1 
Xbank0
+ dout0[0] dout0[1] dout1[0] dout1[1] rbl_bl0 rbl_bl1 bank_din0_0
+ bank_din0_1 bank_din1_0 bank_din1_1 a0_0 a0_1 a0_2 a0_3 a1_0 a1_1 a1_2
+ a1_3 s_en0 s_en1 p_en_bar0 p_en_bar1 w_en0 w_en1 wl_en0 wl_en1 vccd1
+ vssd1
+ sram_16x2_bank
Xcontrol0
+ csb0 web0 clk0 rbl_bl0 s_en0 w_en0 p_en_bar0 wl_en0 clk_buf0 vccd1
+ vssd1
+ sram_16x2_control_logic_rw
Xcontrol1
+ csb1 web1 clk1 rbl_bl1 s_en1 w_en1 p_en_bar1 wl_en1 clk_buf1 vccd1
+ vssd1
+ sram_16x2_control_logic_rw
Xrow_address0
+ addr0[0] addr0[1] addr0[2] addr0[3] a0_0 a0_1 a0_2 a0_3 clk_buf0 vccd1
+ vssd1
+ sram_16x2_row_addr_dff
Xrow_address1
+ addr1[0] addr1[1] addr1[2] addr1[3] a1_0 a1_1 a1_2 a1_3 clk_buf1 vccd1
+ vssd1
+ sram_16x2_row_addr_dff
Xdata_dff0
+ din0[0] din0[1] bank_din0_0 bank_din0_1 clk_buf0 vccd1 vssd1
+ sram_16x2_data_dff
Xdata_dff1
+ din1[0] din1[1] bank_din1_0 bank_din1_1 clk_buf1 vccd1 vssd1
+ sram_16x2_data_dff
.ENDS sram_16x2
