#include p18f87k22.inc
#include constants.inc
	global	enable_bit, setup, start, grid_iter, onevolt, start2, begin
	extern	UART_Setup, UART_Transmit_Message  ; external UART subroutines
	extern  LCD_Setup, LCD_Write_Message, LCD_clear, LCD_row_shift	    ; external LCD subroutines
	extern	draw_grids, keypad_input, start_int
	extern	display_start_screen, draw_player, player_x, player_y, player_gridhex, draw_item
	extern	level1_table, hexvoltage_table, render_graphics
	extern	player_score
	
	
acs0	udata_acs   ; reserve data space in access ram
enable_bit   res 1
grid_iter    res 1
onevolt	     res 1
  
rst	code	0    ; reset vector
	goto	setup
	
main	code
	
	; ******* Programme FLASH read Setup Code ***********************
setup	clrf	TRISB
	clrf	LATB
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
	movlw	0x63
	movwf	player_score
	; ******* Main programme ****************************************
start 	call	level1_table
	call	hexvoltage_table
start2	call	start_int	
	call	display_start_screen
begin
	call	start_int
	call	draw_grids
	call	draw_player
	movff	player_score, PORTB
	goto	begin
;	goto	setup

	end