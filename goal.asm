#include p18f87k22.inc
	global  draw_goal, goal_x, goal_y
	extern	add_tiny_delay

acs0	udata_acs
goal_x    res 1
goal_y    res 1
	
goal	  code
	  
draw_goal
    movlw  0x3
    addwf  goal_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x1b
    addwf  goal_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x4
    addwf  goal_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x1b
    addwf  goal_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x5
    addwf  goal_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x1b
    addwf  goal_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x6
    addwf  goal_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x1b
    addwf  goal_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x7
    addwf  goal_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x1b
    addwf  goal_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x8
    addwf  goal_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x1b
    addwf  goal_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x2
    addwf  goal_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x1a
    addwf  goal_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x3
    addwf  goal_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x1a
    addwf  goal_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x4
    addwf  goal_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x1a
    addwf  goal_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x5
    addwf  goal_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x1a
    addwf  goal_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x6
    addwf  goal_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x1a
    addwf  goal_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x7
    addwf  goal_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x1a
    addwf  goal_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x8
    addwf  goal_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x1a
    addwf  goal_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x9
    addwf  goal_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x1a
    addwf  goal_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x1
    addwf  goal_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x19
    addwf  goal_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x2
    addwf  goal_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x19
    addwf  goal_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x3
    addwf  goal_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x19
    addwf  goal_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x4
    addwf  goal_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x19
    addwf  goal_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x7
    addwf  goal_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x19
    addwf  goal_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x8
    addwf  goal_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x19
    addwf  goal_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x9
    addwf  goal_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x19
    addwf  goal_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xa
    addwf  goal_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x19
    addwf  goal_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x0
    addwf  goal_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x18
    addwf  goal_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x1
    addwf  goal_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x18
    addwf  goal_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x2
    addwf  goal_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x18
    addwf  goal_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x3
    addwf  goal_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x18
    addwf  goal_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x4
    addwf  goal_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x18
    addwf  goal_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x7
    addwf  goal_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x18
    addwf  goal_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x8
    addwf  goal_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x18
    addwf  goal_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x9
    addwf  goal_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x18
    addwf  goal_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xa
    addwf  goal_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x18
    addwf  goal_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xb
    addwf  goal_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x18
    addwf  goal_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x0
    addwf  goal_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x17
    addwf  goal_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x1
    addwf  goal_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x17
    addwf  goal_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x2
    addwf  goal_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x17
    addwf  goal_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x3
    addwf  goal_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x17
    addwf  goal_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x4
    addwf  goal_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x17
    addwf  goal_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x5
    addwf  goal_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x17
    addwf  goal_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x6
    addwf  goal_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x17
    addwf  goal_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x7
    addwf  goal_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x17
    addwf  goal_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x8
    addwf  goal_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x17
    addwf  goal_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x9
    addwf  goal_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x17
    addwf  goal_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xa
    addwf  goal_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x17
    addwf  goal_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xb
    addwf  goal_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x17
    addwf  goal_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x0
    addwf  goal_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x16
    addwf  goal_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x1
    addwf  goal_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x16
    addwf  goal_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x2
    addwf  goal_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x16
    addwf  goal_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x3
    addwf  goal_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x16
    addwf  goal_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x4
    addwf  goal_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x16
    addwf  goal_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x5
    addwf  goal_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x16
    addwf  goal_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x6
    addwf  goal_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x16
    addwf  goal_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x7
    addwf  goal_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x16
    addwf  goal_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x8
    addwf  goal_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x16
    addwf  goal_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x9
    addwf  goal_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x16
    addwf  goal_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xa
    addwf  goal_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x16
    addwf  goal_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xb
    addwf  goal_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x16
    addwf  goal_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x0
    addwf  goal_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x15
    addwf  goal_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x1
    addwf  goal_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x15
    addwf  goal_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x2
    addwf  goal_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x15
    addwf  goal_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x3
    addwf  goal_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x15
    addwf  goal_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x4
    addwf  goal_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x15
    addwf  goal_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x5
    addwf  goal_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x15
    addwf  goal_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x6
    addwf  goal_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x15
    addwf  goal_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x7
    addwf  goal_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x15
    addwf  goal_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x8
    addwf  goal_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x15
    addwf  goal_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x9
    addwf  goal_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x15
    addwf  goal_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xa
    addwf  goal_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x15
    addwf  goal_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xb
    addwf  goal_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x15
    addwf  goal_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x0
    addwf  goal_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x14
    addwf  goal_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x1
    addwf  goal_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x14
    addwf  goal_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x2
    addwf  goal_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x14
    addwf  goal_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x3
    addwf  goal_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x14
    addwf  goal_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x4
    addwf  goal_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x14
    addwf  goal_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x5
    addwf  goal_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x14
    addwf  goal_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x6
    addwf  goal_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x14
    addwf  goal_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x7
    addwf  goal_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x14
    addwf  goal_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x8
    addwf  goal_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x14
    addwf  goal_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x9
    addwf  goal_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x14
    addwf  goal_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xa
    addwf  goal_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x14
    addwf  goal_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xb
    addwf  goal_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x14
    addwf  goal_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x0
    addwf  goal_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x13
    addwf  goal_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x1
    addwf  goal_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x13
    addwf  goal_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x2
    addwf  goal_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x13
    addwf  goal_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x3
    addwf  goal_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x13
    addwf  goal_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x4
    addwf  goal_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x13
    addwf  goal_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x5
    addwf  goal_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x13
    addwf  goal_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x6
    addwf  goal_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x13
    addwf  goal_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x7
    addwf  goal_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x13
    addwf  goal_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x8
    addwf  goal_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x13
    addwf  goal_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x9
    addwf  goal_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x13
    addwf  goal_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xa
    addwf  goal_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x13
    addwf  goal_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xb
    addwf  goal_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x13
    addwf  goal_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x1
    addwf  goal_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x12
    addwf  goal_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x2
    addwf  goal_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x12
    addwf  goal_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x3
    addwf  goal_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x12
    addwf  goal_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x4
    addwf  goal_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x12
    addwf  goal_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x5
    addwf  goal_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x12
    addwf  goal_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x6
    addwf  goal_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x12
    addwf  goal_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x7
    addwf  goal_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x12
    addwf  goal_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x8
    addwf  goal_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x12
    addwf  goal_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x9
    addwf  goal_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x12
    addwf  goal_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xa
    addwf  goal_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x12
    addwf  goal_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x2
    addwf  goal_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x11
    addwf  goal_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x3
    addwf  goal_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x11
    addwf  goal_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x4
    addwf  goal_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x11
    addwf  goal_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x5
    addwf  goal_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x11
    addwf  goal_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x6
    addwf  goal_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x11
    addwf  goal_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x7
    addwf  goal_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x11
    addwf  goal_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x8
    addwf  goal_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x11
    addwf  goal_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x9
    addwf  goal_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x11
    addwf  goal_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x3
    addwf  goal_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x10
    addwf  goal_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x4
    addwf  goal_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x10
    addwf  goal_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x5
    addwf  goal_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x10
    addwf  goal_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x6
    addwf  goal_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x10
    addwf  goal_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x7
    addwf  goal_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x10
    addwf  goal_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x8
    addwf  goal_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x10
    addwf  goal_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x3
    addwf  goal_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xf
    addwf  goal_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x4
    addwf  goal_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xf
    addwf  goal_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x5
    addwf  goal_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xf
    addwf  goal_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x6
    addwf  goal_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xf
    addwf  goal_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x7
    addwf  goal_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xf
    addwf  goal_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x8
    addwf  goal_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xf
    addwf  goal_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x4
    addwf  goal_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xe
    addwf  goal_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x5
    addwf  goal_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xe
    addwf  goal_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x6
    addwf  goal_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xe
    addwf  goal_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x7
    addwf  goal_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xe
    addwf  goal_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x4
    addwf  goal_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xd
    addwf  goal_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x5
    addwf  goal_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xd
    addwf  goal_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x6
    addwf  goal_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xd
    addwf  goal_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x7
    addwf  goal_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xd
    addwf  goal_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x4
    addwf  goal_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xc
    addwf  goal_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x5
    addwf  goal_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xc
    addwf  goal_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x6
    addwf  goal_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xc
    addwf  goal_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x7
    addwf  goal_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xc
    addwf  goal_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x4
    addwf  goal_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xb
    addwf  goal_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x5
    addwf  goal_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xb
    addwf  goal_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x6
    addwf  goal_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xb
    addwf  goal_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x7
    addwf  goal_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xb
    addwf  goal_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x4
    addwf  goal_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xa
    addwf  goal_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x5
    addwf  goal_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xa
    addwf  goal_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x6
    addwf  goal_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xa
    addwf  goal_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x7
    addwf  goal_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xa
    addwf  goal_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x4
    addwf  goal_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x9
    addwf  goal_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x5
    addwf  goal_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x9
    addwf  goal_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x6
    addwf  goal_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x9
    addwf  goal_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x7
    addwf  goal_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x9
    addwf  goal_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x4
    addwf  goal_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x8
    addwf  goal_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x5
    addwf  goal_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x8
    addwf  goal_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x6
    addwf  goal_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x8
    addwf  goal_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x7
    addwf  goal_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x8
    addwf  goal_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x4
    addwf  goal_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x7
    addwf  goal_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x5
    addwf  goal_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x7
    addwf  goal_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x6
    addwf  goal_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x7
    addwf  goal_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x4
    addwf  goal_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x6
    addwf  goal_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x5
    addwf  goal_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x6
    addwf  goal_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x6
    addwf  goal_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x6
    addwf  goal_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x7
    addwf  goal_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x6
    addwf  goal_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x4
    addwf  goal_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x5
    addwf  goal_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x5
    addwf  goal_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x5
    addwf  goal_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x6
    addwf  goal_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x5
    addwf  goal_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x7
    addwf  goal_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x5
    addwf  goal_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x4
    addwf  goal_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x4
    addwf  goal_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x5
    addwf  goal_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x4
    addwf  goal_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x6
    addwf  goal_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x4
    addwf  goal_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x7
    addwf  goal_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x4
    addwf  goal_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x4
    addwf  goal_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x3
    addwf  goal_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x5
    addwf  goal_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x3
    addwf  goal_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x6
    addwf  goal_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x3
    addwf  goal_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x7
    addwf  goal_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x3
    addwf  goal_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x4
    addwf  goal_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x2
    addwf  goal_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x5
    addwf  goal_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x2
    addwf  goal_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x6
    addwf  goal_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x2
    addwf  goal_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x7
    addwf  goal_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x2
    addwf  goal_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x5
    addwf  goal_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x1
    addwf  goal_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x6
    addwf  goal_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x1
    addwf  goal_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    return
    
    end