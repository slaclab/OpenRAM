# See LICENSE for licensing information.
#
# Copyright (c) 2016-2023 Regents of the University of California and The Board
# of Regents for the Oklahoma Agricultural and Mechanical College
# (acting for and on behalf of Oklahoma State University)
# All rights reserved.
#
#!/usr/bin/python
"""
This type of setup script should be placed in the setup_scripts directory in
the trunk
"""

import sys
import os
from openram import debug

TECHNOLOGY = "TSMC28HPC+"
#PDK_PATH = "/u1/TSMC28HPC+"
##########################
# *** Below doesn't work for tsmcN28. Keep it commented ***
# Cadence tsmcN28 paths
PDK_PATH=os.environ.get("PDK_FOLDER")
print(PDK_PATH)
#if PDK_PATH==None:
#    debug.error("Must define FREEPDK45 to point to PDK.", -1)
PDK_DIR=os.path.abspath(PDK_PATH)
os.environ["PDK_DIR"] = PDK_DIR
os.environ["SYSTEM_CDS_LIB_DIR"] = "{0}/ncsu_basekit/cdssetup".format(PDK_DIR)
os.environ["CDS_SITE"] = PDK_DIR
os.environ["MGC_TMPDIR"] = "/tmp"
os.environ["SYSTEM_CDS_LIB_DIR"] = "{0}/ncsu_basekit/cdssetup".format(PDK_DIR)

###########################
#OpenRAM Paths

try:
    DRCLVS_HOME = os.path.abspath(os.environ.get("CALIBRE_HOME"))
except:
    print("Export the environment variable CALIBRE_HOME")

# If you are using Cadence, you should set the CALIBRE_HOME environment variable
# to the tsmcN28 location:
# DRCLVS_HOME= PDK_DIR+"Calibre"
os.environ["DRCLVS_HOME"] = DRCLVS_HOME

os.environ["SPICE_MODEL_DIR"] = "{0}/models/tran_models".format(os.path.dirname(__file__))
