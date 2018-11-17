#include p18f87k22.inc
#include constants.inc
	global	enable_bit, grid_iter, gamestate
	extern	draw_grids, start_int
	extern	display_start_screen, draw_player, player_x, player_y, player_gridhex
	extern	level1_table, mapmatrix_level1, render_graphics, draw_endscreen
	extern	player_score, display_score, q_table_level1, agent_learn
	extern	add_long_delay
	
acs0	udata_acs   ; reserve data space in access ram
enable_bit   res 1
grid_iter    res 1
gamestate    res 1
has_loadedlevel	res 1
  
rst	code	0    ; reset vector
	goto	setup
	
main	code

	
	; ******* Programme Setup Code ***********************
setup	
	movlw	0x04
	movwf	enable_bit
	movlw   0x1b
	movwf   player_x
	movwf   player_y
	movlw	0x08
	movwf	player_gridhex
	movlw	0x0
	movwf	grid_iter
	movlw	0x1D
	movwf	player_score
	movlw	0x01
	movwf	gamestate
	
	; ******* Main programme ****************************************
start 	
	call	q_table_level1
	call	level1_table
	call	mapmatrix_level1
	call	start_int	
	
begin
	movlw	0x00
	cpfseq	gamestate	; check if it is in gamestate 0 (start screen)
	goto	main_game
	goto	startscreen
	
startscreen
	call	display_start_screen
	goto	begin
	
main_game
level_select
	call	display_score
	movlw	0x04
	cpfseq	gamestate	; check if gamestate  == 4
	goto	playscreen	; else display playscreen
	goto	endscreen	; if == 4 , display end screen

playscreen
	call	agent_learn
	call	draw_grids
	call	draw_player
	goto	begin

endscreen
	call	draw_endscreen
	goto	setup

	end
