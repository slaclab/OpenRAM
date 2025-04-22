# See LICENSE for licensing information.
#
# Copyright (c) 2016-2023 Regents of the University of California and The Board
# of Regents for the Oklahoma Agricultural and Mechanical College
# (acting for and on behalf of Oklahoma State University)
# All rights reserved.
#
import os
from openram import drc as d
#from drc.design_rules import design_rules
#from drc.module_type import module_type
#from drc.custom_cell_properties import cell_properties
#from drc.custom_layer_properties import layer_properties

"""
File containing the process technology parameters for TSMC 28nm.
"""

###################################################
# Custom modules
###################################################

# This uses the default classes to instantiate module from
# '$OPENRAM_HOME/compiler/modules'.
# Using tech_modules['cellname'] you can override each class by providing a custom
# implementation in '$OPENRAM_TECHDIR/modules/'
# For example: tech_modules['contact'] = 'contact_freepdk45'
tech_modules = d.module_type()


###################################################
# Custom cell properties
###################################################
cell_properties = d.cell_properties()

###################################################
# Custom cell properties
###################################################
layer_properties = d.layer_properties()

###################################################
# GDS file info
###################################################

GDS = {}
# gds units
# From http://www.cnf.cornell.edu/cnf_spie9.html: "The first
#is the size of a database unit in user units. The second is the size
#of a database unit in meters.  For example, if your library was
#created with the default units (user unit = 1 m and 1000 database
#units per user unit), then the first number would be 0.001 and the
#second number would be 10-9. Typically, the first number is less than
#1, since you use more than 1 database unit per user unit. To
#calculate the size of a user unit in meters, divide the second number
#by the first."
GDS["unit"] = (0.005,1e-6)
# default label zoom
GDS["zoom"] = 0.05

###################################################
# Interconnect stacks
###################################################

poly_stack = ("PO", "CO", "M1")
active_stack = ("OD", "CO", "M1")
m1_stack = ("M1", "VIA1", "M2")
m2_stack = ("M2", "VIA2", "M3")
m3_stack = ("M3", "VIA3", "M4")

#why do we need this indices?
layer_indices = {"PO": 0,
                 "OD": 0,
                 "M1": 1,
                 "M2": 2,
                 "M3": 3,
                 "M4": 4}

# The FEOL stacks get us up to m1
feol_stacks = [poly_stack,
               active_stack]

# The BEOL stacks are m1 and up
beol_stacks = [m1_stack,
               m2_stack,
               m3_stack]

layer_stacks = feol_stacks + beol_stacks

preferred_directions = {"PO": "V",
                        "OD": "V",
                        "M1": "H",
                        "M2": "V",
                        "M3": "H",
                        "M4": "V"}
###################################################
# Power grid
###################################################
# Use M3/M4
power_grid = m3_stack

###################################################
# GDS Layer Map
###################################################

# Create the GDS layer map using internal names
layer = {}
layer["OD"]     = (6, 0)
layer["PW"]     = (2, 0)
layer["NW"]     = (3, 0)
layer["NP"]     = (26, 0)
layer["PP"]     = (25, 0)
layer["VTUL_N"] = (151, 0)
layer["VTUL_P"] = (152, 0)
layer["VTL_N"]  = (12, 0)
layer["VTL_P"]  = (13, 0)
layer["VTH_N"]  = (7, 0)
layer["VTH_P"]  = (7, 0)
#layer["thkox"]   = (8, 0)
layer["PO"]     = (17, 0)
layer["PO1"]    = (17, 7)
layer["CO"]     = (30, 0)
layer["M1"]     = (31, 0)
layer["VIA1"]   = (51, 0)
layer["M2"]     = (32, 0)
layer["VIA2"]   = (52, 0)
layer["M3"]     = (33, 0)
layer["VIA3"]   = (53, 0)
layer["M4"]     = (34, 0)
layer["VIA4"]   = (54, 0)
layer["M5"]     = (35, 0)
layer["VIA5"]   = (55, 0)
layer["M6"]     = (36, 0)
layer["VIA6"]   = (56, 20)
layer["M7"]     = (37, 0)
layer["VIA7"]   = (57, 40)
layer["M8"]     = (38, 0)
layer["VIA8"]   = (58, 60)
layer["M9"]     = (39, 0)
#layer["VIA9"]   = (28, 0)
#layer["m10"] = (29, 0)
layer["text"]   = (127, 0)
layer["prBoundary"]= (108, 0)
layer["AP"]     = (74, 0)

