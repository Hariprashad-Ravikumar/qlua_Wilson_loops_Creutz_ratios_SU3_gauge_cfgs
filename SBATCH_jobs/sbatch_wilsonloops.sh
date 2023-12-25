#!/bin/bash
#SBATCH --nodes=3
#SBATCH --ntasks=64
#SBATCH --cpus-per-task=4
#SBATCH --qos=regular
#SBATCH --time=09:00:00
#SBATCH --constraint=cpu
#SBATCH --account=m230
#SBATCH --job-name=job_wilsonloops1234

# Specify the email notifications
#SBATCH --mail-type=ALL
#SBATCH --mail-user=hari1729@nmsu.edu

export OMP_NUM_THREADS=1

# Change to the directory containing your qlua script
cd /global/homes/h/hari_8/QLUA_tutorials


srun /global/homes/s/smeinel/Perlmutter/QLUA/installation-202212-rc3-gcc/qlua/bin/qlua plaquette_wilson_config_time_slice.qlua




