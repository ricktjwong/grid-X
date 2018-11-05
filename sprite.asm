#include p18f87k22.inc
	extern	add_delay
	global	xman

acs0    udata_acs   ; named variables in access ram	
xman_x	res 1
xman_y	res 1
	
sprite  code

xman	movlw	0x5E
	movwf	xman_x
	movlw	0x5E
	movwf	xman_y
	movff	xman_x, PORTE
	movff	xman_y, PORTD
	movlw	0x01
	call	add_delay
	
	end