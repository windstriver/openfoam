#!/bin/sh
#$ -V
#$ -cwd
#$ -S /bin/bash
#$ -N TURBGEN
#$ -o $JOB_NAME.o$JOB_ID
#$ -e $JOB_NAME.e$JOB_ID
#$ -q omni
#$ -pe mpi 36
#$ -P quanah

module load matlab
matlab -nodisplay -nosplash < main.m
