;#include p18f87k22.inc
;	global	drawgrid
;
;acs0    udata_acs   ; named variables in access ram	 
;	
;drawtest    code
;
;drawgrid
;	clrf	LATF
;	clrf	LATD
;	clrf	LATE
;	movlw 	0x0				; Move literal (0) to WREG
;	movwf	TRISD, ACCESS			; Move WREG literal to FREG, assign file register to TRISB. Port C all outputs
;	movlw 	0x0				; Move literal (0) to WREG
;	movwf	TRISE, ACCESS			; Move WREG literal to FREG, assign file register to TRISB. Port C all outputs
;	movlw 	0x0				; Move literal (0) to WREG
;	movwf	TRISF, ACCESS			; Move WREG literal to FREG, assign file register to TRISB. Port C all outputs
;	
;	movlw	0x01
;	movwf	PORTE
;
;	movlw	0x01
;	movwf	PORTF
;
;	bcf	PORTD, 0
;	bsf	PORTD, 0
;	bcf	PORTD, 0
;	
;	movlw	0x01
;	movwf	PORTE, ACCESS
;	movlw	0xFF
;	movwf	PORTF, ACCESS
;	
;	bcf	PORTD, 0
;	bsf	PORTD, 0
;	bcf	PORTD, 0
;	
;	movlw	0xFF
;	movwf	PORTE, ACCESS
;	movlw	0x01
;	movwf	PORTF, ACCESS
;	
;	bcf	PORTD, 0
;	bsf	PORTD, 0
;	bcf	PORTD, 0
;	
;	movlw	0xFF
;	movwf	PORTE, ACCESS
;	movlw	0xFF
;	movwf	PORTF, ACCESS
;	
;	bcf	PORTD, 0
;	bsf	PORTD, 0
;	bcf	PORTD, 0
;	
;	call	drawgrid
;
;	
;setupglobal	movlw	0xFF	    ; setting global counter
;		movwf	0x21, ACCESS
;globaldelay	call	delay
;		decfsz	0x21, F, ACCESS
;		bra	globaldelay
;		return
;	
;delay	movlw	0xFF
;	movwf	0x20, ACCESS
;dloop	nop
;	nop
;	nop
;	decfsz	0x20, F, ACCESS
;	bra	dloop
;	return 
;	
	end
;
;
;
