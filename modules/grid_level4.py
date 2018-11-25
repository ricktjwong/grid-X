#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Sat Nov 24 22:06:55 2018

@author: ricktjwong
"""

import q_agent as q
import numpy as np
import time

def env():
    """
    Create the environment - a 7x7 grid space
    Each cell in the grid stores 4 values representing the change in score
    upon taking an action from that particular cell, in the order up, down,
    left, right
    """
    grid = [[[-3.,-3.,-3.,-3.] for i in range(5)] for i in range(5)]    
    walls = [[0,0], [0,4], [4,0], [4,4], [2,1], [2,3]]
    for i in walls:
        grid[i[0]][i[1]][0] = 0.0
        grid[i[0]][i[1]][1] = 0.0
        grid[i[0]][i[1]][2] = 0.0
        grid[i[0]][i[1]][3] = 0.0
    return grid


def grid_rewards():
    """
    Store reward of going into each cell
    """
    grid = [[-3. for i in range(5)] for i in range(5)]
    grid[0][1] = 9.
    grid[0][3] = -10.  
    grid[1][0] = -10.
    grid[1][4] = 9.
    grid[3][0] = 9.
    grid[3][4] = -10.
    grid[4][1] = -10.
    grid[4][3] = 9.
    return grid


def move(grid, prev_state, action):
    """
    action: 0, 1, 2, 3 -> up, down, left, right
    """
    next_state = [0, 0]
    if action == 0:
        next_state[0] = prev_state[0] - 1
        next_state[1] = prev_state[1]
    elif action == 1:
        next_state[0] = prev_state[0] + 1
        next_state[1] = prev_state[1]        
    elif action == 2:
        next_state[1] = prev_state[1] - 1
        next_state[0] = prev_state[0]        
    elif action == 3:
        next_state[1] = prev_state[1] + 1
        next_state[0] = prev_state[0]

    if next_state[0] == 0 and next_state[1] == 4:
        return next_state
    
    if next_state[0] > 4 or next_state[1] > 4 or next_state[0] < 0 or next_state[1] < 0:
        return prev_state
        
    if grid[next_state[0]][next_state[1]][0] == 0.0:
        return prev_state
    
    return next_state

times = []

for i in range(10000):
    scores = []
    grid = env()
    agent = q.Agent([0, 1, 2, 3], 5, 5)    
    start = time.time()
    for i in range(17):
        """
        If the player steps into a cell and collects the item worth +9 points, we
        need to remove the item from that cell, and the reward for moving into
        that cell is now -3
        """
        rewards = grid_rewards()
        state = [2, 0]
        score = 0
        actions = []
        while (state != [2, 4]):
            action = agent.get_action(state)
            actions.append(action)
            next_state = move(grid, state, action)
            reward = rewards[next_state[0]][next_state[1]]
            score += reward
            if reward == 9.:
                rewards[next_state[0]][next_state[1]] = -3.
            agent.q_learn(reward, action, state, next_state)
            state = next_state
        scores.append(score)
    end = time.time()
    times.append(end - start)

print("Mean time: " + str(np.mean(times)))
print("Standard deviation: " + str(np.std(times)))
