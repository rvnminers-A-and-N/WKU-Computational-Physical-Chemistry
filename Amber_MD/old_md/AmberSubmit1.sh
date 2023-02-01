#!/bin/bash
#PBS -l procs=220
#PBS -o mpiAmber.out
#PBS -e mpiAmber.error

cd ~/1BKD_Assignment/1BKD_l_b_1/
mpirun sander -O -i 01_Min.in -o 01_Min.out -p prmtop -c inpcrd -r 01_Min.rst -inf 01_Min.mdinfo


