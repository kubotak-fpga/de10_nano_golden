#!/bin/bash


#cp ../../../hdl/ram/*.mif ./
#cp ./simulation/submodules/*.hex .

# vsim top_sim work.glbl \
    vsim tb_top \
#   -vopt \
   -voptargs="+acc" \
   -Lf work \
    -L altera_lnsim_ver \
    -L altera_mf_ver \
    -L altera_ver \
    -L lpm_ver \
    -L sgate_ver \
    -L twentynm_hip_ver \
    -L twentynm_hssi_ver \
    -L twentynm_ver
    
















