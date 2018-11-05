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
	movlw	0x01
	movwf	LATD
	movlw	0xBD
	call	row
	
	movlw	0x0
	movwf	LATE
	movlw	0x1B
	movwf	LATD
	movlw	0xBD
	call	row
	
	movlw	0x0
	movwf	LATE
	movlw	0x36
	movwf	LATD
	movlw	0xBD
	call	row
	
	movlw	0x0
	movwf	LATE
	movlw	0x51
	movwf	LATD
	movlw	0xBD
	call	row
	
	movlw	0x0
	movwf	LATE
	movlw	0x6C
	movwf	LATD
	movlw	0xBD
	call	row
	
	movlw	0x0
	movwf	LATE
	movlw	0x87
	movwf	LATD
	movlw	0xBD
	call	row
	
	movlw	0x0
	movwf	LATE
	movlw	0xA2
	movwf	LATD
	movlw	0xBD
	call	row
	
	movlw	0x0
	movwf	LATE
	movlw	0xBD
	movwf	LATD
	movlw	0xBD
	call	row
	
draw_cols
	movlw	0x01
	movwf	LATE
	movlw	0x00
	movwf	LATD
	movlw	0xBD
	call	col
	
	movlw	0x0
	movwf	LATD
	movlw	0x1B
	movwf	LATE
	movlw	0xBD
	call	col
	
	movlw	0x0
	movwf	LATD
	movlw	0x36
	movwf	LATE
	movlw	0xBD
	call	col
	
	movlw	0x0
	movwf	LATD
	movlw	0x51
	movwf	LATE
	movlw	0xBD
	call	col
	
	movlw	0x0
	movwf	LATD
	movlw	0x6C
	movwf	LATE
	movlw	0xBD
	call	col
	
	movlw	0x0
	movwf	LATD
	movlw	0x87
	movwf	LATE
	movlw	0xBD
	call	col
	
	movlw	0x0
	movwf	LATD
	movlw	0xA2
	movwf	LATE
	movlw	0xBD
	call	col
	
	movlw	0x0
	movwf	LATD
	movlw	0xBD
	movwf	LATE
	movlw	0xBD
	call	col
	
	call	xman	; Add sprite
	
	bra	draw_grids
	
row	incf	LATE, 1
	nop
	nop
	nop
	nop
	nop
	nop
	movlw	0xBD
	cpfsgt	LATE
	bra	row
	return
	
col	incf	LATD, 1
	nop
	nop
	nop
	nop
	nop
	nop
	movlw	0xBD
	cpfsgt	LATD
	bra	col
	return

	end