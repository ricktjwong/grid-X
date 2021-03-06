#include p18f87k22.inc
#include constants.inc
    global  third_check_up, third_check_down, third_check_left
    global  third_check_right, handle_D_button, reward_L, reward_H
    global  q_learning_mode, q_learning_mode_2, q_learning_mode_3
    global  return_to_begin
    extern  enable_bit, gamestate
    extern  player_x, player_y, player_gridhex, grid_value_out
    extern  player_score, draw_player, level2_table, level3_table
    extern  player_score_L, player_score_H
    extern  mapsize, mapmatrix7x7, mapmatrix9x9
    
acs0	    udata_acs			; named variables in access ram	
destroy_store	res 1
overflow_offset	res 1
reward_L	res 1
reward_H	res 1	
grid_value	res 1		

actions	    code

ThirdChecks
; Checks for collisions with walls or boundaries and awards penalties. 
; Calls move routines if no collisions detected
third_check_up
	movf	mapsize, W		; stores mapsize into W (e.g 0x07 for level 1)
	addwf	player_gridhex, 0	; store new position in W
	movff	PLUSW1, grid_value	; Get byte from FSR1
	movlw	wall			
	cpfseq	grid_value		; Check if gridvalue == wall
	bra	check_boundary_up	; if != wall
	bra	collided		; if == wall
check_boundary_up
	movlw	boundary
	cpfseq	grid_value		; Check if gridvalue == boundary
	bra	moveUp			; if != boundary
	bra	collided		; if == boundary
moveUp
	call move_up
	return
	
	
third_check_down
	movf	mapsize, W
	subwf	player_gridhex, 0	; store new position in W
	movff	PLUSW1, grid_value	; Get byte from FSR1
	movlw	wall
	cpfseq	grid_value		; Check if gridvalue == wall
	bra	check_boundary_down	; if != wall
	bra	collided		; if == wall
check_boundary_down
	movlw	boundary
	cpfseq	grid_value		; Check if gridvalue == boundary
	bra	moveDown		; if != boundary
	bra	collided		; if == boundary
moveDown
	call	move_down
	return
	
third_check_right
	movlw	0x01
	addwf	player_gridhex, 0	; store new position in W
	movff	PLUSW1, grid_value	; Get byte from FSR1
	movlw	wall
	cpfseq	grid_value		; Check if gridvalue == wall
	bra	check_boundary_right	; if != wall
	bra	collided		; if == wall
check_boundary_right
	movlw	boundary
	cpfseq	grid_value		; Check if gridvalue == boundary
	bra	moveRight		; if != boundary
	bra	collided		; if == boundary
moveRight
	call	move_right
	return
	
	
third_check_left
	movlw	0x01
	subwf	player_gridhex, 0	; store new position in W
	movff	PLUSW1, grid_value	; Get byte from FSR1
	movlw	wall
	cpfseq	grid_value		; Check if gridvalue == wall
	bra	check_boundary_left	; if != wall
	bra	collided		; if == wall
check_boundary_left
	movlw	boundary
	cpfseq	grid_value		; Check if gridvalue == boundary
	bra	moveLeft		; if != boundary
	bra	collided
moveLeft
	call	move_left
	return
	
collided
	call	wall_penalty
	return

	
Movement_update
; Movement routines (up, down, left, right) is called when no collision detected.
; Handles rewards(score) and penalties from map elements (grid values). Handles destruction 
; of items upon pickup and win condition detection.
move_up
	clrf	reward_L
	clrf	reward_H
	movlw	0x07
	movf	mapsize, W
	addwf	player_gridhex, 1	; store new position in F
	movf	player_gridhex, W
	movff	PLUSW1, grid_value_out
	
	call	check_item_pickup
	call	check_fire
	
	movlw	move_penalty
	addwf	player_score, F
	movlw	move_penalty_L
	addwf	reward_L, F
	movlw	move_penalty_H
	addwfc	reward_H, F
	
	movlw	move_penalty_L
	addwf	player_score_L, F
	movlw	move_penalty_H
	addwfc	player_score_H, F
	
	movlw	0x00
	movwf	enable_bit
	movlw	0x1B
	addwf	player_y, 1
	call	draw_player
	call	check_goal
	return
	
