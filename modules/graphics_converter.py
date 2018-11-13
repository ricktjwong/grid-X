""" 
This module handles the image to voltage array conversion for display on an 
oscilloscope
"""

import numpy as np
import matplotlib.pyplot as plt
import matplotlib.image as mpimg

def png_to_coords(img_path):
    """
    Take an alpha-ed png image
    """
    # Start screen image is 240x53 pixels
    img = mpimg.imread(img_path)
    row = img.shape[0]
    col = img.shape[1]
    matrix = np.zeros((row, col))
    for i in range(row):
        for j in range(col):                    # RGBA: Use the alpha value to
            matrix[i][j] = img[i][j][3]         # denote existence of a pixel
    return matrix


def get_voltages(M, x_i, y_i):
    """
    Oscilloscope can read values from 0x00 (0) to 0xF3 (243)
    Maximum image size supported is thus 243x243
    """
    rows = len(M)
    cols = len(M[0])
    voltages = [[x_i+j, (y_i+rows-i)] for i in range(rows)
                for j in range(cols) if M[i][j] > 0.3]
    return voltages


def convert_to_hex(v):
    return [[hex(i), hex(j)] for i,j in v]


def convert_to_asm(v, filename):
    file = open(filename + ".asm", "w")    
    
    for i,j in v:
        file.write("movlw  " + i + "\n")
        file.write("addwf  key_x, 0" + "\n")
        file.write("movwf  " + "LATE" + "\n")
        file.write("movlw  0x0A \n")
        file.write("call  add_tiny_delay \n")
        file.write("movlw  " + j + "\n")
        file.write("addwf  key_y, 0" + "\n")
        file.write("movwf  " + "LATD" + "\n")
        file.write("movlw  0x0A \n")
        file.write("call  add_tiny_delay \n")        
    file.close()     
    
def generate_xanimate():
    file = open("../asm_txt/animated" + ".asm", "w")    
    for i in range(9):
        M = png_to_coords("../pngs/x_animate/x_" + str(i) + ".png")    
        voltages = get_voltages(M, 170, 88)    
        hex_voltages = convert_to_hex(voltages)
        for i,j in hex_voltages:
            file.write("movlw  " + i + "\n")
            file.write("addwf  player_x, 0" + "\n")
            file.write("movwf  " + "LATE" + "\n")
            file.write("movlw  0x0A \n")
            file.write("call  add_tiny_delay \n")
            file.write("movlw  " + j + "\n")
            file.write("addwf  player_y, 0" + "\n")
            file.write("movwf  " + "LATD" + "\n")
            file.write("movlw  0x0A \n")
            file.write("call  add_tiny_delay \n")  
    file.close()       

    
M = png_to_coords("../pngs/key.png")    
voltages = get_voltages(M, 0, 7)     
x,y = zip(*voltages)
plt.scatter(x,y,c='b',marker='.')
plt.show()

hex_voltages = convert_to_hex(voltages)
convert_to_asm(hex_voltages, "../asm/key")

#M = png_to_coords("../pngs/x.png")    
#voltages = get_voltages(M, 0, 0)     
#x,y = zip(*voltages)
#plt.scatter(x,y,c='b',marker='.')
#plt.show()
#
#hex_voltages = convert_to_hex(voltages)
#convert_to_asm(hex_voltages, "../asm_txt/x")