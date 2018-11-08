#include p18f87k22.inc
	global	enable_bit, setup, start
	extern	UART_Setup, UART_Transmit_Message  ; external UART subroutines
	extern  LCD_Setup, LCD_Write_Message, LCD_clear, LCD_row_shift	    ; external LCD subroutines
	extern	draw_grids, keypad_input, start_int
	extern	display_start_screen, draw_player, player_x, player_y, player_gridhex, level1_table, draw_item
	extern	item_x, item_y
	
acs0	udata_acs   ; reserve data space in access ram
enable_bit  res 1
  
rst	code	0    ; reset vector
	goto	start
	
main	code
	
	; ******* Main programme ****************************************
start 	call	level1_table
	call	start_int
	call	display_start_screen
	
	; ******* Programme FLASH read Setup Code ***********************
setup	movlw	0x04
	movwf	enable_bit
	movlw   0x1b
	movwf   player_x
	movwf   player_y
	movlw	0x38
	movwf   item_x
	movwf   item_y
begin
	call	draw_item
	call	start_int
	call	draw_grids
	call	draw_player
	goto	begin
;	goto	setup

	end