# This module will handle image to voltage array conversion for display on an oscilloscope

import numpy as np
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
        for j in range(col):
            matrix[i][j] = img[i][j][3]             # RGBA: Use the alpha value to denote existence of a pixel
    return matrix        

def get_voltages(M, x_i, y_i):
    """
    Oscilloscope can read values from 0x00 (0) to 0xF3 (243)
    Maximum image size supported is thus 243x243
    """
    rows = len(M)
    cols = len(M[0])
    voltages = [[x_i+i, y_i+j] for i in range(rows) for j in range(cols) if M[i][j] > 0.6]
    return voltages

def convert_to_hex(v):
    return [[hex(i), hex(j)] for i,j in v]

def convert_to_asm(v, filename):
    file = open(filename + ".txt", "w")    
    file.write("clrf  LATD \n")
    file.write("clrf  LATE \n")
    file.write("movlw  0x0 \n")
    file.write("movwf  TRISD, ACCESS \n")
    file.write("movlw  0x0 \n")
    file.write("movwf  TRISE, ACCESS \n\n\n")
	
    for i,j in v:
        file.write("movlw  " + i + "\n")
        file.write("movwf  " + "LATE" + "\n")
        file.write("movlw  " + j + "\n")
        file.write("movwf  " + "LATD" + "\n")        
    file.close()     
    
M = png_to_coords("../pngs/grid-x.png")    
voltages = get_voltages(M, 0, 0)     
hex_voltages = convert_to_hex(voltages)
convert_to_asm(hex_voltages, "../asm_txt/grid-x")