#!/bin/bash

seeds="0 1 2 3"
envs="CartPole-v1 Acrobot-v1 CarRacing-v2 LunarLander-v2" 
algos="ppo dqn trpo sac" 

for env in $envs; do
    for algo in $algos; do
        for seed in $seeds; do

            sbatch launcher/cluster/inner/inner_sb3_benchmark.sh $algo $env $seed 
            sbatch launcher/cluster/inner/inner_sb3_benchmark.sh $algo $env $seed 

        done
    done
done