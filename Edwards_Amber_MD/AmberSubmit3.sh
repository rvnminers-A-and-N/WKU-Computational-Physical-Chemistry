#!/bin/bash
#PBS -l procs=220
#PBS -o mpiAmber.out
#PBS -e mpiAmber.error

cd ~/1BKD_Assignment/1BKD_l_b_1/
mpirun sander -O -i 03_Prod.in -o 03_Prod.out -p prmtop -c 02_Heat.rst -r 03_Prod.rst -x 03_Prod.mdcrd -inf 03_Prod.mdinfo