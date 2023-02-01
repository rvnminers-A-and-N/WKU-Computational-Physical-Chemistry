#!/bin/bash
#PBS -l procs=220
#PBS -o mpiAmber.out
#PBS -e mpiAmber.error

cd ~/Amber_MD/
mpirun sander -O -i 04_Prod.in -o 04_Prod.out -p prmtop -c 03_NVT.rst -r 04_Prod.rst -x 04_Prod.mdcrd -inf 04_Prod.mdinfo
