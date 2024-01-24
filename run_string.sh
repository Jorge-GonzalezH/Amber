#!/bin/bash
#
#PBS -l ncpus=2
#PBS -l walltime=500:00:00
#PBS -l cput=2000:00:00
#PBS -j oe

NODES=24

export I_MPI_COMPATIBILITY=3

DIR=$(pwd)
cd ${DIR}/
##source ~/opt/amber20/amber.sh
source ~/opt/amber20_src/amber.sh
#source ~/opt/amber20_src_save/amber.sh
 
echo "set work directory"

mkdir results
./in.sh $NODES

mpirun -np 24 sander.MPI.str -ng $NODES -groupfile string.groupfile

#$AMBERHOME/bin/sander -ng $NODES -groupfile string.groupfile
#$AMBERHOME/bin/sander -ng $NODES -groupfile string.groupfile

