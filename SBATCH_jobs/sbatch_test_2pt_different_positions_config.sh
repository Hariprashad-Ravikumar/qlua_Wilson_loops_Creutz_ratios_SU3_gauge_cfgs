#!/bin/bash
#SBATCH --nodes=3
#SBATCH --ntasks=64
#SBATCH --cpus-per-task=4
#SBATCH --qos=regular
#SBATCH --time=01:59:00
#SBATCH --constraint=cpu
#SBATCH --account=m230
#SBATCH --job-name=2000_04_08_12_16_hadspec_proton3_2pt_different_point_02408_source

# Specify the email notifications
#SBATCH --mail-type=ALL
#SBATCH --mail-user=hari1729@nmsu.edu

export OMP_NUM_THREADS=1

# Change to the directory containing your qlua script
cd /global/homes/h/hari_8/QLUA_tutorials/propagator_dr_engelhardt

srun -n 192 /global/homes/s/smeinel/Perlmutter/QLUA/installation-202212-rc3-gcc/qlua/bin/qlua cfg_1848_proton3_s02408_hadspec_mom_proj.qlua
