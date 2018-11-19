#include p18f87k22.inc
#include constants.inc
    global  keypad_checks, editor_mode
    extern  add_tiny_delay, enable_bit, player_gridhex
    extern  q_learning_mode, q_learning_mode_2, q_learning_mode_3
    extern  third_check_up, third_check_down, third_check_left, third_check_right
    extern  gamestate, level_empty7, return_to_begin, keypad_input, final_hex
    extern  handle_D_button

keypad		code
		
keypad_checks
	call	keypad_input
	call	checkdown
rejoin    
	call	keypad_input
	call	checkup
	return
    
checkdown
; Checks for button-press-down for : 2,4,6,8,D,1. Calls second check to prevent
; microprocessor from registering multiple presses with enable bit.
	movff	final_hex, PORTH
	movlw	0xB7
	xorwf	final_hex, 0		; subtract, store in W. Status bit Z 1 if same
	btfsc	STATUS, Z
	bra	second_check_up
	btfsc	STATUS, Z
	return

	movff	final_hex, PORTH
	movlw	0xBD
	xorwf	final_hex, 0		; subtract, store in W. Status bit Z 1 if same
	btfsc	STATUS, Z
	bra	second_check_down
	btfsc	STATUS, Z
	return

	movff	final_hex, PORTH
	movlw	0xDB
	xorwf	final_hex, 0		; subtract, store in W. Status bit Z 1 if same
	btfsc	STATUS, Z
	bra	second_check_right
	btfsc	STATUS, Z
	return

	movff	final_hex, PORTH
	movlw	0x7B
	xorwf	final_hex, 0		; subtract, store in W. Status bit Z 1 if same
	btfsc	STATUS, Z
	bra	second_check_left
	btfsc	STATUS, Z
	return

	movff	final_hex, PORTH	; D button
	movlw	0xEE
	xorwf	final_hex, 0		; subtract, store in W. Status bit Z 1 if same
	btfsc	STATUS, Z
	call	handle_D_button
	btfsc	STATUS, Z
	return
	
	movff	final_hex, PORTH	; * button enables AI (ML) mode
	movlw	0x7E
	xorwf	final_hex, 0		; subtract, store in W. Status bit Z 1 if same
	btfsc	STATUS, Z
	call	q_learning_mode
	btfsc	STATUS, Z
	return
	
	movff	final_hex, PORTH
	movlw	0xBE
	xorwf	final_hex, 0		; subtract, store in W. Status bit Z 1 if same
	btfsc	STATUS, Z
	call	q_learning_mode_2
	btfsc	STATUS, Z
	return
	
	movff	final_hex, PORTH
	movlw	0xDE
	xorwf	final_hex, 0		; subtract, store in W. Status bit Z 1 if same
	btfsc	STATUS, Z
	call	q_learning_mode_3
	btfsc	STATUS, Z
	return
	
	movff	final_hex, PORTH	; 1 button for reset
	movlw	0x77
	xorwf	final_hex, 0		; subtract, store in W. Status bit Z 1 if same
	btfsc	STATUS, Z
	call	return_to_begin
	btfsc	STATUS, Z
	return

	movff	final_hex, PORTH	; A button
	movlw	0xE7
	xorwf	final_hex, 0		; subtract, store in W. Status bit Z 1 if same
	btfsc	STATUS, Z
	bra	second_check_A
	btfsc	STATUS, Z
	return
	
	return

checkup
; Resets enable bit to allow buttons to be pressed again
	movff	final_hex, PORTH
	movlw	0xFF
	xorwf	final_hex, 0		; subtract, store in W. Status bit Z 1 if same
	btfsc	STATUS, Z
	movlw	0x04
	btfsc	STATUS, Z
	movwf	enable_bit
	return
	
	return

SecondChecks
second_check_up
	movf	STATUS, W
	andwf	enable_bit, 0		; if TRUE AND TRUE, Z bit is 0 else 1
	btfss	STATUS, Z
	call	third_check_up
	return
	;goto    rejoin			; <-- should not need this rejoin?
	
second_check_down
	movf	STATUS, W
	andwf	enable_bit, 0		; if TRUE AND TRUE, Z bit is 0 else 1
	btfss	STATUS, Z
	call	third_check_down
	return
	;goto	rejoin
	
second_check_right
	movf	STATUS, W
	andwf	enable_bit, 0		; if TRUE AND TRUE, Z bit is 0 else 1
	btfss	STATUS, Z
	call	third_check_right
	return
	
second_check_left
	movf	STATUS, W
	andwf	enable_bit, 0		; if TRUE AND TRUE, Z bit is 0 else 1
	btfss	STATUS, Z
	call	third_check_left
	return

second_check_A
	movf	STATUS, W
	andwf	enable_bit, 0		; if TRUE AND TRUE, Z bit is 0 else 1
	btfss	STATUS, Z
	call	editor_mode
	return
    
editor_mode
	movlw	0xFF
	movwf	gamestate	    ; Enable map editor mode
	call	level_empty7	    ; populates map with an empty 7x7 space with boundaries
;	movlw	0x00
;	movwf	enable_bit	    
	return
	
    end
