#include p18f87k22.inc
#include constants.inc

    global  keypad_checks, final_hex
    extern  add_tiny_delay, enable_bit, player_gridhex
    extern  move_up, move_down, move_left, move_right, handle_D_button

acs0		udata_acs		; reserve data space in access ram
hashmap		res 1
final_hex	res 1
new_gridhex	res 1
grid_value	res 1

keypad		code
		
keypad_checks
	banksel	PADCFG1			; PADCFG1 is not in Access Bank
	bsf	PADCFG1, RJPU, BANKED	; PortE pull-ups on			
	call	keypad_input
	call	checkdown
rejoin    
	call	keypad_input
	call	checkup
	return
		
keypad_input	
	clrf	LATH			; Clear latch
	clrf	LATJ			; Clear latch
	movlw	0x0F			; 00001111 - 0 sets outputs, 1 as inputs
	movwf	TRISJ, ACCESS
	movlw	0x00
	movwf	TRISH, ACCESS

	movlw	0xFF
	call	add_tiny_delay

	movff	PORTJ, final_hex
	clrf	LATJ			; Clear latch
	movlw	0xF0			; 11110000 - 0 sets outputs, 1 as inputs
	movwf	TRISJ, ACCESS
	
	movlw	0xFF
	call	add_tiny_delay

	movf	PORTJ, W
	addwf	final_hex, 1		;  Store in final_hex
	return
    
checkdown
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

	movff	final_hex, PORTH
	movlw	0xEE
	xorwf	final_hex, 0		; subtract, store in W. Status bit Z 1 if same
	btfsc	STATUS, Z
	call	handle_D_button
	return

	return

checkup
	movff	final_hex, PORTH
	movlw	0xFF
	xorwf	final_hex, 0		; subtract, store in W. Status bit Z 1 if same
	btfsc	STATUS, Z
	movlw	0x04
	btfsc	STATUS, Z
	movwf	enable_bit
	return
	
	return
	
second_check_up
	movf	STATUS, W
	andwf	enable_bit, 0		; if TRUE AND TRUE, Z bit is 0 else 1
	btfss	STATUS, Z
	call	third_check_up
	goto    rejoin
	
second_check_down
	movf	STATUS, W
	andwf	enable_bit, 0		; if TRUE AND TRUE, Z bit is 0 else 1
	btfss	STATUS, Z
	call	third_check_down
	goto	rejoin
	
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
	
third_check_up
	movlw	0x07
	addwf	player_gridhex, 0	; store new position in W
	movff	PLUSW1, grid_value	; Get byte from FSR1
	movlw	wall
	xorwf	grid_value		
	btfss	STATUS, Z
	call	move_up
	return
	
third_check_down
	movlw	0x07
	subwf	player_gridhex, 0	; store new position in W
	movff	PLUSW1, grid_value	; Get byte from FSR1
	movlw	wall
	xorwf	grid_value		
	btfss	STATUS, Z
	call	move_down
	return
	
third_check_right
	movlw	0x01
	addwf	player_gridhex, 0	; store new position in W
	movff	PLUSW1, grid_value	; Get byte from FSR1
	movlw	wall
	xorwf	grid_value		
	btfss	STATUS, Z
	call	move_right
	return
	
third_check_left
	movlw	0x01
	subwf	player_gridhex, 0	; store new position in W
	movff	PLUSW1, grid_value	; Get byte from FSR1
	movlw	wall
	xorwf	grid_value		
	btfss	STATUS, Z
	call	move_left
	return
	
    end
