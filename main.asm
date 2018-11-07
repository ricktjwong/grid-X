#include p18f87k22.inc
	global	enable_bit
	extern	UART_Setup, UART_Transmit_Message  ; external UART subroutines
	extern  LCD_Setup, LCD_Write_Message, LCD_clear, LCD_row_shift	    ; external LCD subroutines
	extern	table, draw_grids, keypad_input, start_int, xman, centre_x, centre_y, draw_x, display_start_screen
	
acs0	udata_acs   ; reserve data space in access ram
enable_bit  res 1
  
rst	code	0    ; reset vector
	goto	setup
	
main	code
	; ******* Programme FLASH read Setup Code ***********************
setup	movlw	0x28
	movwf	centre_x
	movlw	0x28
	movwf	centre_y
	movlw	0x04
	movwf	enable_bit
	goto	start
	
	; ******* Main programme ****************************************
start 	
;	call	display_start_screen
;	bra	start
	call	start_int
	call	draw_grids
	call	xman
	bra	start
	goto	setup		; goto current line in code

	end