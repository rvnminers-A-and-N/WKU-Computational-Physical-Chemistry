#!/bin/bash
#PBS -l procs=220
#PBS -o mpiAmber.out
#PBS -e mpiAmber.error

cd ~/Amber_MD/
mpirun sander -O -i 01_Min.in -o 01_Min.out -p prmtop -c inpcrd -r 01_Min.rst -inf 01_Min.mdinfo
mpirun sander -O -i 02_NPT.in -o 02_NPT.out -p prmtop -c 01_Min.rst -r 02_NPT.rst -inf 02_NPT.mdinfo
mpirun sander -O -i 03_NVT.in -o 03_NVT.out -p prmtop -c 02_NPT.rst -r 03_NVT.rst -x 03_NVT.mdcrd -inf 03_NVT.mdinfo
mpirun sander -O -i 04_Prod.in -o 04_Prod.out -p prmtop -c 03_NVT.rst -r 04_Prod.rst -x 04_Prod.mdcrd -inf 04_Prod.mdinfo
mpirun sander -O -i 05_NVT.in -o 05_NVT.out -p prmtop -c 04_Prod.rst -r 05_NVT.rst -x 05_NVT.mdcrd -inf 05_NVT.mdinfo
