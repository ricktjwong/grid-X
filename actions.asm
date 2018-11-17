#include p18f87k22.inc
#include constants.inc
    global  third_check_up, third_check_down, third_check_left, third_check_right
    global  handle_D_button, reward_L, reward_H
    extern  enable_bit, gamestate
    extern  player_x, player_y, player_gridhex, grid_value_out
    extern  player_score, draw_player, level2_table
    
acs0	    udata_acs			; named variables in access ram	
destroy_store	res 1
overflow_offset	res 1
reward_L	res 1
reward_H	res 1	
grid_value	res 1		

actions	    code
	    
third_check_up
	movlw	0x07
	addwf	player_gridhex, 0	; store new position in W
	movff	PLUSW1, grid_value	; Get byte from FSR1
	movlw	wall
	xorwf	grid_value		
	btfss	STATUS, Z
	call	move_up
	btfsc	STATUS, Z
	call	wall_penalty
	return
	
third_check_down
	movlw	0x07
	subwf	player_gridhex, 0	; store new position in W
	movff	PLUSW1, grid_value	; Get byte from FSR1
	movlw	wall
	xorwf	grid_value		
	btfss	STATUS, Z
	call	move_down
	btfsc	STATUS, Z
	call	wall_penalty
	return
	
third_check_right
	movlw	0x01
	addwf	player_gridhex, 0	; store new position in W
	movff	PLUSW1, grid_value	; Get byte from FSR1
	movlw	wall
	xorwf	grid_value		
	btfss	STATUS, Z
	call	move_right
	btfsc	STATUS, Z
	call	wall_penalty
	return
	
third_check_left
	movlw	0x01
	subwf	player_gridhex, 0	; store new position in W
	movff	PLUSW1, grid_value	; Get byte from FSR1
	movlw	wall
	xorwf	grid_value		
	btfss	STATUS, Z
	call	move_left
	btfsc	STATUS, Z
	call	wall_penalty
	return	    
	    
move_up
	clrf	reward_L
	clrf	reward_H
	movlw	0x07
	addwf	player_gridhex, 1	; store new position in F
	movf	player_gridhex, W
	movff	PLUSW1, grid_value_out
	call	check_item_pickup
	call	check_fire
	call	check_goal
	movlw	move_penalty
	addwf	player_score
	movlw	move_penalty_L
	addwf	reward_L, F
	movlw	move_penalty_H
	addwfc	reward_H, F
	movlw	0x00
	movwf	enable_bit
	movlw	0x1B
	addwf	player_y, 1
	call	draw_player
	return
	
move_down
	clrf	reward_L
	clrf	reward_H
	movlw	0x07
	subwf	player_gridhex, 1	; store new position in F
	movf	player_gridhex, W
	movff	PLUSW1, grid_value_out
	call	check_item_pickup
	call	check_fire
	call	check_goal
	movlw	move_penalty
	addwf	player_score
	movlw	move_penalty_L
	addwf	reward_L, F
	movlw	move_penalty_H
	addwfc	reward_H, F
	movlw	0x00
	movwf	enable_bit
	movlw	0x1B
	subwf	player_y, 1
	call	draw_player
	return
	
move_right
	clrf	reward_L
	clrf	reward_H
	movlw	0x01
	addwf	player_gridhex, 1	; store new position in F
	movf	player_gridhex, W
	movff	PLUSW1, grid_value_out
	call	check_item_pickup
	call	check_fire
	call	check_goal
	movlw	move_penalty
	addwf	player_score
	movlw	move_penalty_L
	addwf	reward_L, F
	movlw	move_penalty_H
	addwfc	reward_H, F
	movlw	0x00
	movwf	enable_bit
	movlw	0x1B
	addwf	player_x, 1
	call	draw_player
	return
	
move_left
	clrf	reward_L
	clrf	reward_H
	movlw	0x01
	subwf	player_gridhex, 1	; store new position in F
	movf	player_gridhex, W
	movff	PLUSW1, grid_value_out
	call	check_item_pickup
	call	check_fire
	call	check_goal
	movlw	move_penalty
	addwf	player_score
	movlw	move_penalty_L
	addwf	reward_L, F
	movlw	move_penalty_H
	addwfc	reward_H, F
	movlw	0x00
	movwf	enable_bit
	movlw	0x1B
	subwf	player_x, 1
	call	draw_player
	return
	  
check_fire
	movlw	fire
	xorwf	grid_value_out, 0	; Store result of XOR in W		
	btfsc	STATUS, Z
	call	add_fire_penalty
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
	btfsc	STATUS, Z		; if collide with goal, do not skip
	call	change_level		; collide with goal
	return				; else return
	
change_level
level2_
	movlw	0x01
	cpfseq	gamestate		; check if current gamestate is 1
	bra	level3_			; if != 1 then check for level 2 3 4 ...
	movlw	0x02			; if = 1 (AND since collided with goal) 
	movwf	gamestate		; set gamestate = 2 to move to level 2
	call	level2_table		; Repopulate table with level2 values with FSR1
	movlw	0x18
	movwf	player_gridhex		; Set player hexgrid position for level 2
	movlw	0x51
	movwf	player_x		; Set player x graphics position for level 2
	movlw	0x51
	movwf	player_y		; Set player y graphics position for level 2
	return
level3_
	movlw	0x02		
	cpfseq	gamestate		; check if current gamestate is 2
	bra	level4_			; if != 2 then check for level 3 4 ...
	movlw	0x03			; if = 2 (AND since collided with goal) 
	movwf	gamestate		; set gamestate = 3 to move to level 3
;	call	level3_table		; Repopulate table with level2 values with FSR1
	return
	
level4_
	movlw	0x04			; Last level (endscreen)
	movwf	gamestate		; set gamestate = 4 to move to level 4 (endscreen)
	return
	
destroy_item
	clrf	reward_L
	clrf	reward_H
	movlw	0x00
	movwf	destroy_store
	movf	player_gridhex, W
	movff	destroy_store, PLUSW1
	movlw	item_reward
	movwf	reward_L
	addwf	player_score
	return
	
add_fire_penalty
	clrf	reward_L
	clrf	reward_H
	movlw	fire_reward
	addwf	player_score
	movlw	fire_reward_L
	addwf	reward_L, F
	movlw	fire_reward_H
	addwfc	reward_H, F
	return

handle_D_button
	movlw	0x01
	movwf	gamestate
	return
	
handle_overflow
	movlw	0xFF
	movwf	overflow_offset
	movf	player_score, W
	subwf	overflow_offset, W
	movwf	player_score
	incf	player_score
	return
	
wall_penalty
	clrf	reward_L
	clrf	reward_H
	movlw	move_penalty_L
	addwf	reward_L, F
	movlw	move_penalty_H
	addwfc	reward_H, F
	return

    end
 