use_purpose = {}

# Layer names for external PDKs
layer_names = {}
layer_names["OD"]      = "OD"
layer_names["PW"]      = "PW"
layer_names["NW"]      = "NW"
layer_names["NP"]      = "NP"
layer_names["PP"]      = "PP"
layer_names["VTUL_N"]  = "VTUL_N"
layer_names["VTUL_P"]  = "VTUL_P"
layer_names["VTL_N"]   = "VTL_N"
layer_names["VTL_P"]   = "VTL_P"
layer_names["VTH_N"]   = "VTH_N"
layer_names["VTH_P"]   = "VTH_P"
#layer_names["thkox"]   = "thkox"
layer_names["PO"]      = "PO"
layer_names["CO"]      = "CO"
layer_names["M1"]      = "M1"
layer_names["VIA1"]    = "VIA1"
layer_names["M2"]      = "M2"
layer_names["VIA2"]    = "VIA2"
layer_names["M3"]      = "M3"
layer_names["VIA3"]    = "VIA3"
layer_names["M4"]      = "M4"
layer_names["VIA4"]    = "VIA4"
layer_names["M5"]      = "M5"
layer_names["VIA5"]    = "VIA5"
layer_names["M6"]      = "M6"
layer_names["VIA6"]    = "VIA6"
layer_names["M7"]      = "M7"
layer_names["VIA7"]    = "VIA7"
layer_names["M8"]      = "M8"
layer_names["VIA8"]    = "VIA8"
layer_names["M9"]      = "M9"
layer_names["AP"]      = "AP"
layer_names["text"]    = "text"
layer_names["prBoundary"] = "prBoundary"

###################################################
# DRC/LVS Rules Setup
###################################################

#technology parameter
parameter={}
parameter["min_tx_size"] = 0.1
parameter["beta"] = 15.85

parameter["6T_inv_nmos_size"] = 0.1
parameter["6T_inv_pmos_size"] = 0.1
parameter["6T_access_size"] = 0.1

drclvs_home=os.environ.get("CALIBRE_HOME")

drc = d.design_rules("tsmcN28")

#grid size
drc["grid"] = 0.005

#DRC/LVS test set_up
drc["drc_rules"]=TSMC28_PDK + "/Calibre/drc/CLN28HP_9M_5X1Y1Z1U_002.21a_SLAC.encrypt"
drc["lvs_rules"]=TSMC28_PDK + "/Calibre/lvs/DFM_LVS_RC_CALIBRE_N28HP_1p9M_5X1Y1Z1U_ALRDL.v1.8_2p3a"
drc["xrc_rules"]=TSMC28_PDK + "/Calibre/pex/xrc_mapping"
drc["layer_map"]=os.environ.get("OPENRAM_TECH") + "/TSMC28HPC+/layers.map"

# minwidth_tx with contact (no dog bone transistors)
drc["minwidth_tx"] = 0.1
drc["minlength_channel"] = 0.03

# NW.S.3, NW.S.4 Minimum spacing of nwell/pwell at different potential
drc["NW_to_NW"] = 1
# NW.S.1 Minimum spacing of nwell/pwell at the same potential
# NW.W.1 Minimum width of nwell/pwell
drc.add_layer("NW",
              width=0.24,
              spacing=0.24)
drc.add_layer("PW",
              width=0.24,
              spacing=0.24)

# PO.W.1 Minimum width of poly
# PO.S.4 Minimum spacing of poly AND active
drc.add_layer("PO",
              width=0.03,
              spacing=0.1)

# PO.EX.1 Minimum poly extension beyond active
drc["PO_extend_OD"]=0.08
# Not a rule
drc["PO_to_CO"]=0.0
# PO.EX.1 Minimum enclosure of active around gate
drc["OD_enclose_gate"]=0.08
# PO.S.12 Minimum spacing of field poly to active
drc["PO_to_OD"]=0.025
# PO.S.4 Minimum Minimum spacing of field poly
drc["PO_to_field_PO"]=0.1
# PO.A.1
drc["minarea_PO"]=0.0115

