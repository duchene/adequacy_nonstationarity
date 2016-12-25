#!/bin/bash
#BATCH -N test_phys
#BATCH -l ncpus=1
#BATCH -l walltime=00:02:00
#BATCH -l mem=4GB
#BATCH -P RDS-FSC-Phylogenomics-RW
#BATCH -q compute
#BATCH -p physical
cd $BATCH_O_WORKDIR
echo wowo
