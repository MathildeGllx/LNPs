#!/bin/bash
#requesting the number of cores needed on exclusive nodes
#SBATCH -n 1
#
# job time, change for what your job requires
#SBATCH -t 100:0:0
#
# job name
#SBATCH -J L_fluct_N150_HD4.8Rcyl_16
#
# filenames stdout and stderr
#SBATCH -o out
#SBATCH -e err

module load GCCcore/6.3.0

source activate /home/knpn055/conda-venv/
/home/knpn055/conda-venv/bin/faunus/faunus --input input.json --output out.json