# OD.W.1 Minimum width of active
# OD.S.3 Minimum spacing of active
drc.add_layer("OD",
              width=0.05,
              spacing=0.08)
# NW.S.7 Minimum enclosure/spacing of nwell/pwell to active
drc.add_enclosure("NW",
                  layer="OD",
                  enclosure=0.105)
drc.add_enclosure("PW",
                  layer="OD",
                  enclosure=0.105)

# NP.S.6 / PP.S.6 Minimum spacing of nimplant/ pimplant to channel
drc["PP_to_channel"]=0.16
drc["NP_to_channel"]=0.16
# NP.EN.1 /PP.EN.1 enclosure of OD
drc.add_enclosure("NP",
                  layer="OD",
                  enclosure=0.065)
drc.add_enclosure("PP",
                  layer="OD",
                  enclosure=0.065)
# Not a rule
drc.add_enclosure("NP",
                  layer="CO",
                  enclosure=0)
# CO.S.8 Minimum spacing of nimplant/ pimplant to contact
drc["NP_to_CO"]=0.035
drc["PP_to_CO"]=0.035
# NP/PP.W.1 Minimum width/ spacing of nimplant/ pimplant
# NP/PP.S.1 Minimum width/ spacing of nimplant/ pimplant
drc.add_layer("NP",
              width=0.16,
              spacing=0.16)
drc.add_layer("PP",
              width=0.16,
              spacing=0.16)

# CO.W.1 Minimum width of contact
# CO.S.1 Minimum spacing of contact
drc.add_layer("CO",
              width=0.04,
              spacing=0.07)
# CO.EN.1 Minimum enclosure of active around contact
drc.add_enclosure("OD",
                  layer="CO",
                  enclosure=0.005)

# CO.S.6 Minimum spacing of contact and gate
drc["OD_contact_to_gate"]=0.035
# CO.S.5 Minimum spacing of contact and poly
drc["PO_contact_to_gate"]=0.04

# # CONTACT.1 Minimum width of contact
# # CONTACT.2 Minimum spacing of contact
# drc.add_layer("contact",
#               width=0.065,
#               spacing=0.075)
# CO.EN.5 Minimum enclosure of poly around contact
drc.add_enclosure("PO",
                  layer="CO",
                  enclosure=0.015)
# CO.S.6 Minimum spacing of contact and gate
drc["contact_to_gate"]=0.035
# CO.S.5 Minimum spacing of contact and poly
drc["contact_to_poly"]=0.04

# M1.W.1 Minimum width of metal1
# M1.S.1 Minimum spacing of metal1
# M1 has special rules
drc.add_layer("M1",
              width=0.05,
              spacing=d.drc_lut({(0.00, 0.0): 0.05,
                                 (0.10, 0.22): 0.06,
                                 (0.18, 0.22): 0.1,
                                 (0.47, 0.47): 0.13,
                                 (0.63, 0.63): 0.15,
                                 (1.50, 1.50): 0.5}))

# M1.EN.2 Minimum enclosure around contact on two opposite sides
drc.add_enclosure("M1",
                  layer="CO",
                  enclosure=0,
                  extension=0.02)
# VIAx.EN.2 minimum enclosure around via1 on two opposite sides
drc.add_enclosure("M1",
                  layer="VIA1",
                  enclosure=0,
                  extension=0.03)

# VIAx.W.1 Minimum width of via1
# VIAx.S.1 Minimum spacing of via1
drc.add_layer("VIA1",
              width=0.05,
              spacing=0.08)


