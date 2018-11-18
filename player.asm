#include p18f87k22.inc
	global  draw_player, player_x, player_y, player_score, player_gridhex
	global	player_score_L, player_score_H
	extern	add_tiny_delay

acs0	udata_acs
player_x    res 1
player_y    res 1
player_score res 1 
player_gridhex res 1
player_score_L res 1
player_score_H res 1
	
player	code

draw_player
    movlw  0x4
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x18
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x5
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x18
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x6
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x18
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x7
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x18
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x8
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x18
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x9
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x18
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xa
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x18
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x12
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x18
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x13
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x18
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x14
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x18
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x15
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x18
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x16
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x18
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x17
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x18
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x6
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x17
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x7
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x17
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x14
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x17
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x15
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x17
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x7
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x16
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x8
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x16
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x14
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x16
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x8
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x15
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x9
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x15
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x13
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x15
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x9
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x14
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x12
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x14
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x13
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x14
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x9
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x13
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xa
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x13
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x11
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x13
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x12
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x13
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xa
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x12
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xb
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x12
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x10
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x12
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x11
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x12
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xb
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x11
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xc
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x11
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x10
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x11
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xc
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x10
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xf
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x10
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x10
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x10
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xc
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xf
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xd
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xf
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xe
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xf
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xf
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xf
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xd
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xe
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xe
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xe
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xd
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xd
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xe
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xd
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xf
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xd
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xc
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xc
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xd
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xc
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xf
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xc
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xb
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xb
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xc
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xb
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xf
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xb
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x10
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xb
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xa
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xa
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xb
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xa
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x10
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xa
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x11
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xa
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xa
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x9
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x11
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x9
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x12
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x9
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x9
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x8
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xa
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x8
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x12
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x8
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x13
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x8
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x8
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x7
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x9
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x7
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x13
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x7
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x7
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x6
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x8
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x6
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x13
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x6
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x14
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x6
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x6
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x5
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x7
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x5
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x14
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x5
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x15
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x5
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x5
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x4
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x6
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x4
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x7
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x4
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x14
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x4
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x15
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x4
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x16
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x4
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x4
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x3
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x5
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x3
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x6
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x3
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x7
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x3
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x8
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x3
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x9
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x3
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xa
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x3
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x11
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x3
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x12
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x3
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x13
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x3
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x14
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x3
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x15
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x3
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x16
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x3
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x17
    addwf  player_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x3
    addwf  player_y, 0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    return
    
    end
    