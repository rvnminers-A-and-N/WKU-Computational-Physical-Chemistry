#!/bin/bash
#PBS -l procs=220
#PBS -o mpiAmber.out
#PBS -e mpiAmber.error

cd ~/1BKD_Assignment/1BKD_l_b_1/
mpirun sander -O -i 05_Prod.in -o 05_Prod.out -p prmtop -c 04_Cool.rst -r 05_Prod.rst -x 05_Prod.mdcrd -inf 05_Prod.mdinfo