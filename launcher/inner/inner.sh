#!/bin/bash
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=2
#SBATCH --job-name=rl
#SBATCH --time=240:00:00
source activate /home/mprattico/miniconda3/envs/policy_gradient_rl
python train.py --algo ppo --env Taxi-v3 -n 200000 -optimize --n-trials 2000 --n-jobs 2 --sampler tpe --pruner median --wandb-project-name "Policy-Gradient-Methods-Base-Test" --wandb-entity "iit_policy_gradient_methods" --progress --track -tags "hyperparams search"