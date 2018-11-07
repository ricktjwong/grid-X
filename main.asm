#include p18f87k22.inc

	extern	UART_Setup, UART_Transmit_Message  ; external UART subroutines
	extern  LCD_Setup, LCD_Write_Message, LCD_clear, LCD_row_shift	    ; external LCD subroutines
	extern	table, draw_grids, keypad_input, start_int, xman, centre_x, centre_y, display_start_screen
	
rst	code	0    ; reset vector
	goto	setup
	
main	code
	; ******* Programme FLASH read Setup Code ***********************
setup	movlw	0x28
	movwf	centre_x
	movlw	0x28
	movwf	centre_y
	
	goto	start
	
	; ******* Main programme ****************************************
start 	call	display_start_screen
	call	start_int
	call	draw_grids
	call	xman
	call	keypad_input
	bra	start
	goto	setup		; goto current line in code

	end