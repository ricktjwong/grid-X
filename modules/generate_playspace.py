# -*- coding: utf-8 -*-
"""
Created on Tue Nov 13 22:28:57 2018

@author: Daniel
"""
#%% 
""" Function Definitions """

def create_mapmatrix(size , filename):
    """ Generates asm code which populates FSR0 with matrix mappings.
    will be a square matrix """
    if size > 9:
        print ("warning: function only works with integer size <= 9")
    file = open(filename + ".asm" , "w")
    file.write("#include p18f87k22.inc" + "\n")
    file.write("#include constants.inc" + "\n")
    file.write("     global  mapmatrix_level2" + "\n")
    file.write("\n")
    file.write("acs0	    udata_acs" + "\n")
    file.write("storage     res 1" + "\n")
    file.write("\n")
    file.write("mapmatrix2	    code" + "\n")
    file.write("\n")
    file.write("mapmatrix_level2" + "\n")
    file.write("\n")
    file.write("     movlb  8" + "\n")
    file.write("     lfsr   FSR0, 0x880" + "\n")
    file.write("\n")
    
    counter = 0
    for i in range(size):
        for j in range(size):
            file.write("     movlw  0x" + str(i) + str(j) + "\n")
            file.write("     movwf  " + "storage" + "\n")
            file.write("     movwf  ." + str(counter) + "\n")
            file.write("     movff  " + "storage, PLUSW0" + "\n")
            counter +=1
            file.write("\n")
        
    file.write("     return" + "\n")
    file.write("     end")
    file.close()
    

def create_level(array, filename):
    """ Generates asm code which populates FSR1 with the map values"""
    file = open(filename + ".asm" , "w")
    file.write("#include p18f87k22.inc" + "\n")
    file.write("#include constants.inc" + "\n")
    file.write("     global  level2_table" + "\n")
    file.write("\n")
    file.write("acs0	    udata_acs" + "\n")
    file.write("storage     res 1" + "\n")
    file.write("\n")
    file.write("level2	    code" + "\n")
    file.write("\n")
    file.write("level2_table" + "\n")
    file.write("\n")
    file.write("     movlb  6" + "\n")
    file.write("     lfsr   FSR1, 0x680" + "\n")
    file.write("\n")

    for i in range(len(array)):
        file.write("     movlw  " + array[i] + "\n")
        file.write("     movwf  " + "storage" + "\n")
        file.write("     movlw  " + "." + str(i) + "\n")
        file.write("     movff  " + "storage, PLUSW1" + "\n")
        file.write("\n")
        
    file.write("     return" + "\n")
    file.write("     end")
    file.close()


def buildspace(N , objectvalue , array):
    for i in range(N):
        array.append(objectvalue)

#%%
""" creating playspace python list"""
empty = "0x00"
wall = "0x01"
item = "0x04"
goal = "0x02"
fire = "0x05"
map_array = []


""" row 0 """
buildspace(7 , wall , map_array)

""" row 1 """
buildspace(1, wall, map_array)
buildspace(4, empty, map_array)
buildspace(1, item, map_array)
buildspace(1, wall, map_array)

""" row 2 """
buildspace(1, wall, map_array)
buildspace(1, empty, map_array)
buildspace(3, wall, map_array)
buildspace(1, item, map_array)
buildspace(1, wall, map_array)

""" row 3 """
buildspace(1, wall, map_array)
buildspace(5, empty, map_array)
buildspace(1, wall, map_array)

""" row 4 """
buildspace(1, wall, map_array)
buildspace(1, empty, map_array)
buildspace(3, wall, map_array)
buildspace(1, empty, map_array)
buildspace(1, wall, map_array)


""" row 5 """
buildspace(1, wall, map_array)
buildspace(2, empty, map_array)
buildspace(1, goal, map_array)
buildspace(1, empty, map_array)
buildspace(1, fire, map_array)
buildspace(1, wall, map_array)

""" row 6 """
buildspace(7 , wall , map_array)

#%%
""" output to .asm files """
create_level(map_array, "level2")
#create_mapmatrix(9, "mapmatrix_level2")

