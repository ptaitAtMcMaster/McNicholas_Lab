#!/bin/bash
#SBATCH --account=def-mcnichol-ab
#SBATCH --time=00:01:00
#SBATCH --job-name=serial1
#SBATCH --output=output/%x-%j.out
#SBATCH --mem-per-cpu=1000M
echo 'Hello, world! This is a SERIAL job'