# Mx.W.1 Minimum width of intermediate metal
# Mx.S.1 Minimum spacing of intermediate metal
# Minimum spacing of Mx wider than 0.09 & longer than 0.22 = 0.06
# Minimum spacing of Mx wider than 0.16 & longer than 0.22 = 0.1
# Minimum spacing of Mx wider than 0.47 & longer than 0.47 = 0.13
# Minimum spacing of Mx wider than 0.63 & longer than 0.63 = 0.15
# Minimum spacing of Mx wider than 1.5  & longer than 1.5  = 0.5
# Same applies to All Mx (M2 - M6)
drc.add_layer("M2",
              width=0.05,
              spacing=d.drc_lut({(0.00, 0.0): 0.05,
                                 (0.09, 0.22): 0.06,
                                 (0.16, 0.22): 0.1,
                                 (0.47, 0.47): 0.13,
                                 (0.63, 0.63): 0.15,
                                 (1.50, 1.50): 0.5}))

# VIAx.EN.2 Minimum enclosure around via1 on two opposite sides
drc.add_enclosure("M2",
                  layer="VIA1",
                  enclosure=0,
                  extension=0.03)

# VIAx.EN.2 Minimum enclosure around via[x] on two opposite sides
drc.add_enclosure("M2",
                  layer="VIA2",
                  enclosure=0,
                  extension=0.03)

# VIAx.W.1 Minimum width of Via[x]
# VIAx.S.1 Minimum spacing of Via[x]
drc.add_layer("VIA2",
              width=0.05,
              spacing=0.08)

# M3 = Mx
drc.add_layer("M3",
              width=0.05,
              spacing=d.drc_lut({(0.00, 0.0): 0.05,
                                 (0.09, 0.22): 0.06,
                                 (0.16, 0.22): 0.1,
                                 (0.47, 0.47): 0.13,
                                 (0.63, 0.63): 0.15,
                                 (1.50, 1.50): 0.5}))
#VIAx.EN.2 Minimum enclosure around via1 on two opposite sides
drc.add_enclosure("M3",
                  layer="VIA2",
                  enclosure=0,
                  extension=0.03)

#VIAx.EN.2 Minimum enclosure around via[x] on two opposite sides
drc.add_enclosure("M3",
                  layer="VIA3",
                  enclosure=0,
                  extension=0.03)

#VIAx.W.1 Minimum width of Via[x]
#VIAx.S.4 Minimum spacing of Via[x]
drc.add_layer("VIA3",
              width=0.05,
              spacing=0.08)

# M4 = Mx
drc.add_layer("M4",
              width=0.05,
              spacing=d.drc_lut({(0.00, 0.0): 0.05,
                                 (0.09, 0.22): 0.06,
                                 (0.16, 0.22): 0.1,
                                 (0.47, 0.47): 0.13,
                                 (0.63, 0.63): 0.15,
                                 (1.50, 1.50): 0.5}))
# VIAx.EN.2 Minimum enclosure around via[x] on two opposite sides
drc.add_enclosure("M4",
                  layer="VIA3",
                  enclosure=0.03)

#VIAx.EN.2 Minimum enclosure around via[x] on two opposite sides
drc.add_enclosure("M4",
                  layer="VIA4",
                  enclosure=0,
                  extension=0.03)

#VIAx.W.1 Minimum width of Via[x]
#VIAx.S.4 Minimum spacing of Via[x]
drc.add_layer("VIA4",
              width=0.05,
              spacing=0.08)

# M5 = Mx
drc.add_layer("M5",
              width=0.05,
              spacing=d.drc_lut({(0.00, 0.0): 0.05,
                                 (0.09, 0.22): 0.06,
                                 (0.16, 0.22): 0.1,
                                 (0.47, 0.47): 0.13,
                                 (0.63, 0.63): 0.15,
                                 (1.50, 1.50): 0.5}))
# VIAx.EN.2 Minimum enclosure around via[x] on two opposite sides
drc.add_enclosure("M5",
                  layer="VIA4",
                  enclosure=0.03)

#VIAx.EN.2 Minimum enclosure around via[x] on two opposite sides
drc.add_enclosure("M5",
                  layer="VIA5",
                  enclosure=0,
                  extension=0.03)

#VIAx.W.1 Minimum width of Via[x]
#VIAx.S.4 Minimum spacing of Via[x]
drc.add_layer("VIA5",
              width=0.05,
              spacing=0.08)

