#!/bin/sh
export OPENRAM_TECH="/u1/fanals/asic-data-operation/OpenRAM/technology:/u1/fanals/asic-data-operation/OpenRAM/compiler/../technology"
echo "$(date): Starting LVS using Netgen /u1/fanals/asic-data-operation/OpenRAM/miniconda/bin/netgen"
/u1/fanals/asic-data-operation/OpenRAM/miniconda/bin/netgen -noconsole << EOF
lvs {sram_16x2.spice sram_16x2} {sram_16x2.lvs.sp sram_16x2} setup.tcl sram_16x2.lvs.report -full -json
quit
EOF
magic_retcode=$?
echo "$(date): Finished ($magic_retcode) LVS using Netgen /u1/fanals/asic-data-operation/OpenRAM/miniconda/bin/netgen"
exit $magic_retcode
