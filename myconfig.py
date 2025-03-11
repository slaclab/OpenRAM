# Data word size
word_size = 32
# Number of words in the memory
num_words = 16

# num_spare_cols = 1
num_rw_ports = 2

# This is the technology directory.
openram_tech = "skywater-pdk"
# This is the name of the technology.
tech_name = "sky130"

# Process corners to characterize
process_corners = [ "TT" ]
# Voltage corners to characterize
supply_voltages = [ 3.3 ]
# Temperature corners to characterize
temperatures = [ 25 ]

# Output directory for the results
output_path = "temp2"
# Output file base name
output_name = "sram_16x2"

# Disable analytical models for full characterization (WARNING: slow!)
# analytical_delay = False

# To force this to use magic and netgen for DRC/LVS/PEX
# Could be calibre for FreePDK45
drc_name = "magic"
lvs_name = "netgen"
pex_name = "magic"
# Activate LVS/DRC/PEX
check_lvsdrc = True

# Characterize
analytical_delay=False
