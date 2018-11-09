#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Fri Nov  9 00:06:15 2018

@author: ricktjwong
"""

import modules.gridx as gx

def test_corners():
    bottom = [[4,0], [4,1], [4,2], [4,3], [4,4]]
    for x in bottom:
        state1 = [x[0], x[1]]
        state2 = gx.move(state1, 1)
        assert(state1 == state2)    
   
    left = [[0,0], [1,0], [2,0], [3,0], [4,0]]
    for x in left:
        state1 = [x[0], x[1]]
        state2 = gx.move(state1, 2)
        assert(state1 == state2)   
        
    top = [[0,0], [0,1], [0,2], [0,3], [0,4]]
    for x in top:
        state1 = [x[0], x[1]]
        state2 = gx.move(state1, 0)
        assert(state1 == state2)           

    right = [[0,4], [1,4], [2,4], [3,4], [4,4]]
    for x in right:
        state1 = [x[0], x[1]]
        state2 = gx.move(state1, 3)
        assert(state1 == state2)           
        
def test_goal():
    goal_entry = [0,3]
    state1 = [goal_entry[0], goal_entry[1]]
    state2 = gx.move(state1, 3)
    assert(state2 == [-1,-1])  
    
    goal_entry = [1,4]
    state1 = [goal_entry[0], goal_entry[1]]
    state2 = gx.move(state1, 0)
    assert(state2 == [-1,-1])  