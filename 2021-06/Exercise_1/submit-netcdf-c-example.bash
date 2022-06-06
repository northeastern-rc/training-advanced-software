#!/bin/bash

##### Use outside training ########
#SBATCH --partition=debug
##### Use during training #########
##SBATCH --partition=reservation
##SBATCH --reservation=bootcamp2021cpu
###################################
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH -J test-netcdf-c

## Source the spack environment:
export SPACK_ROOT=$HOME/spack
source $SPACK_ROOT/share/spack/setup-env.sh

## Load the spack software:
spack load netcdf-c

## Run a NETCDF-C command (nc-condig assists with the setting of compiler and linker flags for building applications):
nc-config --all
