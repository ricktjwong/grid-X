#include p18f87k22.inc
#include constants.inc
	global	enable_bit, grid_iter, gamestate, mapsize, start
	extern	draw_grids, start_int, display_start_screen
	extern	draw_player, player_x, player_y, player_gridhex
	extern	level1_table, mapmatrix7x7, draw_endscreen
	extern	player_score, display_score, add_long_delay
	extern	qlearning_level_1, check_qlearning_level_2
	extern	check_qlearning_level_3
	
acs0	udata_acs		    ; reserve data space in access ram
enable_bit   res 1
grid_iter    res 1
gamestate    res 1
mapsize	     res 1

rst	code	0		    ; reset vector
	goto	setup
	
main	code

	; ******* Programme Setup Code **********************************
setup	
	movlw	0x04
	movwf	enable_bit
	movlw	0x07
	movwf	mapsize		    ; Square mapsize (xsize = ysize)
	movlw	0x00
	movwf	grid_iter
	movlw	0x00
	movwf	gamestate
	
	; ******* Main programme ****************************************
start 	
	movlw   0x1B		    ; level 1 player initial x, y position for
    	movwf   player_x	    ; drawing on the screen
	movwf   player_y
	movlw	0x08
	movwf	player_gridhex	    ; player gridhex start location
	movlw	0x64
	movwf	player_score
	call	level1_table	    ; initialise FSR for level 1 map elements
	call	mapmatrix7x7
	call	start_int	    ; initialise the interrupt for keypad check
	
begin
	movlw	0x00
	cpfseq	gamestate	    ; check if it is in gamestate 0 (start screen)
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
	cpfseq	gamestate	    ; check if gamestate  == 4
	goto	playscreen	    ; else display playscreen
	goto	endscreen	    ; if == 4 , display end screen

playscreen
	call	draw_grids
	call	draw_player
	goto	begin

endscreen
	call	draw_endscreen
	goto	begin
		
	end
