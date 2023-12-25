#!/bin/bash
#SBATCH --nodes=3
#SBATCH --ntasks=64
#SBATCH --cpus-per-task=4
#SBATCH --qos=regular
#SBATCH --time=08:30:00
#SBATCH --constraint=cpu
#SBATCH --account=m230
#SBATCH --job-name=three_pt
#SBATCH --output=3pt_qlua_job.out
#SBATCH --error=3pt_qlua_job.err


# Specify the email notifications
#SBATCH --mail-type=ALL
#SBATCH --mail-user=hari1729@nmsu.edu

export OMP_NUM_THREADS=1

# Change to the directory containing your qlua script
cd /pscratch/sd/h/hari_8/propagator_2pt_3pt/Three_PT

srun -n 192 /global/homes/s/smeinel/Perlmutter/QLUA/installation-202212-rc3-gcc/qlua/bin/qlua ThreePT_from_clover_3pt.qlua
