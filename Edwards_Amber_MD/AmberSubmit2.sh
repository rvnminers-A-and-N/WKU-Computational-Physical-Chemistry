#!/bin/bash
#PBS -l procs=220
#PBS -o mpiAmber.out
#PBS -e mpiAmber.error

cd ~/1BKD_Assignment/1BKD_l_b_1/
mpirun sander -O -i 02_Heat.in -o 02_Heat.out -p prmtop -c 01_Min.rst -r 02_Heat.rst -inf 02_Heat.mdinfo
