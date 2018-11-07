#include p18f87k22.inc
	global	start_int
	extern	final_hex, xman, centre_x, centre_y
	
int_hi	code	0x0008		; high vector, no low vector
	btfss	INTCON,TMR0IF	; check that this is timer0 interrupt
	retfie	FAST		; if not then return
	call	check
	bcf	INTCON,TMR0IF	; clear interrupt flag
	retfie	FAST		; fast return from interrupt
	
interrupt   code

start_int	
	clrf	TRISB
	clrf	LATB
	movlw	b'10000111'	; Set timer0 to 16-bit, Fosc/4/256
	movwf	T0CON		; 62.5KHz clock rate, approx 1sec rollover
	bsf	INTCON,TMR0IE	; Enable timer0 interrupt
	bsf	INTCON,GIE	; Enable all interrupts
	
check
	movff	final_hex, PORTH
	movlw	0xB7
	xorwf	final_hex, 0		; subtract, store in W. Status bit Z 1 if same
	btfsc	STATUS, Z
	bra	move_up
	btfsc	STATUS, Z
	return
	
	movff	final_hex, PORTH
	movlw	0xBD
	xorwf	final_hex, 0		; subtract, store in W. Status bit Z 1 if same
	btfsc	STATUS, Z
	bra	move_down
	btfsc	STATUS, Z
	return
	
	movff	final_hex, PORTH
	movlw	0xDB
	xorwf	final_hex, 0		; subtract, store in W. Status bit Z 1 if same
	btfsc	STATUS, Z
	bra	move_right
	btfsc	STATUS, Z
	return
	
	movff	final_hex, PORTH
	movlw	0x7B
	xorwf	final_hex, 0		; subtract, store in W. Status bit Z 1 if same
	btfsc	STATUS, Z
	bra	move_left
	btfsc	STATUS, Z
	return
	
	return
	
move_up
	movlw	0x02
	movwf	PORTB
	movlw	0x1B
	addwf	centre_y, 1
	call	xman
	return
	
move_down
	movlw	0x02
	movwf	PORTB
	movlw	0x1B
	subwf	centre_y, 1
	call	xman
	return
	
move_right
	movlw	0x02
	movwf	PORTB
	movlw	0x1B
	addwf	centre_x, 1
	call	xman
	return
	
move_left
	movlw	0x02
	movwf	PORTB
	movlw	0x1B
	subwf	centre_x, 1
	call	xman
	return

	end