move_down
	clrf	reward_L
	clrf	reward_H
	movlw	0x07
	movf	mapsize, W
	subwf	player_gridhex, 1	; store new position in F
	movf	player_gridhex, W
	movff	PLUSW1, grid_value_out
	call	check_item_pickup
	call	check_fire
	
	movlw	move_penalty
	addwf	player_score, F
	movlw	move_penalty_L
	addwf	reward_L, F
	movlw	move_penalty_H
	addwfc	reward_H, F
	
	movlw	move_penalty_L
	addwf	player_score_L, F
	movlw	move_penalty_H
	addwfc	player_score_H, F
	
	movlw	0x00
	movwf	enable_bit
	movlw	0x1B
	subwf	player_y, 1
	call	draw_player
	call	check_goal
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
	
	movlw	move_penalty
	addwf	player_score, F
	movlw	move_penalty_L
	addwf	reward_L, F
	movlw	move_penalty_H
	addwfc	reward_H, F
	
	movlw	move_penalty_L
	addwf	player_score_L, F
	movlw	move_penalty_H
	addwfc	player_score_H, F
	
	movlw	0x00
	movwf	enable_bit
	movlw	0x1B
	addwf	player_x, 1
	call	draw_player
	call	check_goal
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
	
	movlw	move_penalty
	addwf	player_score, F
	movlw	move_penalty_L
	addwf	reward_L, F
	movlw	move_penalty_H
	addwfc	reward_H, F
	
	movlw	move_penalty_L
	addwf	player_score_L, F
	movlw	move_penalty_H
	addwfc	player_score_H, F
	
	movlw	0x00
	movwf	enable_bit
	movlw	0x1B
	subwf	player_x, 1
	call	draw_player
	call	check_goal
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
	movlw	0x77
	cpfseq	gamestate
	goto	check_78
	goto	iter
normal	movlw	goal
	xorwf	grid_value_out, 0	; Store result of XOR in W		
	btfsc	STATUS, Z		; if collide with goal, do not skip
	call	level_manager		; collide with goal
	return				; else return
check_78
	movlw	0x78
	cpfseq	gamestate
	goto	check_79
	goto	iter
check_79
	movlw	0x79
	cpfseq	gamestate
	goto	normal
	goto	iter	
iter	
	return				; return for qlearning mode
	
destroy_item
	clrf	reward_L
	clrf	reward_H
	movlw	0x00
	movwf	destroy_store
	movf	player_gridhex, W
	movff	destroy_store, PLUSW1
	movlw	item_reward
	movwf	reward_L
	addwf	player_score, F
	
	movlw	item_reward
	addwf	player_score_L, F
	movlw	0x00
	addwfc	player_score_H, F
	
	return
	
add_fire_penalty
	clrf	reward_L
	clrf	reward_H
	movlw	fire_reward
	addwf	player_score, F
	movlw	fire_reward_L
	addwf	reward_L, F
	movlw	fire_reward_H
	addwfc	reward_H, F
	
	movlw	fire_reward_L
	addwf	player_score_L, F
	movlw	fire_reward_H
	addwfc	player_score_H, F
	
	return

handle_D_button
	movlw	0x01
	movwf	gamestate
	return
	
q_learning_mode
	movlw	0x77
	movwf	gamestate
	return
	
q_learning_mode_2
	movlw	0x78
	movwf	gamestate
	return
	
q_learning_mode_3	
	movlw	0x79
	movwf	gamestate
	return
	
return_to_begin
	movlw	0x00
	movwf	gamestate
	return
	
wall_penalty
	clrf	reward_L
	clrf	reward_H
	movlw	move_penalty_L
	addwf	reward_L, F
	movlw	move_penalty_H
	addwfc	reward_H, F
	
	movlw	move_penalty_L
	addwf	player_score_L, F
	movlw	move_penalty_H
	addwfc	player_score_H, F
	return
	
level_manager
; Called when win condition is detected. Uses gamestate to control flow of levels of the game
; Upon new level also sets player starting positions (hexgrid and graphics), loads level
; into FSR1, loads mapmatrix, mapsize.
level2_
; is a 7x7 level.
	movlw	0x01
	cpfseq	gamestate		; check if current gamestate is 1
	bra	level3_			; if != 1 then check for level 2 3 4 ...
	
	; Load values of level 2 into the game
	movlw	0x02			; if = 1 (AND since collided with goal) 
	movwf	gamestate		; set gamestate = 2 to move to level 2
	movlw	0x07			; <-- change THIS VALUE for larger map
	movwf	mapsize			; Explicitly store mapsize
	movlw	0x64
	movwf	player_score
	call	level2_table		; Repopulate table with level2 values with FSR1
	call	mapmatrix7x7		; Explicitly build mapmatrix for 7x7 map
	
	; Setting start positions (hexgrid and graphics)
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
	movlw	0x07			; <-- change THIS VALUE for larger map
	movwf	mapsize			; Explicitly store mapsize
	call	level3_table		; Repopulate table with level2 values with FSR1
	call	mapmatrix7x7		; Explicitly build mapmatrix for 7x7 map
	
	; Setting start positions (hexgrid and graphics)
	movlw	0x64
	movwf	player_score
	movlw	0x08
	movwf	player_gridhex		; Set player hexgrid position for level 2
	movlw	0x1B
	movwf	player_x		; Set player x graphics position 
	movlw	0x1B
	movwf	player_y		; Set player x graphics position
	
	return
	
level4_
	movlw	0x04			; Last level (endscreen)
	movwf	gamestate		; set gamestate = 4 to move to level 4 (endscreen)
	return	

    end
 