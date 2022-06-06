#!/bin/bash

#====================================================================================
#title           :env-netcdef-c.sh
#description     :This script sources NETCDF-C shell environment.
#author          :Mariana Levi
#date            :June 2021
#version         :0.1    
#usage           :source env-netcdef-c.sh
#notes           :Uses Intel 2021.2.0 compilers and MPI libraries. Loads HDF5 libraries.
#bash_version    :4.2.46(2)-release (x86_64-redhat-linux-gnu)
#====================================================================================

## Set the user-defined path - all libraries will be installed inside:
export netcdf_dir=$HOME/NETCDF-C

## Load dependency libraries:
module load intel/compilers-2021.2.0
module load intel/mpi-2021.2.0
module load hdf5/1.12.0-intel2021.2

## Set the NETCDF-C path environment variables:
export PATH=$netcdf_dir/bin:$PATH
export LD_LIBRARY_PATH=$netcdf_dir/lib:$LD_LIBRARY_PATH
export LIBRARY_PATH=$netcdf_dir/lib:$LIBRARY_PATH
export CPATH=$netcdf_dir/include:$CPATH

