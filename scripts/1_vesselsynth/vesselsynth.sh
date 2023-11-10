#!/bin/bash
# Project name
#$ -P npbssmic
# Time limit specification (same as Etienne's)
#$ -l h_rt=1:00:00
# job name
#$ -N vesselsynth
# Merge the error and output into a single file
#$ -j y
 
# Activating vesselsynth environment
# module load miniconda/23.5.2
# conda activate vesselsynth
 
# Making sure we're in the veritas project folder
cd /projectnb/npbssmic/s/jedelist/veritas

# Add veritas to your python path
export PYTHONPATH=/projectnb/npbssmic/s/jedelist/veritas:$PYTHONPATH

# Run py script and redirecting output stream to the log file
python3 /projectnb/npbssmic/s/jedelist/veritas/scripts/1_vesselsynth/vessels_oct.py > /projectnb/npbssmic/s/jedelist/veritas-main/logs/vesselsynth.log 2>&1
