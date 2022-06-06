#!/bin/bash
##### Use outside training ########
#SBATCH --partition=express
##### Use during training #########
##SBATCH --partition=reservation
##SBATCH --reservation=bootcamp2021cpu
###################################
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH -J test-netcdf-c

## Source the netcdf-c environment:
source env-netcdef-c.sh

## Run a NETCDF-C command (nc-condig assists with the setting of compiler and linker flags for building applications):
nc-config --all
