#include p18f87k22.inc
	global	draw

acs0    udata_acs   ; named variables in access ram	 
	
graphics    code

draw
	clrf	LATD
	clrf	LATE
	movlw 	0x0				; Move literal (0) to WREG
	movwf	TRISD, ACCESS			; Move WREG literal to FREG, assign file register to TRISB. Port C all outputs
	movlw 	0x0				; Move literal (0) to WREG
	movwf	TRISE, ACCESS			; Move WREG literal to FREG, assign file register to TRISB. Port C all outputs
		
loop  
	movlw	0x01
	movwf	PORTD
	movlw	0x01
	movwf	PORTE
	
	call	setupglobal
	
	movlw	0x01
	movwf	PORTD
	movlw	0x1B
	movwf	PORTE
	
	call	setupglobal
	
	movlw	0x1B
	movwf	PORTD
	movlw	0x01
	movwf	PORTE
	
	call	setupglobal
	
	movlw	0x1B
	movwf	PORTD
	movlw	0x1B
	movwf	PORTE
	
	call	setupglobal
	
	bra	loop

loop2	incf    LATE,1
	nop
	incf    LATD,1
	nop
	bra	loop
	
	movff 	0x06, PORTE			; PORTF: y-axis (channel2), PORTE: x-axis (channel1)
        	
;	bcf	PORTD, 0
;;	call	setupglobal
;	bsf	PORTD, 0
;;	call	setupglobal
;	bcf	PORTD, 0
	
	incf 	0x06, W, ACCESS
test	movwf	0x06, ACCESS			; Test for end of loop condition. Move from WREF to FREG, at address 0x06
	movlw 	0xFF				; Move literal (0x63) to WREG
	cpfsgt 	0x06, ACCESS			; Compare FREG at address 0x06 with WREG. If greater, skip next line. Else, branch to loop
	bra 	loop				; Not yet finished goto start of loop again
	
	call	draw

	
setupglobal	movlw	0xFF	    ; setting global counter
		movwf	0x21, ACCESS
globaldelay	call	delay
		decfsz	0x21, F, ACCESS
		bra	globaldelay
		return
	
delay	movlw	0xFF
	movwf	0x20, ACCESS
dloop	nop
	nop
	nop
	decfsz	0x20, F, ACCESS
	bra	dloop
	return 
	
	end