# M6 = Mx
drc.add_layer("M6",
              width=0.05,
              spacing=d.drc_lut({(0.00, 0.0): 0.05,
                                 (0.09, 0.22): 0.06,
                                 (0.16, 0.22): 0.1,
                                 (0.47, 0.47): 0.13,
                                 (0.63, 0.63): 0.15,
                                 (1.50, 1.50): 0.5}))
# VIAx.EN.2 Minimum enclosure around via[x] on two opposite sides
drc.add_enclosure("M6",
                  layer="VIA5",
                  enclosure=0.03)

#VIAx.EN.2 Minimum enclosure around via[x] on two opposite sides
drc.add_enclosure("M6",
                  layer="VIA6",
                  enclosure=0,
                  extension=0.03)

#VIAx.W.1 Minimum width of Via[x]
#VIAx.S.4 Minimum spacing of Via[x]
drc.add_layer("VIA6",
              width=0.05,
              spacing=0.08)

# M7 = My
drc.add_layer("M7",
              width=0.1,
              spacing=d.drc_lut({(0.00, 0.0): 0.1,
                                 (0.2, 0.38): 0.12,
                                 (0.4, 0.4): 0.16,
                                 (1.5, 1.5): 0.5,
                                 (4.5, 4.5): 1.5}))
# VIAy.EN.2 Minimum enclosure around via[x] on two opposite sides
drc.add_enclosure("M7",
                  layer="VIA6",
                  enclosure=0.04)

#VIAy.EN.2 Minimum enclosure around via[y] on two opposite sides
drc.add_enclosure("M7",
                  layer="VIA7",
                  enclosure=0,
                  extension=0.04)

#VIAy.W.1 Minimum width of Via[y]
#VIAy.S.3 Minimum spacing of Via[y]
drc.add_layer("VIA7",
              width=0.1,
              spacing=0.13)

# M8 = Mz
drc.add_layer("M8",
              width=0.4,
              spacing=d.drc_lut({(0.00, 0.0): 0.4,
                                 (1.5, 1.5): 0.5,
                                 (4.5, 4.5): 1.5}))
# VIAz.EN.2 Minimum enclosure around via[x,y] on two opposite sides
drc.add_enclosure("M8",
                  layer="VIA7",
                  enclosure=0.08)

#VIAz.EN.2 Minimum enclosure around via[z] on two opposite sides
drc.add_enclosure("M8",
                  layer="VIA8",
                  enclosure=0,
                  extension=0.08)

#VIAz.W.1 Minimum width of Via[y]
#VIAz.S.3 Minimum spacing of Via[y]
drc.add_layer("VIA8",
              width=0.36,
              spacing=0.54)

# M9 = Mu
drc.add_layer("M9",
              width=2.0,
              spacing=d.drc_lut({(0.00, 0.0): 1.0,
                                 (4.5, 4.5): 1.5}))
# VIAu.EN.1 Minimum enclosure around via[u] on two opposite sides
drc.add_enclosure("M9",
                  layer="VIA8",
                  enclosure=0.3)

###################################################
# Spice Simulation Parameters
###################################################

#spice info
spice = {}
spice["nch"] = "nch_mac"
spice["pch"] = "pch_mac"
# This is a map of corners to model files
SPICE_MODEL_DIR=os.environ.get("SPICE_MODEL_DIR")
spice["fet_models"] = {"TT": [SPICE_MODEL_DIR + "mos_models"],
                       "FF": [SPICE_MODEL_DIR + "mos_models"],
                       "SF": [SPICE_MODEL_DIR + "mos_models"],
                       "FS": [SPICE_MODEL_DIR + "mos_models"],
                       "SS": [SPICE_MODEL_DIR + "mos_models"],
                       }

#spice stimulus related variables
spice["feasible_period"] = 1         # estimated feasible period in ns
spice["supply_voltages"] = [0.8, 0.9, 1.0] # Supply voltage corners in [Volts]
spice["nom_supply_voltage"] = 0.9    # Nominal supply voltage in [Volts]
spice["rise_time"] = 0.001           # rise time in [Nano-seconds]
spice["fall_time"] = 0.001           # fall time in [Nano-seconds]
spice["temperatures"] = [0, 25, 100] # Temperature corners (celcius)
spice["nom_temperature"] = 25        # Nominal temperature (celcius)

