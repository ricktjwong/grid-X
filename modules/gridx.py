#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Thu Nov  8 22:47:45 2018

@author: ricktjwong
"""

def env():
    # Create the environment - a 5x5 grid space
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

grid = env()

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
        return [-1,-1]
    
    if next_state[0] > 4 or next_state[1] > 4 or next_state[0] < 0 or next_state[1] < 0:
        return prev_state
        
    if grid[next_state[0]][next_state[1]][0] == 0.0:
        return prev_state
    
    return next_state
    
init_state = [4,0]
next_state = move(init_state, 0)
print(next_state)
next_state2 = move(next_state, 3)
print(next_state2)