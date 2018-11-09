#include p18f87k22.inc
	global	start_int
	extern	keypad_input, final_hex, xman, centre_x, centre_y, render_graphics
	
int_hi	code	0x0008		; high vector, no low vector
	btfss	INTCON,TMR0IF	; check that this is timer0 interrupt
	retfie	FAST		; if not then return
	call	render_graphics
	call	keypad_input
	bcf	INTCON,TMR0IF	; clear interrupt flag
	retfie	FAST		; fast return from interrupt
	
interrupt   code

start_int	
	movlw	b'10000000'	; Set timer0 to 16-bit, Fosc/4/256
	movwf	T0CON		; 62.5KHz clock rate, approx 1sec rollover
	bsf	INTCON,TMR0IE	; Enable timer0 interrupt
	bsf	INTCON,GIE	; Enable all interrupts
	return

	end