# analytical delay parameters
spice["nom_threshold"] = 0.245  # Typical Threshold voltage in Volts
spice["wire_unit_r"] = 0.5e-3      # Unit wire resistance in ohms/square (for copper wire)
spice["wire_unit_c"] = 0.5e-15   # Unit wire capacitance F/um^2, (for copper wire)
spice["min_tx_drain_c"] = 0.1    # Minimum transistor drain capacitance in ff (~100aF)
spice["min_tx_gate_c"] =  0.1    # Minimum transistor gate capacitance in ff  (~100aF)
spice["dff_setup"] = 17.5        # DFF setup time in ps
spice["dff_hold"] = 8.7         # DFF hold time in ps
spice["dff_in_cap"] = 0.5493    # Input capacitance (D) [Femto-farad]
spice["dff_out_cap"] = 118.93   # Output capacitance (Q) [Femto-farad]

# analytical power parameters, many values are temporary
spice["bitcell_leakage"] = 1     # Leakage power of a single bitcell in nW
spice["inv_leakage"] = 1         # Leakage power of inverter in nW
spice["nand2_leakage"] = 1       # Leakage power of 2-input nand in nW
spice["nand3_leakage"] = 1       # Leakage power of 3-input nand in nW
spice["nand4_leakage"] = 1       # Leakage power of 4-input nand in nW
spice["nor2_leakage"] = 1        # Leakage power of 2-input nor in nW
spice["dff_leakage"] = 1      # Leakage power of flop in nW

spice["default_event_frequency"] = 100     # Default event activity of every gate. MHz

# Parameters related to sense amp enable timing and delay chain/RBL sizing
parameter["le_tau"] = 2.25                  # In pico-seconds.
parameter["cap_relative_per_ff"] = 7.5      # Units of Relative Capacitance/ Femto-Farad
parameter["dff_clk_cin"] = 30.6             # relative capacitance
parameter["6tcell_wl_cin"] = 3              # relative capacitance
parameter["min_inv_para_delay"] = 2.4       # Tau delay units
parameter["sa_en_pmos_size"] = 0.72         # micro-meters
parameter["sa_en_nmos_size"] = 0.27         # micro-meters
parameter["sa_inv_pmos_size"] = 0.54        # micro-meters
parameter["sa_inv_nmos_size"] = 0.27        # micro-meters
parameter["bitcell_drain_cap"] = 0.1        # In Femto-Farad, approximation of drain capacitance

# Spice Values uses to calculate analytical delay based on CACTI equations
spice["i_on_n"] = 0.0004463 # A/um
spice["i_on_p"] = 0.0000771   # A/um
spice["tox"] = 0.00114        # microns
spice["eps_ox"] = 0.00245e-14  # F/um, calculated from CACTI 45nm data
spice["cox"] = spice["eps_ox"]/spice["tox"] # F/um^2
spice["c_g_ideal"] = spice["cox"]*drc["minlength_channel"] # F/um
spice["c_overlap"] = 0.2*spice["c_g_ideal"] # F/um
spice["c_fringe"] = 0 # F/um, not defined in this technology
spice["cpolywire"] = 0 # F/um, replicated from CACTI which is hardcoded to 0
spice["c_junc"] = 5e-16 #F/um^2
spice["c_junc_sw"] = 5e-16 #F/um
spice["wire_c_per_um"] = spice["wire_unit_c"]*drc["minwidth_m2"] # Unit c by m2 width,  F/um units
spice["wire_r_per_um"] = spice["wire_unit_r"]/drc["minwidth_m2"] # Unit r per m2 width, Ohms/um units
spice["mobility_n"] = 0.045e8   # um^2/(V*s)
spice["V_dsat"] = 0.0938        # From CACTI 45nm tech
spice["sa_transconductance"] = (spice["mobility_n"])*spice["cox"]*(parameter["sa_inv_nmos_size"]/parameter["min_tx_size"])*spice["V_dsat"]
###################################################
# Technology Tool Preferences
###################################################

drc_name = "calibre"
lvs_name = "calibre"
pex_name = "calibre"

#drc_name = "klayout"
#lvs_name = "klayout"
#pex_name = "klayout"

blackbox_bitcell = False
