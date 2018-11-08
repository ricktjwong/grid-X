#include p18f87k22.inc
	global  draw_item, item_x, item_y
	extern	add_tiny_delay

acs0	udata_acs
item_x    res 1
item_y    res 1
	
item	code

draw_item
    movlw  0x6
    addwf  item_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x15
    addwf  item_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x7
    addwf  item_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x15
    addwf  item_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x8
    addwf  item_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x15
    addwf  item_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x9
    addwf  item_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x15
    addwf  item_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xa
    addwf  item_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x15
    addwf  item_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xb
    addwf  item_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x15
    addwf  item_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xc
    addwf  item_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x15
    addwf  item_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xd
    addwf  item_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x15
    addwf  item_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xe
    addwf  item_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x15
    addwf  item_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xf
    addwf  item_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x15
    addwf  item_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x10
    addwf  item_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x15
    addwf  item_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x11
    addwf  item_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x15
    addwf  item_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x12
    addwf  item_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x15
    addwf  item_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x5
    addwf  item_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x14
    addwf  item_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x6
    addwf  item_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x14
    addwf  item_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x7
    addwf  item_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x14
    addwf  item_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x8
    addwf  item_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x14
    addwf  item_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x9
    addwf  item_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x14
    addwf  item_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xa
    addwf  item_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x14
    addwf  item_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xb
    addwf  item_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x14
    addwf  item_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xc
    addwf  item_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x14
    addwf  item_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xd
    addwf  item_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x14
    addwf  item_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xe
    addwf  item_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x14
    addwf  item_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xf
    addwf  item_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x14
    addwf  item_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x10
    addwf  item_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x14
    addwf  item_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x11
    addwf  item_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x14
    addwf  item_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x12
    addwf  item_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x14
    addwf  item_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x13
    addwf  item_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x14
    addwf  item_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x4
    addwf  item_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x13
    addwf  item_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x5
    addwf  item_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x13
    addwf  item_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x6
    addwf  item_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x13
    addwf  item_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x7
    addwf  item_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x13
    addwf  item_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x8
    addwf  item_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x13
    addwf  item_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x9
    addwf  item_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x13
    addwf  item_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xa
    addwf  item_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x13
    addwf  item_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xe
    addwf  item_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x13
    addwf  item_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xf
    addwf  item_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x13
    addwf  item_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x10
    addwf  item_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x13
    addwf  item_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x11
    addwf  item_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x13
    addwf  item_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x12
    addwf  item_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x13
    addwf  item_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x13
    addwf  item_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x13
    addwf  item_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x14
    addwf  item_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x13
    addwf  item_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x3
    addwf  item_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x12
    addwf  item_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x4
    addwf  item_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x12
    addwf  item_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x6
    addwf  item_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x12
    addwf  item_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x7
    addwf  item_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x12
    addwf  item_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x9
    addwf  item_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x12
    addwf  item_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xa
    addwf  item_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x12
    addwf  item_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xb
    addwf  item_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x12
    addwf  item_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xc
    addwf  item_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x12
    addwf  item_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xd
    addwf  item_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x12
    addwf  item_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xe
    addwf  item_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x12
    addwf  item_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xf
    addwf  item_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x12
    addwf  item_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x11
    addwf  item_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x12
    addwf  item_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x12
    addwf  item_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x12
    addwf  item_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x14
    addwf  item_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x12
    addwf  item_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x15
    addwf  item_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x12
    addwf  item_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x2
    addwf  item_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x11
    addwf  item_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x3
    addwf  item_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x11
    addwf  item_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x7
    addwf  item_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x11
    addwf  item_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xb
    addwf  item_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x11
    addwf  item_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xc
    addwf  item_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x11
    addwf  item_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xd
    addwf  item_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x11
    addwf  item_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xe
    addwf  item_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x11
    addwf  item_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x11
    addwf  item_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x11
    addwf  item_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x15
    addwf  item_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x11
    addwf  item_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x16
    addwf  item_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x11
    addwf  item_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x1
    addwf  item_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x10
    addwf  item_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x2
    addwf  item_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x10
    addwf  item_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x3
    addwf  item_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x10
    addwf  item_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x4
    addwf  item_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x10
    addwf  item_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x5
    addwf  item_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x10
    addwf  item_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x7
    addwf  item_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x10
    addwf  item_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x8
    addwf  item_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x10
    addwf  item_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x9
    addwf  item_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x10
    addwf  item_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xa
    addwf  item_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x10
    addwf  item_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xb
    addwf  item_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x10
    addwf  item_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xd
    addwf  item_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x10
    addwf  item_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xe
    addwf  item_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x10
    addwf  item_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xf
    addwf  item_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x10
    addwf  item_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x10
    addwf  item_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x10
    addwf  item_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x11
    addwf  item_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x10
    addwf  item_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x13
    addwf  item_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x10
    addwf  item_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x14
    addwf  item_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x10
    addwf  item_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x16
    addwf  item_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x10
    addwf  item_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x17
    addwf  item_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x10
    addwf  item_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x1
    addwf  item_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xf
    addwf  item_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x2
    addwf  item_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xf
    addwf  item_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x3
    addwf  item_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xf
    addwf  item_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x4
    addwf  item_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xf
    addwf  item_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x5
    addwf  item_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xf
    addwf  item_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x6
    addwf  item_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xf
    addwf  item_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x7
    addwf  item_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xf
    addwf  item_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x8
    addwf  item_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xf
    addwf  item_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x9
    addwf  item_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xf
    addwf  item_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xa
    addwf  item_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xf
    addwf  item_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xb
    addwf  item_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xf
    addwf  item_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xc
    addwf  item_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xf
    addwf  item_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xd
    addwf  item_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xf
    addwf  item_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xe
    addwf  item_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xf
    addwf  item_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xf
    addwf  item_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xf
    addwf  item_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x10
    addwf  item_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xf
    addwf  item_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x11
    addwf  item_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xf
    addwf  item_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x12
    addwf  item_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xf
    addwf  item_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x13
    addwf  item_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xf
    addwf  item_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x14
    addwf  item_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xf
    addwf  item_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x15
    addwf  item_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xf
    addwf  item_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x16
    addwf  item_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xf
    addwf  item_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x17
    addwf  item_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xf
    addwf  item_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x2
    addwf  item_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xe
    addwf  item_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x3
    addwf  item_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xe
    addwf  item_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x8
    addwf  item_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xe
    addwf  item_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x10
    addwf  item_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xe
    addwf  item_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x15
    addwf  item_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xe
    addwf  item_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x16
    addwf  item_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xe
    addwf  item_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x3
    addwf  item_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xd
    addwf  item_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x4
    addwf  item_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xd
    addwf  item_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x8
    addwf  item_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xd
    addwf  item_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x9
    addwf  item_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xd
    addwf  item_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xf
    addwf  item_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xd
    addwf  item_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x10
    addwf  item_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xd
    addwf  item_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x14
    addwf  item_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xd
    addwf  item_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x15
    addwf  item_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xd
    addwf  item_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x3
    addwf  item_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xc
    addwf  item_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x4
    addwf  item_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xc
    addwf  item_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x5
    addwf  item_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xc
    addwf  item_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x8
    addwf  item_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xc
    addwf  item_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x9
    addwf  item_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xc
    addwf  item_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xf
    addwf  item_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xc
    addwf  item_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x10
    addwf  item_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xc
    addwf  item_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x14
    addwf  item_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xc
    addwf  item_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x15
    addwf  item_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xc
    addwf  item_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x4
    addwf  item_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xb
    addwf  item_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x5
    addwf  item_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xb
    addwf  item_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x9
    addwf  item_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xb
    addwf  item_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xa
    addwf  item_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xb
    addwf  item_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xe
    addwf  item_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xb
    addwf  item_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xf
    addwf  item_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xb
    addwf  item_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x13
    addwf  item_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xb
    addwf  item_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x14
    addwf  item_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xb
    addwf  item_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x5
    addwf  item_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xa
    addwf  item_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x6
    addwf  item_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xa
    addwf  item_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x9
    addwf  item_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xa
    addwf  item_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xa
    addwf  item_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xa
    addwf  item_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xe
    addwf  item_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xa
    addwf  item_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xf
    addwf  item_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xa
    addwf  item_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x12
    addwf  item_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xa
    addwf  item_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x13
    addwf  item_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xa
    addwf  item_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x6
    addwf  item_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x9
    addwf  item_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x7
    addwf  item_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x9
    addwf  item_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x9
    addwf  item_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x9
    addwf  item_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xa
    addwf  item_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x9
    addwf  item_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xe
    addwf  item_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x9
    addwf  item_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xf
    addwf  item_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x9
    addwf  item_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x11
    addwf  item_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x9
    addwf  item_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x12
    addwf  item_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x9
    addwf  item_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x7
    addwf  item_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x8
    addwf  item_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x8
    addwf  item_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x8
    addwf  item_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xa
    addwf  item_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x8
    addwf  item_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xb
    addwf  item_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x8
    addwf  item_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xd
    addwf  item_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x8
    addwf  item_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xe
    addwf  item_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x8
    addwf  item_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x10
    addwf  item_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x8
    addwf  item_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x11
    addwf  item_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x8
    addwf  item_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x8
    addwf  item_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x7
    addwf  item_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x9
    addwf  item_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x7
    addwf  item_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xa
    addwf  item_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x7
    addwf  item_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xb
    addwf  item_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x7
    addwf  item_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xd
    addwf  item_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x7
    addwf  item_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xe
    addwf  item_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x7
    addwf  item_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xf
    addwf  item_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x7
    addwf  item_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x10
    addwf  item_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x7
    addwf  item_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x9
    addwf  item_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x6
    addwf  item_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xa
    addwf  item_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x6
    addwf  item_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xb
    addwf  item_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x6
    addwf  item_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xd
    addwf  item_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x6
    addwf  item_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xe
    addwf  item_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x6
    addwf  item_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xf
    addwf  item_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x6
    addwf  item_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x9
    addwf  item_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x5
    addwf  item_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xa
    addwf  item_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x5
    addwf  item_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xb
    addwf  item_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x5
    addwf  item_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xc
    addwf  item_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x5
    addwf  item_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xd
    addwf  item_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x5
    addwf  item_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xe
    addwf  item_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x5
    addwf  item_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xf
    addwf  item_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x5
    addwf  item_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xa
    addwf  item_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x4
    addwf  item_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xb
    addwf  item_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x4
    addwf  item_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xc
    addwf  item_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x4
    addwf  item_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xd
    addwf  item_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x4
    addwf  item_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xe
    addwf  item_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x4
    addwf  item_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xb
    addwf  item_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x3
    addwf  item_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xc
    addwf  item_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x3
    addwf  item_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xd
    addwf  item_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x3
    addwf  item_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    
    return
    
    end