#include p18f87k22.inc
#include constants.inc
	global	enable_bit, setup, start, grid_iter, onevolt, begin , gamestate
	extern	UART_Setup, UART_Transmit_Message  ; external UART subroutines
	extern  LCD_Setup, LCD_Write_Message, LCD_clear, LCD_row_shift	    ; external LCD subroutines
	extern	draw_grids, keypad_input, start_int
	extern	display_start_screen, draw_player, player_x, player_y, player_gridhex, draw_item
	extern	level1_table, hexvoltage_table, render_graphics, draw_endscreen
	extern	player_score, display_score
	
	
acs0	udata_acs   ; reserve data space in access ram
enable_bit   res 1
grid_iter    res 1
onevolt	     res 1
gamestate res 1
  
rst	code	0    ; reset vector
	goto	setup
	
main	code
	
	; ******* Programme FLASH read Setup Code ***********************
setup	clrf	TRISF
	clrf	LATF
	movlw	0x04
	movwf	enable_bit
	movlw   0x1b
	movwf   player_x
	movwf   player_y
	movlw	0x08
	movwf	player_gridhex
	movlw	onevolt_hex
	movwf	onevolt
	movlw	0x0
	movwf	grid_iter
	movlw	0x6F
	movwf	player_score
	movlw	0x00
	movwf	gamestate
	
	; ******* Main programme ****************************************
start 	
	call	level1_table
	call	hexvoltage_table
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
	call	display_score
	movlw	0x01
	cpfseq	gamestate	; check if it is in gamestate 1 (play screen)
	goto	endscreen
	goto	playscreen
	
playscreen
	call	draw_grids
	call	draw_player
	movff	player_score, PORTF
	goto	begin

endscreen
	call	draw_endscreen
	goto	begin

	end