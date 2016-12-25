#!/bin/bash
#SBATCH -p cloud
#SBATCH --job-name="nonstat"
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=1
#SBATCH --mem-per-cpu=8000
#SBATCH --time=72:00:00

module load R
module load PhyML
Rscript run.mladeq.Rscript
