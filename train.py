from rl_zoo3.train import train

if __name__ == "__main__":
    train()
# python train.py --algo ppo --env Taxi-v3 -n 500000 -optimize --n-trials 2000 --n-jobs 2 --sampler tpe --pruner median --wandb-project-name "Policy-Gradient-Methods-Base-Test" --wandb-entity "iit_policy_gradient_methods" --progress --track -tags "hyperparams search"