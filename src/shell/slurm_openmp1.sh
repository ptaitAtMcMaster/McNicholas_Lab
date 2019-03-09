#!/bin/bash
#SBATCH --account=def-mcnichol-ab
#SBATCH --time=0-0:5
#SBATCH --job-name=openmp1
#SBATCH --output=output/%x-%j.out
#SBATCH --mem-per-cpu=1000M
#SBATCH --cpus-per-task=5

echo 'Hello, world! This is a OPENMP job'

