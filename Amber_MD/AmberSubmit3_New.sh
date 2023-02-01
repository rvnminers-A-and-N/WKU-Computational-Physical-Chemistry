#!/bin/bash
#PBS -l procs=220
#PBS -o mpiAmber.out
#PBS -e mpiAmber.error

cd ~/Amber_MD/
mpirun sander -O -i 03_NVT.in -o 03_NVT.out -p prmtop -c 02_NPT.rst -r 03_NVT.rst -x 03_NVT.mdcrd -inf 03_NVT.mdinfo
