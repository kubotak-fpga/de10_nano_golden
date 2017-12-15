#!/bin/bash


# create workig directory

if [ -e ./work ]; then
    echo "delete working directory"
    rm -rf work
fi 


if [ ! -e ./work ]; then
    echo "create working directory"
    vlib ./work
fi


## source file compile ###########
vlog ../../hdl/source/de10_nano_golden_top.v


## compile test_bench ############
vlog ./tb_top.v

