#!/bin/bash
#PBS -l procs=220
#PBS -o mpiAmber.out
#PBS -e mpiAmber.error

cd ~/1BKD_Assignment/1BKD_l_b_1/
mpirun sander -O -i 04_Cool.in -o 04_Cool.out -p prmtop -c 03_Prod.rst -r 04_Cool.rst -x 04_Cool.mdcrd -inf 04_Cool.mdinfo