#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Thu Nov  8 22:47:45 2018

@author: ricktjwong
"""

import random
import numpy as np

def env():
    """
    Create the environment - a 5x5 grid space
    Each cell in the grid stores 4 values representing the change in score
    upon taking an action from that particular cell, in the order up, down,
    left, right
    """
    grid = [[[-3.,-3.,-3.,-3.] for i in range(5)] for i in range(5)]
    
    walls = [[0,4], [1,4], [2,0], [2,1], [2,2], [3,3]]
    
    for i in walls:
        grid[i[0]][i[1]][0] = 0.0
        grid[i[0]][i[1]][1] = 0.0
        grid[i[0]][i[1]][2] = 0.0
        grid[i[0]][i[1]][3] = 0.0
    
    grid[0][0][3] = 9.
    grid[0][2][2] = 9.
    grid[0][3][3] = 100.
    grid[1][1][0] = 9.
    grid[3][0][3] = 9.
    grid[4][1][0] = 9.
    return grid


def q_table():
    return [[[0., 0., 0., 0.] for i in range(5)] for i in range(5)]


def grid_rewards():
    """
    Store reward of going into each cell
    """
    grid = [[-3. for i in range(5)] for i in range(5)]
    grid[0][1] = 9.
    grid[0][4] = 100.
    grid[3][1] = 9.
    return grid

grid = env()
grid_rewards = grid_rewards()

def move(prev_state, action):
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
        print("End game")  
        return next_state
    
    if next_state[0] > 4 or next_state[1] > 4 or next_state[0] < 0 or next_state[1] < 0:
        return prev_state
        
    if grid[next_state[0]][next_state[1]][0] == 0.0:
        return prev_state
    
    return next_state


def get_action(state):
    if np.random.rand() < 0.1:
        # take random action
        action = np.random.choice([0, 1, 2, 3])
    else:
        # take action according to the q function table
        state_action = q_table[state[0]][state[1]]
        action = state_action.index(max(q_table[state[0]][state[1]]))
    return action


def q_learn(reward, next_state, action):
    current_q = q_table[state[0]][state[1]][action]
    print(next_state)
    # using Bellman Optimality Equation to update q function
    new_q = reward + 0.9 * max(q_table[next_state[0]][next_state[1]])
    q_table[state[0]][state[1]][action] += 0.1 * (new_q - current_q)


q_table = q_table()
state = [4, 0]
actions = []
score = 0

while (state != [0, 4]):
    action = get_action(state)
    next_state = move(state, action)
    reward = grid_rewards[next_state[0]][next_state[1]]
    dscore = grid_rewards[state[0]][state[1]]
    if dscore == 9:
        grid_rewards[state[0]][state[1]] = -3.
    print(next_state)
    print(action)
    print(q_table)
    q_learn(reward, next_state, action)
    state = next_state

#while(state != [0, 4]):
#    """
#    If the player steps into a cell and collects the item worth +9 points, we
#    need to remove the item from that cell, and the reward for moving into
#    that cell is now -3
#    """
#    action = random.randint(0,3)
#    actions.append(action)
#    state = move(state, action)
#    dscore = grid_rewards[state[0]][state[1]]
#    if dscore == 9:
#        grid_rewards[state[0]][state[1]] = -3.
#    score += dscore    