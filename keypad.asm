#include p18f87k22.inc
#include constants.inc

    global  keypad_input, final_hex
    extern  add_tiny_delay, draw_player, player_x, player_y, enable_bit, setup, start
    extern  player_gridhex, grid_value_out, player_score, display_start_screen, start2, begin

acs0	udata_acs   ; reserve data space in access ram
hashmap	    res 1
final_hex   res 1
new_gridhex res 1
grid_value res 1
destroy_store res 1

keypad		code
		
keypad_input	
    banksel	PADCFG1			; PADCFG1 is not in Access Bank
    bsf		PADCFG1, RJPU, BANKED	; PortE pull-ups on	
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
    addwf	final_hex, 1			;  Store in final_hex
    
    call	checkdown

rejoin
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
    addwf	final_hex, 1			;  Store in final_hex
    
    call	checkup
    
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
	bcf	INTCON,TMR0IF	; clear interrupt flag
	btfsc	STATUS, Z
	POP
	btfsc	STATUS, Z
	goto	begin
	btfsc	STATUS, Z
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
	xorwf	grid_value		; 
	btfss	STATUS, Z
	call	move_up
	return
	
third_check_down
	movlw	0x07
	subwf	player_gridhex, 0	; store new position in W
	movff	PLUSW1, grid_value	; Get byte from FSR1
	movlw	wall
	xorwf	grid_value		; 
	btfss	STATUS, Z
	call	move_down
	return
	
third_check_right
	movlw	0x01
	addwf	player_gridhex, 0	; store new position in W
	movff	PLUSW1, grid_value	; Get byte from FSR1
	movlw	wall
	xorwf	grid_value		; 
	btfss	STATUS, Z
	call	move_right
	return
	
third_check_left
	movlw	0x01
	subwf	player_gridhex, 0	; store new position in W
	movff	PLUSW1, grid_value	; Get byte from FSR1
	movlw	wall
	xorwf	grid_value		; 
	btfss	STATUS, Z
	call	move_left
	return
	
move_up
	movlw	0x07
	addwf	player_gridhex, 1	; store new position in F
	movf	player_gridhex, W
	movff	PLUSW1, grid_value_out
	call	check_item_pickup
	call	check_goal
	movlw	move_penalty
	subwf	player_score
	movlw	0x00
	movwf	enable_bit
	movlw	0x1B
	addwf	player_y, 1
	call	draw_player
	return
	
move_down
	movlw	0x07
	subwf	player_gridhex, 1	; store new position in F
	movf	player_gridhex, W
	movff	PLUSW1, grid_value_out
	call	check_item_pickup
	call	check_goal
	movlw	move_penalty
	subwf	player_score
	movlw	0x00
	movwf	enable_bit
	movlw	0x1B
	subwf	player_y, 1
	call	draw_player
	return
	
move_right
	movlw	0x01
	addwf	player_gridhex, 1	; store new position in F
	movf	player_gridhex, W
	movff	PLUSW1, grid_value_out
	call	check_item_pickup
	call	check_goal
	movlw	move_penalty
	subwf	player_score
	movlw	0x00
	movwf	enable_bit
	movlw	0x1B
	addwf	player_x, 1
	call	draw_player
	return
	
move_left
	movlw	0x01
	subwf	player_gridhex, 1	; store new position in F
	movf	player_gridhex, W
	movff	PLUSW1, grid_value_out
	call	check_item_pickup
	call	check_goal
	movlw	move_penalty
	subwf	player_score
	movlw	0x00
	movwf	enable_bit
	movlw	0x1B
	subwf	player_x, 1
	call	draw_player
	return
	
  return
  
check_item_pickup
	movlw	item
	xorwf	grid_value_out, 0		    ; Store result of XOR in W		
	btfsc	STATUS, Z
	call	destroy_item
	return
	
check_goal
	movlw	goal
	xorwf	grid_value_out, 0		    ; Store result of XOR in W		
	btfsc	STATUS, Z
	bcf	INTCON,TMR0IF	; clear interrupt flag
	btfsc	STATUS, Z
	goto	start2
	return
	
destroy_item
	movlw	0x00
	movwf	destroy_store
	movf	player_gridhex, W
	movff	destroy_store, PLUSW1
	movlw	item_reward
	addwf	player_score
	return
	

  
    end