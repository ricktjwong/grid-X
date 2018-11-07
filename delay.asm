#include p18f87k22.inc
	global	add_delay
	
acs0    udata_acs
global_counter	res 1
tiny_counter	res 1
	
delay	code
		
add_delay	
	movwf	global_counter	    ; Does a delay multiplied by value in WREG

global_delay	
	call	tiny_delay
	decfsz	global_counter, 1
	bra	global_delay
	return
	
tiny_delay	
	movlw	0x0F
	movwf	tiny_counter
loop	decfsz	tiny_counter, 1
	bra	loop
	return 

	end