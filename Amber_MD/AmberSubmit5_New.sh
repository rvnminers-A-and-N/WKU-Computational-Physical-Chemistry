#!/bin/bash
#PBS -l procs=220
#PBS -o mpiAmber.out
#PBS -e mpiAmber.error

cd ~/Amber_MD/
mpirun sander -O -i 05_NVT.in -o 05_NVT.out -p prmtop -c 04_Prod.rst -r 05_NVT.rst -x 05_NVT.mdcrd -inf 05_NVT.mdinfo
