#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Wed Nov 14 02:01:21 2018

@author: ricktjwong
"""

import numpy as np
import random

class Agent():
    def __init__(self, actions, N_rows, N_cols):
        """
        q_table stores an array of q_values for each action that can be taken
        In a 5x5 grid space, q_table[4][0] represents the array of q_values
        for each action (0, 1, 2, 3) in the bottom left gridspace
        
        alpha: learning rate - for fully deterministic environment, alpha of
        one is optimal
        """
        self.actions = actions
        self.learning_rate = 0.1
        self.discount_factor = 0.9
        self.q_table = [[[0.0 for i in range(len(self.actions))]
                        for i in range(N_rows)]
                        for i in range(N_cols)]

    def get_action(self, state):
        """
        Get action by taking max of the q_values stored in the q_value table
        for a particular state
        """
        if np.random.rand() < 0.01:
            action = np.random.choice([0, 1, 2, 3])
        else:
            state_actions = self.q_table[state[0]][state[1]]
            max_index_list = []
            max_value = max(state_actions)
            for i in range(len(state_actions)):
                if state_actions[i] == max_value:
                    max_index_list.append(i)
            action = random.choice(max_index_list)
        return action
    
    def q_learn(self, reward, action, state, next_state):
        """
        Q_1 = Q_0 + alpha * [R + gamma * max(Q_1) - Q_0]
        """
        q_0 = self.q_table[state[0]][state[1]][action]
        q_1 = reward + self.discount_factor * max(self.q_table[next_state[0]][next_state[1]])
        self.q_table[state[0]][state[1]][action] += 0.01 * (q_1 - q_0)
