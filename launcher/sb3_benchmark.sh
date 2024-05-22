#!/bin/bash

seeds="0 1 2 3 4 5 6"
envs="MountainCar-v0" 
algos="ppo dqn trpo a2c" 

for env in $envs; do
    for algo in $algos; do
        for seed in $seeds; do

            sbatch launcher/inner/inner_sb3_benchmark.sh $algo $env $seed 

        done
    done
done