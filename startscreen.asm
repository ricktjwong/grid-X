#include p18f87k22.inc
	global  display_start_screen, draw_x
	extern	add_tiny_delay, player_x, player_y

startscreen	code

display_start_screen
    clrf  LATD 
    clrf  LATE 
    movlw  0x0 
    movwf  TRISD, ACCESS 
    movlw  0x0 
    movwf  TRISE, ACCESS 

draw_x   
    call draw_grid
    call draw_animated
    bra draw_x
    
draw_grid
    movlw  0x11
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x82
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x12
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x82
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x13
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x82
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x14
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x82
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x15
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x82
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x16
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x82
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x17
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x82
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x18
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x82
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x19
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x82
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x1a
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x82
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x1b
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x82
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x21
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x82
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x2a
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x82
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x2b
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x82
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x2c
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x82
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x2d
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x82
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x2e
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x82
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x2f
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x82
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x30
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x82
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x31
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x82
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x32
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x82
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x33
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x82
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x34
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x82
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x35
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x82
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x36
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x82
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x37
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x82
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x38
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x82
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x39
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x82
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x3a
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x82
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x51
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x82
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x52
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x82
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x53
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x82
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x54
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x82
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x55
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x82
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x56
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x82
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x57
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x82
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x58
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x82
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x59
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x82
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x5a
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x82
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x5b
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x82
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x5c
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x82
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x5d
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x82
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x5e
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x82
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x5f
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x82
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x60
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x82
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x61
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x82
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x62
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x82
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x63
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x82
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x64
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x82
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x72
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x82
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x73
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x82
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x74
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x82
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x75
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x82
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x76
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x82
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x77
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x82
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x78
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x82
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x79
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x82
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x7a
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x82
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x7b
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x82
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x7c
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x82
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x7d
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x82
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x7e
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x82
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x7f
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x82
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x80
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x82
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xf
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x81
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x10
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x81
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x11
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x81
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x12
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x81
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x13
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x81
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x14
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x81
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x15
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x81
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x16
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x81
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x17
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x81
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x18
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x81
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x19
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x81
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x1a
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x81
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x1b
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x81
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x1c
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x81
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x1d
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x81
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x20
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x81
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x21
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x81
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x2a
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x81
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x2b
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x81
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x2c
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x81
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x2d
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x81
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x2e
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x81
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x2f
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x81
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x30
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x81
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x31
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x81
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x32
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x81
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x33
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x81
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x34
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x81
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x35
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x81
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x36
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x81
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x37
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x81
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x38
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x81
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x39
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x81
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x3a
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x81
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x3b
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x81
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x3c
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x81
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x3d
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x81
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x3e
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x81
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x51
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x81
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x52
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x81
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x53
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x81
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x54
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x81
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x55
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x81
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x56
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x81
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x57
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x81
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x58
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x81
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x59
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x81
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x5a
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x81
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x5b
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x81
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x5c
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x81
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x5d
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x81
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x5e
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x81
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x5f
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x81
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x60
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x81
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x61
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x81
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x62
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x81
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x63
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x81
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x64
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x81
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x65
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x81
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x71
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x81
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x72
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x81
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x73
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x81
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x74
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x81
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x75
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x81
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x76
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x81
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x77
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x81
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x78
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x81
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x79
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x81
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x7a
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x81
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x7b
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x81
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x7c
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x81
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x7d
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x81
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x7e
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x81
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x7f
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x81
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x80
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x81
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x81
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x81
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x82
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x81
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x83
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x81
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x84
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x81
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xe
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x80
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xf
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x80
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x10
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x80
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x11
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x80
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x1c
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x80
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x1d
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x80
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x1e
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x80
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x1f
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x80
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x20
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x80
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x21
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x80
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x2e
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x80
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x2f
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x80
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x30
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x80
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x3b
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x80
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x3c
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x80
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x3d
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x80
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x3e
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x80
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x3f
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x80
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x5a
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x80
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x5b
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x80
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x5c
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x80
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x75
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x80
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x76
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x80
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x82
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x80
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x83
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x80
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x84
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x80
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x85
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x80
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xd
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x7f
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xe
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x7f
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xf
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x7f
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x1e
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x7f
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x1f
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x7f
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x20
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x7f
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x21
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x7f
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x2f
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x7f
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x3e
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x7f
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x3f
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x7f
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x40
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x7f
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x5a
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x7f
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x5b
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x7f
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x75
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x7f
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x76
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x7f
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x84
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x7f
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x85
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x7f
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x86
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x7f
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x87
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x7f
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xc
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x7e
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xd
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x7e
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xe
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x7e
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x1f
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x7e
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x20
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x7e
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x21
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x7e
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x2f
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x7e
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x30
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x7e
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x3f
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x7e
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x40
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x7e
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x41
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x7e
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x5a
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x7e
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x5b
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x7e
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x75
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x7e
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x76
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x7e
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x86
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x7e
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x87
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x7e
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x88
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x7e
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xb
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x7d
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xc
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x7d
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xd
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x7d
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x20
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x7d
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x21
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x7d
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x2f
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x7d
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x30
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x7d
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x40
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x7d
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x41
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x7d
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x42
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x7d
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x5a
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x7d
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x5b
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x7d
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x75
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x7d
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x76
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x7d
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x87
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x7d
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x88
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x7d
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xa
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x7c
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xb
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x7c
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xc
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x7c
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x20
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x7c
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x21
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x7c
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x2f
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x7c
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x30
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x7c
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x41
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x7c
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x42
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x7c
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x5a
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x7c
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x5b
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x7c
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x75
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x7c
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x76
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x7c
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x88
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x7c
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x89
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x7c
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xa
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x7b
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xb
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x7b
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x20
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x7b
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x21
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x7b
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x2f
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x7b
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x30
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x7b
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x42
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x7b
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x43
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x7b
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x5a
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x7b
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x5b
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x7b
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x75
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x7b
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x76
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x7b
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x88
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x7b
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x89
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x7b
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x8a
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x7b
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x9
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x7a
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xa
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x7a
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xb
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x7a
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x2f
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x7a
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x30
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x7a
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x42
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x7a
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x43
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x7a
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x5a
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x7a
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x5b
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x7a
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x75
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x7a
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x76
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x7a
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x89
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x7a
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x8a
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x7a
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x9
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x79
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xa
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x79
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x2f
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x79
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x30
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x79
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x42
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x79
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x43
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x79
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x5a
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x79
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x5b
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x79
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x75
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x79
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x76
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x79
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x8a
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x79
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x8b
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x79
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x9
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x78
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xa
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x78
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x2f
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x78
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x30
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x78
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x42
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x78
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x43
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x78
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x5a
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x78
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x5b
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x78
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x75
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x78
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x76
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x78
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x8a
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x78
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x8b
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x78
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x8
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x77
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x9
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x77
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x2f
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x77
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x30
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x77
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x41
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x77
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x42
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x77
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x5a
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x77
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x5b
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x77
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x75
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x77
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x76
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x77
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x8a
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x77
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x8b
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x77
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x8
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x76
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x9
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x76
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x2f
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x76
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x30
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x76
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x41
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x76
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x42
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x76
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x5a
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x76
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x5b
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x76
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x75
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x76
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x76
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x76
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x8b
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x76
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x8c
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x76
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x8
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x75
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x9
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x75
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x2f
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x75
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x30
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x75
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x40
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x75
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x41
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x75
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x5a
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x75
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x5b
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x75
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x75
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x75
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x76
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x75
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x8b
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x75
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x8c
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x75
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x8
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x74
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x9
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x74
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x2f
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x74
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x3e
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x74
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x3f
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x74
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x40
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x74
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x41
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x74
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x5a
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x74
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x5b
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x74
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x75
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x74
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x76
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x74
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x8b
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x74
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x8c
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x74
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x8
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x73
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x9
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x73
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x2f
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x73
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x30
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x73
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x3c
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x73
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x3d
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x73
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x3e
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x73
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x3f
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x73
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x5a
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x73
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x5b
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x73
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x75
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x73
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x76
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x73
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x8b
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x73
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x8c
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x73
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x95
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x73
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x96
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x73
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x97
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x73
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x98
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x73
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x99
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x73
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x9a
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x73
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x9b
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x73
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x9c
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x73
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x9d
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x73
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x9e
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x73
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x9f
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x73
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xa0
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x73
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xa1
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x73
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xa2
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x73
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xa3
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x73
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xa4
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x73
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xa5
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x73
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xa6
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x73
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xa7
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x73
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xa8
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x73
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xa9
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x73
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xaa
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x73
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xab
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x73
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x8
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x72
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x9
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x72
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x2f
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x72
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x30
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x72
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x31
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x72
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x32
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x72
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x33
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x72
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x34
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x72
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x35
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x72
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x36
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x72
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x37
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x72
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x38
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x72
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x39
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x72
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x3a
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x72
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x3b
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x72
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x3c
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x72
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x3d
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x72
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x3e
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x72
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x5a
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x72
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x5b
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x72
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x75
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x72
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x76
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x72
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x8b
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x72
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x8c
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x72
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x95
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x72
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x96
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x72
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x97
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x72
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x98
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x72
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x99
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x72
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x9a
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x72
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x9b
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x72
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x9c
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x72
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x9d
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x72
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x9e
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x72
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x9f
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x72
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xa0
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x72
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xa1
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x72
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xa2
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x72
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xa3
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x72
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xa4
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x72
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xa5
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x72
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xa6
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x72
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xa7
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x72
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xa8
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x72
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xa9
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x72
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xaa
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x72
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xab
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x72
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xac
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x72
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x8
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x71
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x9
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x71
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x2f
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x71
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x30
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x71
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x31
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x71
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x32
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x71
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x33
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x71
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x34
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x71
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x35
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x71
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x36
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x71
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x37
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x71
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x38
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x71
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x39
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x71
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x3a
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x71
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x3b
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x71
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x5a
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x71
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x5b
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x71
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x75
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x71
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x76
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x71
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x8b
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x71
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x8c
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x71
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x95
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x71
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x96
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x71
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x97
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x71
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x98
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x71
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x99
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x71
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x9a
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x71
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x9b
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x71
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x9c
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x71
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x9d
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x71
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x9e
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x71
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x9f
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x71
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xa0
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x71
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xa1
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x71
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xa2
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x71
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xa3
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x71
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xa4
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x71
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xa5
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x71
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xa6
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x71
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xa7
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x71
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xa8
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x71
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xa9
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x71
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xaa
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x71
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xab
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x71
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xac
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x71
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x8
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x70
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x9
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x70
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x2f
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x70
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x30
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x70
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x39
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x70
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x3a
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x70
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x3b
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x70
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x5a
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x70
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x5b
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x70
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x75
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x70
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x76
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x70
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x8b
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x70
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x8c
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x70
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x8
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x6f
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x9
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x6f
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x17
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x6f
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x18
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x6f
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x19
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x6f
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x1a
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x6f
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x1b
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x6f
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x1c
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x6f
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x1d
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x6f
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x1e
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x6f
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x1f
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x6f
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x20
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x6f
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x21
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x6f
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x22
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x6f
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x23
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x6f
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x24
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x6f
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x2f
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x6f
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x3a
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x6f
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x3b
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x6f
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x3c
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x6f
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x3d
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x6f
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x5a
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x6f
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x5b
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x6f
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x75
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x6f
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x76
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x6f
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x8b
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x6f
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x8c
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x6f
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x8
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x6e
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x9
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x6e
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x17
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x6e
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x18
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x6e
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x19
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x6e
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x1a
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x6e
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x1b
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x6e
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x1c
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x6e
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x1d
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x6e
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x1e
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x6e
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x1f
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x6e
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x20
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x6e
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x21
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x6e
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x22
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x6e
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x23
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x6e
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x2f
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x6e
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x30
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x6e
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x3c
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x6e
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x3d
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x6e
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x3e
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x6e
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x5a
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x6e
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x5b
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x6e
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x75
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x6e
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x76
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x6e
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x8b
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x6e
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x8c
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x6e
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x8
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x6d
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x9
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x6d
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x20
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x6d
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x21
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x6d
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x2f
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x6d
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x30
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x6d
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x3d
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x6d
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x3e
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x6d
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x3f
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x6d
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x5a
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x6d
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x5b
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x6d
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x75
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x6d
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x76
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x6d
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x8a
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x6d
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x8b
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x6d
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x8
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x6c
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x9
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x6c
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x20
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x6c
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x21
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x6c
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x2f
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x6c
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x30
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x6c
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x3e
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x6c
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x3f
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x6c
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x40
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x6c
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x5a
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x6c
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x5b
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x6c
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x75
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x6c
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x76
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x6c
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x8a
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x6c
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x8b
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x6c
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x9
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x6b
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xa
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x6b
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x20
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x6b
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x21
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x6b
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x2f
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x6b
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x30
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x6b
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x3f
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x6b
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x40
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x6b
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x5a
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x6b
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x5b
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x6b
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x75
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x6b
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x76
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x6b
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x8a
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x6b
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x8b
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x6b
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x9
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x6a
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xa
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x6a
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x20
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x6a
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x21
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x6a
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x2f
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x6a
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x30
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x6a
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x40
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x6a
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x41
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x6a
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x5a
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x6a
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x5b
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x6a
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x75
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x6a
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x76
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x6a
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x89
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x6a
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x8a
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x6a
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x9
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x69
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xa
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x69
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xb
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x69
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x20
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x69
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x21
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x69
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x2f
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x69
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x30
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x69
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x40
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x69
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x41
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x69
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x42
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x69
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x5a
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x69
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x5b
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x69
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x75
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x69
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x76
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x69
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x89
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x69
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x8a
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x69
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xa
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x68
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xb
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x68
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x20
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x68
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x21
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x68
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x2f
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x68
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x30
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x68
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x41
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x68
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x42
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x68
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x5a
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x68
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x5b
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x68
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x75
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x68
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x76
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x68
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x88
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x68
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x89
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x68
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xa
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x67
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xb
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x67
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xc
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x67
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x20
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x67
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x21
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x67
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x2f
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x67
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x30
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x67
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x42
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x67
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x43
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x67
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x5a
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x67
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x5b
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x67
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x75
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x67
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x76
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x67
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x87
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x67
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x88
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x67
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x89
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x67
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xb
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x66
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xc
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x66
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xd
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x66
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x20
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x66
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x21
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x66
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x2f
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x66
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x30
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x66
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x42
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x66
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x43
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x66
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x5a
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x66
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x5b
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x66
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x75
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x66
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x76
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x66
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x86
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x66
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x87
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x66
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x88
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x66
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xc
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x65
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xd
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x65
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xe
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x65
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x20
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x65
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x21
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x65
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x2f
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x65
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x43
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x65
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x44
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x65
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x5a
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x65
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x5b
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x65
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x75
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x65
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x76
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x65
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x85
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x65
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x86
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x65
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x87
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x65
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xd
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x64
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xe
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x64
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xf
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x64
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x10
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x64
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x1f
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x64
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x20
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x64
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x21
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x64
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x2e
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x64
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x2f
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x64
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x30
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x64
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x43
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x64
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x44
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x64
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x45
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x64
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x5a
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x64
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x5b
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x64
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x75
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x64
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x76
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x64
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x83
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x64
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x84
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x64
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x85
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x64
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x86
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x64
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xf
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x63
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x10
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x63
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x11
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x63
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x12
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x63
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x13
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x63
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x1c
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x63
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x1d
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x63
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x1e
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x63
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x1f
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x63
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x20
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x63
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x2a
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x63
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x2b
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x63
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x2c
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x63
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x2d
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x63
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x2e
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x63
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x2f
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x63
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x30
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x63
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x31
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x63
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x32
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x63
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x33
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x63
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x34
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x63
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x35
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x63
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x44
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x63
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x45
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x63
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x46
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x63
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x47
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x63
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x48
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x63
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x51
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x63
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x52
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x63
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x53
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x63
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x54
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x63
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x55
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x63
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x56
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x63
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x57
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x63
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x58
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x63
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x59
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x63
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x5a
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x63
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x5b
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x63
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x5c
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x63
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x5d
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x63
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x5e
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x63
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x5f
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x63
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x60
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x63
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x61
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x63
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x62
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x63
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x63
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x63
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x64
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x63
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x65
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x63
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x71
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x63
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x72
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x63
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x73
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x63
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x74
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x63
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x75
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x63
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x76
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x63
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x77
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x63
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x78
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x63
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x79
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x63
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x7a
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x63
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x7b
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x63
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x7c
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x63
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x7d
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x63
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x7e
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x63
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x7f
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x63
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x80
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x63
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x81
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x63
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x82
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x63
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x83
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x63
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x84
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x63
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x10
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x62
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x11
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x62
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x12
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x62
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x13
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x62
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x14
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x62
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x15
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x62
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x16
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x62
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x17
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x62
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x18
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x62
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x19
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x62
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x1a
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x62
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x1b
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x62
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x1c
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x62
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x1d
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x62
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x1e
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x62
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x2a
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x62
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x2b
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x62
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x2c
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x62
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x2d
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x62
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x2e
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x62
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x2f
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x62
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x30
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x62
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x31
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x62
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x32
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x62
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x33
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x62
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x34
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x62
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x35
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x62
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x44
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x62
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x45
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x62
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x46
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x62
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x47
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x62
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x48
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x62
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x51
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x62
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x52
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x62
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x53
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x62
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x54
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x62
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x55
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x62
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x56
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x62
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x57
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x62
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x58
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x62
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x59
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x62
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x5a
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x62
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x5b
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x62
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x5c
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x62
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x5d
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x62
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x5e
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x62
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x5f
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x62
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x60
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x62
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x61
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x62
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x62
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x62
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x63
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x62
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x64
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x62
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x65
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x62
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x71
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x62
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x72
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x62
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x73
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x62
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x74
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x62
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x75
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x62
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x76
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x62
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x77
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x62
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x78
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x62
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x79
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x62
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x7a
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x62
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x7b
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x62
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x7c
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x62
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x7d
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x62
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x7e
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x62
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x7f
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x62
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x80
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x62
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x81
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x62
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x82
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x62
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x14
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x61
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x15
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x61
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x16
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x61
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x17
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x61
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x18
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x61
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x19
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x61
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x1a
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x61
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x1b
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x61
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x71
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x1e
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x72
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x1e
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x73
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x1e
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x3e
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x1d
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x3f
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x1d
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x40
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x1d
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x41
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x1d
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x42
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x1d
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x43
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x1d
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x44
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x1d
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x45
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x1d
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x46
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x1d
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x47
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x1d
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x48
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x1d
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x49
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x1d
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x4a
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x1d
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x53
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x1d
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x54
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x1d
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x55
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x1d
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x56
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x1d
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x57
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x1d
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x58
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x1d
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x59
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x1d
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x5a
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x1d
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x5b
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x1d
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x5c
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x1d
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x5d
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x1d
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x5e
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x1d
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x5f
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x1d
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x60
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x1d
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x61
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x1d
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x62
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x1d
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x6e
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x1d
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x6f
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x1d
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x70
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x1d
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x71
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x1d
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x72
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x1d
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x73
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x1d
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x74
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x1d
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x75
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x1d
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x76
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x1d
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x78
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x1d
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x79
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x1d
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x81
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x1d
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x82
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x1d
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x83
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x1d
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x84
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x1d
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x85
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x1d
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x86
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x1d
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x87
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x1d
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x88
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x1d
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x89
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x1d
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x8a
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x1d
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x8b
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x1d
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x8c
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x1d
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x8d
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x1d
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x93
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x1d
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x94
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x1d
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x95
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x1d
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x96
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x1d
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x97
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x1d
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x9f
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x1d
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xa0
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x1d
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xa1
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x1d
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xa2
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x1d
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xa3
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x1d
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xa4
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x1d
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xa5
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x1d
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x40
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x1c
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x41
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x1c
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x4a
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x1c
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x4b
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x1c
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x56
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x1c
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x62
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x1c
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x6d
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x1c
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x6e
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x1c
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x77
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x1c
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x78
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x1c
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x79
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x1c
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x87
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x1c
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x96
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x1c
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x97
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x1c
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x98
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x1c
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xa3
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x1c
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x41
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x1b
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x4c
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x1b
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x56
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x1b
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x62
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x1b
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x6c
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x1b
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x78
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x1b
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x79
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x1b
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x87
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x1b
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x96
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x1b
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x98
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x1b
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xa3
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x1b
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x41
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x1a
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x4c
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x1a
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x56
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x1a
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x62
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x1a
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x6b
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x1a
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x78
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x1a
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x79
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x1a
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x87
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x1a
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x96
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x1a
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x99
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x1a
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xa3
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x1a
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x41
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x19
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x4d
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x19
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x56
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x19
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x62
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x19
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x6a
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x19
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x6b
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x19
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x87
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x19
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x96
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x19
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x99
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x19
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xa3
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x19
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x41
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x18
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x4c
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x18
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x4d
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x18
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x56
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x18
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x6a
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x18
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x87
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x18
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x96
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x18
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x9a
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x18
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xa3
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x18
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x41
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x17
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x4c
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x17
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x56
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x17
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x5d
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x17
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x6a
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x17
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x87
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x17
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x96
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x17
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x9a
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x17
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x9b
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x17
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xa3
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x17
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x41
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x16
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x4b
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x16
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x4c
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x16
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x56
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x16
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x5d
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x16
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x69
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x16
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x6a
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x16
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x87
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x16
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x96
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x16
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x9b
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x16
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xa3
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x16
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x41
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x15
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x4a
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x15
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x4b
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x15
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x56
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x15
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x5d
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x15
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x69
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x15
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x6a
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x15
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x87
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x15
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x96
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x15
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x9c
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x15
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xa3
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x15
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x41
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x14
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x42
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x14
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x43
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x14
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x44
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x14
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x45
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x14
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x46
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x14
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x47
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x14
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x48
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x14
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x49
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x14
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x4a
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x14
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x56
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x14
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x57
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x14
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x58
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x14
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x59
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x14
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x5a
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x14
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x5b
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x14
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x5c
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x14
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x5d
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x14
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x69
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x14
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x6a
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x14
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x87
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x14
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x96
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x14
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x9c
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x14
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xa3
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x14
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x41
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x13
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x4b
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x13
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x4c
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x13
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x56
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x13
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x5d
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x13
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x69
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x13
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x6a
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x13
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x87
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x13
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x96
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x13
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x9d
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x13
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xa3
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x13
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x41
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x12
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x4c
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x12
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x4d
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x12
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x56
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x12
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x5d
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x12
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x69
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x12
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x6a
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x12
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x73
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x12
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x74
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x12
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x75
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x12
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x76
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x12
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x77
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x12
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x78
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x12
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x79
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x12
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x7a
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x12
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x87
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x12
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x96
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x12
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x9d
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x12
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x9e
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x12
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xa3
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x12
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x41
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x11
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x4d
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x11
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x4e
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x11
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x56
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x11
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x5d
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x11
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x69
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x11
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x6a
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x11
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x78
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x11
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x79
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x11
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x87
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x11
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x96
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x11
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x9e
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x11
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xa3
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x11
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x41
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x10
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x4e
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x10
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x56
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x10
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x6a
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x10
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x78
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x10
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x79
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x10
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x87
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x10
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x96
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x10
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x9e
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x10
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x9f
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x10
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xa3
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x10
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x41
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xf
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x4e
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xf
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x56
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xf
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x63
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xf
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x6a
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xf
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x78
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xf
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x79
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xf
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x87
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xf
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x96
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xf
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x9f
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xf
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xa3
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xf
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x41
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xe
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x4e
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xe
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x56
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xe
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x63
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xe
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x6a
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xe
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x6b
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xe
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x78
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xe
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x79
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xe
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x87
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xe
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x96
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xe
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xa0
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xe
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xa3
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xe
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x41
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xd
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x4e
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xd
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x56
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xd
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x63
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xd
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x6b
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xd
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x78
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xd
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x79
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xd
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x87
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xd
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x96
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xd
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xa0
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xd
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xa1
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xd
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xa3
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xd
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x41
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xc
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x4d
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xc
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x56
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xc
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x63
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xc
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x6c
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xc
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x78
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xc
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x79
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xc
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x87
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xc
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x96
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xc
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xa1
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xc
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xa3
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xc
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x40
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xb
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x41
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xb
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x4b
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xb
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x4c
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xb
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x56
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xb
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x63
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xb
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x6d
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xb
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x6e
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xb
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x77
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xb
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x78
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xb
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x79
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xb
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x87
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xb
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x96
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xb
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xa1
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xb
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xa2
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xb
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xa3
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xb
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x3e
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xa
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x3f
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xa
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x40
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xa
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x41
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xa
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x42
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xa
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x43
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xa
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x44
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xa
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x45
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xa
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x46
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xa
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x47
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xa
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x48
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xa
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x49
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xa
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x4a
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xa
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x4b
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xa
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x53
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xa
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x54
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xa
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x55
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xa
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x56
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xa
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x57
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xa
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x58
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xa
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x59
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xa
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x5a
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xa
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x5b
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xa
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x5c
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xa
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x5d
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xa
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x5e
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xa
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x5f
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xa
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x60
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xa
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x61
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xa
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x62
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xa
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x63
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xa
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x6e
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xa
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x6f
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xa
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x70
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xa
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x71
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xa
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x72
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xa
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x73
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xa
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x74
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xa
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x75
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xa
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x76
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xa
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x77
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xa
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x81
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xa
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x82
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xa
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x83
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xa
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x84
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xa
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x85
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xa
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x86
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xa
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x87
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xa
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x88
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xa
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x89
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xa
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x8a
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xa
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x8b
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xa
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x8c
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xa
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x8d
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xa
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x94
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xa
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x95
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xa
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x96
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xa
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x97
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xa
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x98
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xa
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x99
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xa
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x9a
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xa
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xa2
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xa
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xa3
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xa
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x72
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x9
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x73
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x9
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    return
    
draw_animated
    return
    
    end