#include p18f87k22.inc
	extern	xman
	global	draw_grids
	
grids    code

draw_grids
	clrf	LATD
	clrf	LATE
	movlw 	0x0				; Move literal (0) to WREG
	movwf	TRISD, ACCESS			; Move WREG literal to FREG, assign file register to TRISB. Port C all outputs
	movlw 	0x0				; Move literal (0) to WREG
	movwf	TRISE, ACCESS			; Move WREG literal to FREG, assign file register to TRISB. Port C all outputs
			
; PORTD - y-axis | PORTE - x-axis

draw_rows
        movlw	0x01				; y-axis at 0V, x-axis 0V - 7V
	movwf	LATD
	call	inc_row				; After incrementing, x-axis (LATE) is now at 7V
		
	movlw	0x1B				; y-axis at 1V, x-axis 7V - 0V
	movwf	LATD
	call	dec_row				; After incrementing, x-axis (LATE) is now at 0V
	
	movlw	0x36				; y-axis at 2V, x-axis 0V - 7V
	movwf	LATD
	call	inc_row
	
	movlw	0x51				; y-axis at 3V, x-axis 7V - 0V
	movwf	LATD
	call	dec_row
	
	movlw	0x6C				; y-axis at 4V, x-axis 0V - 7V
	movwf	LATD
	call	inc_row
	
	movlw	0x87				; y-axis at 5V, x-axis 7V - 0V
	movwf	LATD
	call	dec_row
	
	movlw	0xA2				; y-axis at 6V, x-axis 0V - 7V
	movwf	LATD
	call	inc_row
	
	movlw	0xBD				; y-axis at 7V, x-axis 7V - 0V
	movwf	LATD
	call	dec_row
	
draw_cols
	call	dec_col				; x-axis at 0V, y-axis 7V - 0V
	
	movlw	0x1B				; x-axis at 1V, y-axis 0V - 7V
	movwf	LATE	    
	call	inc_col
	
	movlw	0x36				; x-axis at 2V, y-axis 7V - 0V
	movwf	LATE	    
	call	dec_col
	
	movlw	0x51				; x-axis at 3V, y-axis 0V - 7V
	movwf	LATE	    
	call	inc_col
	
	movlw	0x6C				; x-axis at 4V, y-axis 7V - 0V
	movwf	LATE	    
	call	dec_col
	
	movlw	0x87				; x-axis at 5V, y-axis 0V - 7V
	movwf	LATE	    
	call	inc_col
	
	movlw	0xA2				; x-axis at 6V, y-axis 7V - 0V
	movwf	LATE	    
	call	dec_col
	
	movlw	0xBD				; x-axis at 7V, y-axis 0V - 7V
	movwf	LATE	    
	call	inc_col
		
	return
	
inc_row	
	incf	LATE, 1
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	movlw	0xBD
	cpfseq	LATE
	bra	inc_row
	return
	
dec_row
	decf	LATE, 1
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	movlw	0x01
	cpfseq	LATE
	bra	dec_row
	return
	
inc_col	
	incf	LATD, 1
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	movlw	0xBD
	cpfseq	LATD
	bra	inc_col
	return
	
dec_col	
	decf	LATD, 1
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	movlw	0x01
	cpfseq	LATD
	bra	dec_col
	return	

	end	