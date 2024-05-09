from rl_zoo3.train import train

if __name__ == "__main__":
    train()
# python train.py --algo ppo --env Taxi-v3 -n 500000 -optimize --n-trials 2000 --n-jobs 2 --sampler tpe --pruner median --wandb-project-name "Policy-Gradient-Methods-Base-Test" --wandb-entity "iit_policy_gradient_methods" --progress --track -tags "hyperparams search"
# pip install gymnasium[box2d]
# pip install ae
# python train.py --algo dqn --env CartPole-v1 --seed 4 --hyperparams "policy_kwargs:dict(activation_fn=nn.Softmax, net_arch=dict([]))" --wandb-project-name Benchmark -P -tags "Softmax Param" benchmark -n 2_000_000
# python train.py --algo dqn --env CartPole-v1 --seed 6 --hyperparams "policy_kwargs:dict(activation_fn=nn.Softmax, net_arch=dict(pi=[], vf=[]))" --wandb-project-name Benchmark -P -tags "Softmax Param" benchmark -n 2_000_000