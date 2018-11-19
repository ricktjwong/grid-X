#include p18f87k22.inc
#include constants.inc

    global  editor_keypad
    extern  add_tiny_delay, enable_bit, player_gridhex
    extern  player_x, player_y, player_gridhex, draw_player
    extern  gamestate, editor_mode

acs0		udata_acs		; reserve data space in access ram
hashmap		res 1
final_hex	res 1
tmp_gridvalue	res 1

keypad_editor		code
		
editor_keypad
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
; Checks for button-press-down for : 2,4,6,8,1. Calls second check to prevent
; microprocessor from registering multiple presses with enable bit.
; Also checks for A,B,C,D,#,0 but without second checks (not needed)
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
    
	movff	final_hex, PORTH	; A button
	movlw	0xE7
	xorwf	final_hex, 0		; subtract, store in W. Status bit Z 1 if same
	btfsc	STATUS, Z
	call	destroy
	return
	
	movff	final_hex, PORTH	; B button
	movlw	0xEB
	xorwf	final_hex, 0		; subtract, store in W. Status bit Z 1 if same
	btfsc	STATUS, Z
	call	place_wall
	return
	
	movff	final_hex, PORTH	; C button
	movlw	0xED
	xorwf	final_hex, 0		; subtract, store in W. Status bit Z 1 if same
	btfsc	STATUS, Z
	call	place_item
	return
	
	movff	final_hex, PORTH	; D button
	movlw	0xEE
	xorwf	final_hex, 0		; subtract, store in W. Status bit Z 1 if same
	btfsc	STATUS, Z
	call	place_goal
	return

	movff	final_hex, PORTH	; # button
	movlw	0xDE
	xorwf	final_hex, 0		; subtract, store in W. Status bit Z 1 if same
	btfsc	STATUS, Z
	call	place_fire
	return
	
	movff	final_hex, PORTH	; 0 button
	movlw	0xBE
	xorwf	final_hex, 0		; subtract, store in W. Status bit Z 1 if same
	btfsc	STATUS, Z
	call	set_gamestate1
	return
	
	movff	final_hex, PORTH	; 7 button (currently redundant)
	movlw	0x7D
	xorwf	final_hex, 0		; subtract, store in W. Status bit Z 1 if same
	btfsc	STATUS, Z
	bra	second_check_1
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
	call	move_up
	return
	
second_check_down
	movf	STATUS, W
	andwf	enable_bit, 0		; if TRUE AND TRUE, Z bit is 0 else 1
	btfss	STATUS, Z
	call	move_down
	return
	
second_check_right
	movf	STATUS, W
	andwf	enable_bit, 0		; if TRUE AND TRUE, Z bit is 0 else 1
	btfss	STATUS, Z
	call	move_right
	return
	
second_check_left
	movf	STATUS, W
	andwf	enable_bit, 0		; if TRUE AND TRUE, Z bit is 0 else 1
	btfss	STATUS, Z
	call	move_left
	return

second_check_1
	movf	STATUS, W
	andwf	enable_bit, 0		; if TRUE AND TRUE, Z bit is 0 else 1
	btfss	STATUS, Z
	call	editor_mode
	return

Movement	
; Movement routines for the map editor. All movements ignore walls but NOT boundaries 
; of the map. No collisions with walls, items, goals etc.
move_up
	movlw	0x00
	movwf	enable_bit
	movlw	0x07
	addwf	player_gridhex, F	; Store new position in F
	movf	player_gridhex, W	; Extract to W to check
	movff	PLUSW1, tmp_gridvalue	; Retrieve current map element after moving
	movlw	0x0F
	cpfseq	tmp_gridvalue		; Compare if current map element is a boundary(0x0F)
	bra	continue_draw_up
	bra	undo_move_up
continue_draw_up
	movlw	0x1B
	addwf	player_y, 1
	call	draw_player
	return
undo_move_up
	movlw	0x07
	subwf	player_gridhex, F	; since collided with boundary, move back
	call	draw_player
	return

	
move_down
	movlw	0x00
	movwf	enable_bit
	movlw	0x07
	subwf	player_gridhex, F	; store new position in F
	movf	player_gridhex, W	; Extract to W to check
	movff	PLUSW1, tmp_gridvalue	; Retrieve current map element after moving
	movlw	0x0F
	cpfseq	tmp_gridvalue		; Compare if current map element is a boundary(0x0F)
	bra	continue_draw_down
	bra	undo_move_down
continue_draw_down
	movlw	0x1B
	subwf	player_y, 1
	call	draw_player
	return
undo_move_down
	movlw	0x07
	addwf	player_gridhex, F	; since collided with boundary, move back
	call	draw_player
	return

	
move_left
	movlw	0x00
	movwf	enable_bit
	movlw	0x01
	subwf	player_gridhex, F	; store new position in F
	movf	player_gridhex, W	; Extract to W to check
	movff	PLUSW1, tmp_gridvalue	; Retrieve current map element after moving
	movlw	0x0F
	cpfseq	tmp_gridvalue
	bra	continue_draw_left
	bra	undo_move_left
continue_draw_left
	movlw	0x1B
	subwf	player_x, 1
	call	draw_player
	return
undo_move_left
	movlw	0x01
	addwf	player_gridhex, F
	call	draw_player
	return

	
move_right
	movlw	0x00
	movwf	enable_bit
	movlw	0x01
	addwf	player_gridhex, F	; store new position in F
	movf	player_gridhex, W	; Extract to W to check
	movff	PLUSW1, tmp_gridvalue	; Retrieve current map element after moving
	movlw	0x0F
	cpfseq	tmp_gridvalue
	bra	continue_draw_right
	bra	undo_move_right
continue_draw_right
	movlw	0x1B
	addwf	player_x, 1
	call	draw_player
	return
undo_move_right
	movlw	0x01
	subwf	player_gridhex, F
	call	draw_player
	return

	
Actions
; Actions performed by the map editor to place walls, items, goal(s) etc.
; Press button 1 to revert to play mode (gamestate 1).
destroy					; A button
	movlw	0x00		    
	movff	player_gridhex, PLUSW1
	return
	
place_wall				; B button
	movlw	wall
	movff	player_gridhex, PLUSW1
	return

place_item				; C button
	movlw	item
	movff	player_gridhex, PLUSW1
	return
	   
place_goal				; D button
	movlw	goal
	movff	player_gridhex, PLUSW1
	return
	
place_fire				; # button
	movlw	fire
	movff	player_gridhex, PLUSW1
	return
	
set_gamestate1				; 0 button
	movlw	0x01
	movwf	gamestate
	return
	
    end



