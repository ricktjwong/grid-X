#include p18f87k22.inc
	global  draw_wall, wall_x, wall_y
	extern	add_tiny_delay

acs0	udata_acs
wall_x    res 1
wall_y    res 1
	
wall	code

draw_wall
    movlw  0x0
    addwf  wall_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x1b
    addwf  wall_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xa
    addwf  wall_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x1b
    addwf  wall_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x12
    addwf  wall_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x1b
    addwf  wall_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x1
    addwf  wall_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x1a
    addwf  wall_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xb
    addwf  wall_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x1a
    addwf  wall_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x13
    addwf  wall_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x1a
    addwf  wall_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x2
    addwf  wall_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x19
    addwf  wall_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xc
    addwf  wall_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x19
    addwf  wall_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x14
    addwf  wall_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x19
    addwf  wall_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x3
    addwf  wall_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x18
    addwf  wall_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xd
    addwf  wall_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x18
    addwf  wall_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x15
    addwf  wall_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x18
    addwf  wall_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x4
    addwf  wall_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x17
    addwf  wall_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xe
    addwf  wall_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x17
    addwf  wall_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x16
    addwf  wall_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x17
    addwf  wall_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x5
    addwf  wall_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x16
    addwf  wall_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xf
    addwf  wall_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x16
    addwf  wall_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x17
    addwf  wall_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x16
    addwf  wall_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x6
    addwf  wall_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x15
    addwf  wall_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x10
    addwf  wall_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x15
    addwf  wall_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x18
    addwf  wall_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x15
    addwf  wall_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x7
    addwf  wall_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x14
    addwf  wall_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x11
    addwf  wall_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x14
    addwf  wall_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x19
    addwf  wall_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x14
    addwf  wall_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x8
    addwf  wall_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x13
    addwf  wall_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x12
    addwf  wall_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x13
    addwf  wall_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x1a
    addwf  wall_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x13
    addwf  wall_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x9
    addwf  wall_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x12
    addwf  wall_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x13
    addwf  wall_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x12
    addwf  wall_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x0
    addwf  wall_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x11
    addwf  wall_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xa
    addwf  wall_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x11
    addwf  wall_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x14
    addwf  wall_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x11
    addwf  wall_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x1
    addwf  wall_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x10
    addwf  wall_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xb
    addwf  wall_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x10
    addwf  wall_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x15
    addwf  wall_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x10
    addwf  wall_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x2
    addwf  wall_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xf
    addwf  wall_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xc
    addwf  wall_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xf
    addwf  wall_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x16
    addwf  wall_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xf
    addwf  wall_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x3
    addwf  wall_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xe
    addwf  wall_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xd
    addwf  wall_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xe
    addwf  wall_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x17
    addwf  wall_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xe
    addwf  wall_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x4
    addwf  wall_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xd
    addwf  wall_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xe
    addwf  wall_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xd
    addwf  wall_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x18
    addwf  wall_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xd
    addwf  wall_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x5
    addwf  wall_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xc
    addwf  wall_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xf
    addwf  wall_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xc
    addwf  wall_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x19
    addwf  wall_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xc
    addwf  wall_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x6
    addwf  wall_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xb
    addwf  wall_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x10
    addwf  wall_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xb
    addwf  wall_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x1a
    addwf  wall_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xb
    addwf  wall_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x7
    addwf  wall_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xa
    addwf  wall_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x11
    addwf  wall_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xa
    addwf  wall_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x0
    addwf  wall_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x9
    addwf  wall_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x8
    addwf  wall_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x9
    addwf  wall_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x12
    addwf  wall_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x9
    addwf  wall_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x1
    addwf  wall_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x8
    addwf  wall_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x9
    addwf  wall_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x8
    addwf  wall_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x13
    addwf  wall_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x8
    addwf  wall_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x2
    addwf  wall_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x7
    addwf  wall_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xa
    addwf  wall_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x7
    addwf  wall_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x14
    addwf  wall_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x7
    addwf  wall_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x3
    addwf  wall_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x6
    addwf  wall_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xb
    addwf  wall_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x6
    addwf  wall_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x15
    addwf  wall_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x6
    addwf  wall_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x4
    addwf  wall_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x5
    addwf  wall_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xc
    addwf  wall_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x5
    addwf  wall_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x16
    addwf  wall_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x5
    addwf  wall_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x5
    addwf  wall_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x4
    addwf  wall_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xd
    addwf  wall_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x4
    addwf  wall_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x17
    addwf  wall_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x4
    addwf  wall_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x6
    addwf  wall_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x3
    addwf  wall_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xe
    addwf  wall_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x3
    addwf  wall_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x18
    addwf  wall_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x3
    addwf  wall_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x7
    addwf  wall_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x2
    addwf  wall_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xf
    addwf  wall_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x2
    addwf  wall_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x19
    addwf  wall_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x2
    addwf  wall_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x8
    addwf  wall_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x1
    addwf  wall_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x10
    addwf  wall_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x1
    addwf  wall_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x1a
    addwf  wall_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x1
    addwf  wall_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    return
    
    end
