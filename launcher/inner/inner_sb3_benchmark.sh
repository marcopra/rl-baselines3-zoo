#!/bin/bash
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=1
#SBATCH --job-name=benchmark
#SBATCH --time=240:00:00
source activate /home/mprattico/miniconda3/envs/policy_gradient_rl
python train.py --algo $1 --env $2 --seed $3 --hyperparams policy_kwargs:"dict(activation_fn=nn.Softmax, net_arch=dict(pi=[], vf=[]))" --track --wandb-project-name "Benchmark" -P -tags "Softmax Param" "benchmark" -n 2_000_000 

