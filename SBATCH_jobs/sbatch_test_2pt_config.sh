#!/bin/bash
#SBATCH --nodes=3
#SBATCH --ntasks=64
#SBATCH --cpus-per-task=4
#SBATCH --qos=regular
#SBATCH --time=00:20:00
#SBATCH --constraint=cpu
#SBATCH --account=m230
#SBATCH --job-name=my_qlua_job
#SBATCH --output=test_qlua_job.out
#SBATCH --error=test_qlua_job.err

# Specify the email notifications
#SBATCH --mail-type=ALL
#SBATCH --mail-user=hari1729@nmsu.edu

export OMP_NUM_THREADS=1

# Change to the directory containing your qlua script
cd /global/homes/h/hari_8/QLUA_tutorials/propagator_dr_engelhardt


srun -n 192 /global/homes/s/smeinel/Perlmutter/QLUA/installation-202212-rc3-gcc/qlua/bin/qlua make_light_props_2PT_config.qlua
