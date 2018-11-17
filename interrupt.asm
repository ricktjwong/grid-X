#include p18f87k22.inc
	global	start_int
	extern	keypad_checks, render_graphics, editor_keypad
	extern	gamestate
	
int_hi	code	0x0008		; high vector, no low vector
	btfss	INTCON, TMR0IF	; check that this is timer0 interrupt
	retfie	FAST		; if not then return
	call	render_graphics
	movlw	0xFF
	cpfseq	gamestate	; Compare if gamestate = FF hex
	bra	playmode	; if != 10	
	bra	editor		; if == 10
    playmode
	call	keypad_checks
	goto	rejoin
    editor
	call	editor_keypad
	goto	rejoin
rejoin
	bcf	INTCON, TMR0IF	; clear interrupt flag
	retfie	FAST		; fast return from interrupt
	
interrupt   code

start_int	
	movlw	b'10000000'	; Set timer0 to 16-bit, Fosc/4/256
	movwf	T0CON		; 62.5KHz clock rate, approx 1sec rollover
	bsf	INTCON, TMR0IE	; Enable timer0 interrupt
	bsf	INTCON, GIE	; Enable all interrupts
	return

	end
