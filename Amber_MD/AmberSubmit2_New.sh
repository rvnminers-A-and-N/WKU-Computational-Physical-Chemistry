#!/bin/bash
#PBS -l procs=220
#PBS -o mpiAmber.out
#PBS -e mpiAmber.error

cd ~/Amber_MD/
mpirun sander -O -i 02_NPT.in -o 02_NPT.out -p prmtop -c 01_Min.rst -r 02_NPT.rst -inf 02_NPT.mdinfo
