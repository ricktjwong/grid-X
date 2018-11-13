#include p18f87k22.inc
	global	add_long_delay, add_tiny_delay
	
acs0    udata_acs
long_counter	res 1
tiny_counter	res 1
	
delay	code
		
add_long_delay	
	movwf	long_counter	    ; Does a delay multiplied by value in WREG
	movlw	0xFF
	movwf	tiny_counter

long_delay	
	call	tiny_delay
	decfsz	long_counter, 1
	bra	long_delay
	return
	
add_tiny_delay
	movwf	tiny_counter

tiny_delay	
loop	decfsz	tiny_counter, 1
	bra	loop
	return 

	end
	