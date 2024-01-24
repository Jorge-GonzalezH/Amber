#!/bin/bash
#
# If running on cluster, add queing system settings here
# e.g. for PBS (replace JOB with PBS):
#JOB -l walltime=3:00:00,nodes=1:ppn=1
#JOB -N us5_wt
#JOB -j oe
#
# 0. Run what you need to run to set AMBERHOME ('Load amber')
#source $HOME/amber16/amber.sh
#
# 1. Set  working directory   
export MYDIR="/home/jovyan/us5"
#
# Change into the simulation run directory
cd $MYDIR
#
# 2. Set the executable name  
#
export MYEXE="$AMBERHOME/bin/sander"
# ---------------------------------------------------------------
# EXECUTE a number of amber jobs
cd /home/jovyan/us5/rc-1.80
$MYEXE -O -i md1ps.i -o md1ps.log -p ../../data/wt.sp20.top -c ../md.rst -x md1ps.nc -r md1ps.rst
cd /home/jovyan/us5/rc-1.65
$MYEXE -O -i md1ps.i -o md1ps.log -p ../../data/wt.sp20.top -c ../rc-1.80/md1ps.rst -x md1ps.nc -r md1ps.rst
cd /home/jovyan/us5/rc-1.50
$MYEXE -O -i md1ps.i -o md1ps.log -p ../../data/wt.sp20.top -c ../rc-1.65/md1ps.rst -x md1ps.nc -r md1ps.rst
cd /home/jovyan/us5/rc-1.35
$MYEXE -O -i md1ps.i -o md1ps.log -p ../../data/wt.sp20.top -c ../rc-1.50/md1ps.rst -x md1ps.nc -r md1ps.rst
cd /home/jovyan/us5/rc-1.20
$MYEXE -O -i md1ps.i -o md1ps.log -p ../../data/wt.sp20.top -c ../rc-1.35/md1ps.rst -x md1ps.nc -r md1ps.rst
cd /home/jovyan/us5/rc-1.05
$MYEXE -O -i md1ps.i -o md1ps.log -p ../../data/wt.sp20.top -c ../rc-1.20/md1ps.rst -x md1ps.nc -r md1ps.rst
cd /home/jovyan/us5/rc-0.90
$MYEXE -O -i md1ps.i -o md1ps.log -p ../../data/wt.sp20.top -c ../rc-1.05/md1ps.rst -x md1ps.nc -r md1ps.rst
cd /home/jovyan/us5/rc-0.75
$MYEXE -O -i md1ps.i -o md1ps.log -p ../../data/wt.sp20.top -c ../rc-0.90/md1ps.rst -x md1ps.nc -r md1ps.rst
cd /home/jovyan/us5/rc-0.60
$MYEXE -O -i md1ps.i -o md1ps.log -p ../../data/wt.sp20.top -c ../rc-0.75/md1ps.rst -x md1ps.nc -r md1ps.rst
cd /home/jovyan/us5/rc-0.45
$MYEXE -O -i md1ps.i -o md1ps.log -p ../../data/wt.sp20.top -c ../rc-0.60/md1ps.rst -x md1ps.nc -r md1ps.rst
cd /home/jovyan/us5/rc-0.30
$MYEXE -O -i md1ps.i -o md1ps.log -p ../../data/wt.sp20.top -c ../rc-0.45/md1ps.rst -x md1ps.nc -r md1ps.rst
cd /home/jovyan/us5/rc-0.15
$MYEXE -O -i md1ps.i -o md1ps.log -p ../../data/wt.sp20.top -c ../rc-0.30/md1ps.rst -x md1ps.nc -r md1ps.rst
cd /home/jovyan/us5/rc0.00
$MYEXE -O -i md1ps.i -o md1ps.log -p ../../data/wt.sp20.top -c ../rc-0.15/md1ps.rst -x md1ps.nc -r md1ps.rst
cd /home/jovyan/us5/rc0.15
$MYEXE -O -i md1ps.i -o md1ps.log -p ../../data/wt.sp20.top -c ../rc0.00/md1ps.rst -x md1ps.nc -r md1ps.rst
cd /home/jovyan/us5/rc0.30
$MYEXE -O -i md1ps.i -o md1ps.log -p ../../data/wt.sp20.top -c ../rc0.15/md1ps.rst -x md1ps.nc -r md1ps.rst
cd /home/jovyan/us5/rc0.45
$MYEXE -O -i md1ps.i -o md1ps.log -p ../../data/wt.sp20.top -c ../rc0.30/md1ps.rst -x md1ps.nc -r md1ps.rst
cd /home/jovyan/us5/rc0.60
$MYEXE -O -i md1ps.i -o md1ps.log -p ../../data/wt.sp20.top -c ../rc0.45/md1ps.rst -x md1ps.nc -r md1ps.rst
cd /home/jovyan/us5/rc0.75
$MYEXE -O -i md1ps.i -o md1ps.log -p ../../data/wt.sp20.top -c ../rc0.60/md1ps.rst -x md1ps.nc -r md1ps.rst
cd /home/jovyan/us5/rc0.90
$MYEXE -O -i md1ps.i -o md1ps.log -p ../../data/wt.sp20.top -c ../rc0.75/md1ps.rst -x md1ps.nc -r md1ps.rst
cd /home/jovyan/us5/rc1.05
$MYEXE -O -i md1ps.i -o md1ps.log -p ../../data/wt.sp20.top -c ../rc0.90/md1ps.rst -x md1ps.nc -r md1ps.rst
cd /home/jovyan/us5/rc1.20
$MYEXE -O -i md1ps.i -o md1ps.log -p ../../data/wt.sp20.top -c ../rc1.05/md1ps.rst -x md1ps.nc -r md1ps.rst
cd /home/jovyan/us5/rc1.35
$MYEXE -O -i md1ps.i -o md1ps.log -p ../../data/wt.sp20.top -c ../rc1.20/md1ps.rst -x md1ps.nc -r md1ps.rst
cd /home/jovyan/us5/rc1.50
$MYEXE -O -i md1ps.i -o md1ps.log -p ../../data/wt.sp20.top -c ../rc1.35/md1ps.rst -x md1ps.nc -r md1ps.rst
cd /home/jovyan/us5/rc1.65
$MYEXE -O -i md1ps.i -o md1ps.log -p ../../data/wt.sp20.top -c ../rc1.50/md1ps.rst -x md1ps.nc -r md1ps.rst
cd /home/jovyan/us5/rc1.80
$MYEXE -O -i md1ps.i -o md1ps.log -p ../../data/wt.sp20.top -c ../rc1.65/md1ps.rst -x md1ps.nc -r md1ps.rst
