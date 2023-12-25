#!/bin/bash
#SBATCH --nodes=3
#SBATCH --ntasks=128
#SBATCH --cpus-per-task=2
#SBATCH --qos=regular
#SBATCH --time=08:00:00
#SBATCH --constraint=cpu
#SBATCH --account=m230
#SBATCH --job-name=cfgs_wilson_20x20_loops
#SBATCH --output=wilson_qlua_job.out
#SBATCH --error=wilson_qlua_job.err

# Specify the email notifications
#SBATCH --mail-type=ALL
#SBATCH --mail-user=hari1729@nmsu.edu

export OMP_NUM_THREADS=1

# Change to the directory containing your qlua script
cd /global/homes/h/hari_8/QLUA_tutorials

srun -n 256 /global/homes/s/smeinel/Perlmutter/QLUA/installation-202212-rc3-gcc/qlua/bin/qlua wilson_loop_function.qlua
