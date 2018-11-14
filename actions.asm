#include p18f87k22.inc
#include constants.inc
    global  move_up, move_down, move_left, move_right, handle_D_button
    extern  enable_bit, gamestate
    extern  player_x, player_y, player_gridhex, grid_value_out
    extern  player_score, draw_player
    
acs0	    udata_acs			; named variables in access ram	
destroy_store	res 1

actions	    code
	    
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
	  
check_item_pickup
	movlw	item
	xorwf	grid_value_out, 0	; Store result of XOR in W		
	btfsc	STATUS, Z
	call	destroy_item
	return
	
check_goal
	movlw	goal
	xorwf	grid_value_out, 0	; Store result of XOR in W		
	btfsc	STATUS, Z
	movlw	0x02
	btfsc	STATUS, Z
	movwf	gamestate
	return
	
destroy_item
	movlw	0x00
	movwf	destroy_store
	movf	player_gridhex, W
	movff	destroy_store, PLUSW1
	movlw	item_reward
	addwf	player_score
	return

handle_D_button
	movlw	0x01
	movwf	gamestate
	return

    end
 