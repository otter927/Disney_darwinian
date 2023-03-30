from tensorforce.agents import DoubleDQN
from tensorforce import Agent, Environment

# Create agent and environment
	
environment = Environment.create(environment='gym', level='CartPole-v1')

#environment = Environment.create(
#    environment='gym', level='CartPole', max_episode_timesteps=500
#)

#environment = Environment.create(
#    environment='environment.json', max_episode_timesteps=500
#)

agent = Agent.create(
    agent='tensorforce', environment=environment, update=64,
    objective='policy_gradient', reward_estimation=dict(horizon=20)
)
#agent = Agent.create(agent='agent.json', environment=environment)
 
# Train for 200 episodes
for _ in range(200):
    states = environment.reset()
    terminal = False
    while not terminal:
        actions = agent.act(states=states)
        states, terminal, reward = environment.execute(actions=actions)
        agent.observe(terminal=terminal, reward=reward)
 
# Evaluate for 100 episodes
sum_rewards = 0.0
for _ in range(100):
    states = environment.reset()
    internals = agent.initial_internals()
    terminal = False
    while not terminal:
        actions, internals = agent.act(states=states, internals=internals, evaluation=True)
        states, terminal, reward = environment.execute(actions=actions)
        sum_rewards += reward
 
print('Mean episode reward:', sum_rewards / 100)
 
# Close agent and environment
agent.close()
environment.close()
