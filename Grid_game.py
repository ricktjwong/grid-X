# -*- coding: utf-8 -*-
"""
Created on Fri Oct 26 15:52:38 2018

@author: Daniel
"""
import numpy as np
import matplotlib.pyplot as plt

class Player:
    def __init__ (self, x_pos = 0 , y_pos = 0):
        self.x = x_pos
        self.y = y_pos
        
    def get_position(self):
        return self.x , self.y
    
    def set_position(self,x,y):
        self.x = x
        self.y = y
    
    def collide_grid(self , grid_object):
        if self.x < 0 or self.x > grid_object.x_size or self.y < 0 or self.y > grid_object.y_size:
            print ("tried to walk through wall")
            return True
        for i in grid_object.obstacles:
            if self.get_position() == i:
                print ("tried to walk through obstacle")
                return True
        else:
            return False
    
    def check_win(self , grid_object):
        if self.get_position() == grid_object.goal:
            print ("You Win !!")
    
    def move(self , string , grid_object):
        if string == "UP" or string == "w":
            self.y += 1
            if self.collide_grid(grid_object):
                self.y -= 1     
                
        elif string == "RIGHT" or string == "d":
            self.x += 1
            if self.collide_grid(grid_object):
                self.x -= 1  
            
        elif string == "DOWN" or string == "s":
            self.y -= 1
            if self.collide_grid(grid_object):
                self.y += 1
            
        elif string == "LEFT" or string == "a":
            self.x -= 1
            if self.collide_grid(grid_object):
                self.x += 1
        else:
            print ("use only w,d,s,a or UP, RIGHT, DOWN, LEFT as commands")
            
        self.check_win(grid_object)
        
        display()
        
class Grid:
    def __init__(self, x_size , y_size , goal : tuple):
        self.x_size = x_size
        self.y_size = y_size
        self.goal = goal
        self.obstacles = []
    
    def get_obstacles(self):
        return self.obstacles
    
    def get_goal(self):
        return self.goal
    
    def set_obstacles(self , xy_arr):
        for i in xy_arr:
            self.obstacles.append(i)
        
obstacles = [(1,2) , (2,1) , (0,3) , (2,4) , (3,3) ,  (4,3)]
obs_x = [obstacles[i][0] for i in range(len(obstacles))]
obs_y = [obstacles[i][1] for i in range(len(obstacles))]
player = Player()
grid = Grid(5,5 , (3,4) )
grid.set_obstacles(obstacles)


""" visuallising the game (grid) space """
def display():
    plt.figure(figsize = (5,5))
    plt.plot(obs_x , obs_y , "b o")
    plt.plot(grid.goal[0] , grid.goal[1], "g o")
    plt.plot(player.get_position()[0] , player.get_position()[1] , "r o")
    plt.xlim(-0.1, grid.x_size + 0.1)
    plt.ylim(-0.1, grid.y_size + 0.1)
    plt.show()