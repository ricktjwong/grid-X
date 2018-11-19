#include p18f87k22.inc
#include constants.inc
	global	enable_bit, grid_iter, gamestate, mapsize
	extern	draw_grids, start_int
	extern	display_start_screen, draw_player, player_x, player_y, player_gridhex
	extern	level1_table, mapmatrix7x7, render_graphics, draw_endscreen
	extern	player_score, display_score, q_table_7x7, agent_learn
	extern	add_long_delay, player_score_L, player_score_H
	extern	level2_table
	
acs0	udata_acs   ; reserve data space in access ram
enable_bit   res 1
grid_iter    res 1
gamestate    res 1
mapsize	     res 1

rst	code	0    ; reset vector
	goto	setup
	
main	code

	
	; ******* Programme Setup Code ***********************
setup	
	clrf	TRISB
	clrf	PORTB
	movlw	0x04
	movwf	enable_bit
	movlw	0x07
	movwf	mapsize		    ; Square mapsize (xsize = ysize)
	movlw   0x1B
	movwf   player_x
	movwf   player_y
	movlw	0x08		    
	movwf	player_gridhex	    ; Starting gridhex location
	movlw	0x00
	movwf	grid_iter
	movlw	0x1D
	movwf	player_score
	movlw	0x00
	movwf	gamestate
	
	; ******* Main programme ****************************************
start 	
	movlw   0x1b
	movwf   player_x
	movwf   player_y
	movlw	0x08
	movwf	player_gridhex
	movlw	0x1D
	movwf	player_score
	call	level1_table
	call	mapmatrix7x7
	call	start_int	
	
begin
	;movff	gamestate, PORTB
	movlw	0x00
	cpfseq	gamestate	; check if it is in gamestate 0 (start screen)
	goto	main_game
	goto	startscreen
	
startscreen
	call	display_start_screen
	movlw	0x77
	cpfseq	gamestate
	goto	check_qlearning_level_2
	goto	qlearning_level_1
	
main_game
level_select
	call	display_score
	movlw	0x04
	cpfseq	gamestate	; check if gamestate  == 4
	goto	playscreen	; else display playscreen
	goto	endscreen	; if == 4 , display end screen

playscreen
	call	draw_grids
	call	draw_player
	goto	begin

endscreen
	call	draw_endscreen
	goto	setup
	
qlearning_level_1
	call	q_table_7x7
iter	clrf	player_score_L
	clrf	player_score_H
	movlw	0x00
	movwf	player_score
	call	level1_table
	call	mapmatrix7x7
	movlw   0x1b
	movwf   player_x
	movwf   player_y
	movlw	0x08
	movwf	player_gridhex
	call	agent_learn
	call	draw_grids
	call	draw_player
	movlw	0x00
	cpfseq	gamestate
	goto	iter
	goto	begin
	
qlearning_level_2
	call	q_table_7x7
iter2	clrf	player_score_L
	clrf	player_score_H
	movlw	0x00
	movwf	player_score
	call	level2_table
	call	mapmatrix7x7
	movlw   0x51
	movwf   player_x
	movwf   player_y
	movlw	0x18
	movwf	player_gridhex
	call	agent_learn
	call	draw_grids
	call	draw_player
	movlw	0x00
	cpfseq	gamestate
	goto	iter2
	goto	start
	
check_qlearning_level_2
	movlw	0x78
	cpfseq	gamestate
	goto	start	
	goto	qlearning_level_2
	end
