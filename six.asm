#include p18f87k22.inc
	global  draw_six
	extern	add_tiny_delay

acs0	  udata_acs
digit_x   res 1

six	code 

draw_six	
    movwf  digit_x
    movlw  0xe
    addwf  digit_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xf0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xf
    addwf  digit_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xf0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x10
    addwf  digit_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xf0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xc
    addwf  digit_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xef
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xd
    addwf  digit_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xef
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xe
    addwf  digit_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xef
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xf
    addwf  digit_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xef
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x10
    addwf  digit_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xef
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x11
    addwf  digit_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xef
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x12
    addwf  digit_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xef
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xa
    addwf  digit_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xee
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xb
    addwf  digit_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xee
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xc
    addwf  digit_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xee
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x9
    addwf  digit_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xed
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xa
    addwf  digit_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xed
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x8
    addwf  digit_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xec
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x9
    addwf  digit_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xec
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x7
    addwf  digit_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xeb
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x8
    addwf  digit_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xeb
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x7
    addwf  digit_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xea
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x8
    addwf  digit_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xea
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x7
    addwf  digit_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xe9
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x6
    addwf  digit_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xe8
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x7
    addwf  digit_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xe8
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x6
    addwf  digit_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xe7
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x7
    addwf  digit_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xe7
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xb
    addwf  digit_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xe7
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xc
    addwf  digit_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xe7
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xd
    addwf  digit_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xe7
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xe
    addwf  digit_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xe7
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x6
    addwf  digit_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xe6
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x9
    addwf  digit_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xe6
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xa
    addwf  digit_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xe6
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xb
    addwf  digit_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xe6
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xc
    addwf  digit_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xe6
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xe
    addwf  digit_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xe6
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xf
    addwf  digit_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xe6
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x10
    addwf  digit_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xe6
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x6
    addwf  digit_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xe5
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x9
    addwf  digit_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xe5
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x10
    addwf  digit_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xe5
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x11
    addwf  digit_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xe5
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x6
    addwf  digit_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xe4
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x7
    addwf  digit_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xe4
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x8
    addwf  digit_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xe4
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x11
    addwf  digit_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xe4
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x6
    addwf  digit_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xe3
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x7
    addwf  digit_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xe3
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x8
    addwf  digit_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xe3
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x11
    addwf  digit_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xe3
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x12
    addwf  digit_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xe3
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x6
    addwf  digit_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xe2
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x7
    addwf  digit_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xe2
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x11
    addwf  digit_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xe2
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x12
    addwf  digit_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xe2
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x6
    addwf  digit_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xe1
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x7
    addwf  digit_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xe1
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x11
    addwf  digit_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xe1
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x12
    addwf  digit_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xe1
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x7
    addwf  digit_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xe0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x11
    addwf  digit_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xe0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x12
    addwf  digit_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xe0
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x7
    addwf  digit_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xdf
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x8
    addwf  digit_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xdf
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x11
    addwf  digit_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xdf
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x12
    addwf  digit_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xdf
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x8
    addwf  digit_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xde
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x11
    addwf  digit_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xde
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x8
    addwf  digit_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xdd
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x9
    addwf  digit_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xdd
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x10
    addwf  digit_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xdd
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x11
    addwf  digit_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xdd
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x9
    addwf  digit_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xdc
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xa
    addwf  digit_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xdc
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xb
    addwf  digit_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xdc
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xe
    addwf  digit_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xdc
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xf
    addwf  digit_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xdc
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0x10
    addwf  digit_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xdc
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xb
    addwf  digit_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xdb
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xc
    addwf  digit_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xdb
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xd
    addwf  digit_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xdb
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xe
    addwf  digit_x, 0
    movwf  LATE
    movlw  0x0A 
    call  add_tiny_delay 
    movlw  0xdb
    movwf  LATD
    movlw  0x0A 
    call  add_tiny_delay 
    return
    
    end
