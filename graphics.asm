#include p18f87k22.inc
#include constants.inc
	global render_graphics
	extern	item_x, item_y, draw_item, grid_iter, onevolt
	
acs0    udata_acs
grid_value_out  res 1
yx		res 1

	
graphics	code
	
render_graphics
	movlw	onevolt_hex
	movwf	onevolt
	movf	grid_iter, W
	movff	PLUSW1, grid_value_out
	movlw	0x31				    ; decimal 49
	cpfslt  grid_iter			    ; skip next line if iter < 49 decimal
	clrf	grid_iter			    ; resets iter to 0
	
check_item
	movlw	item
	xorwf	grid_value_out, 0		    ; Store result of XOR in W		
	btfsc	STATUS, Z
	goto	set_item_xy

check_wall
	movlw	wall
	xorwf	grid_value_out, 0		    ; Store result of XOR in F		
	btfsc	STATUS, Z
	goto	set_wall_xy
	
check_goal
	movlw	goal
	xorwf	grid_value_out, 0		    ; Store result of XOR in F		
	btfsc	STATUS, Z
	goto	set_goal_xy
	goto	end_graphics
	
set_item_xy
	movf	grid_iter, W
	movff	PLUSW0, yx
	movlw	0x0F
	andwf	yx, 0		; logical AND yx with 00001111 to get only low nibble stored in W
	mulwf	onevolt
	movff   PRODL, item_x	; item_x now holds x coordinates
	
	swapf	yx, 1		; swap yx (to xy) result stored in yx
	movlw	0x0F
	andwf	yx, 0		; logical AND. Result stored in W.
	mulwf	onevolt
	movff   PRODL, item_y		; item_y now holds high nibbles in original yx. Holds y coordinates
	
	call	draw_item
	goto	end_graphics
	
set_wall_xy
	movf	grid_iter, W
	movff	PLUSW0, yx
	movlw	0x0F
	andwf	yx, 0		; logical AND yx with 00001111 to get only low nibble stored in W
	mulwf	onevolt
	movff   PRODL, item_x	; item_x now holds x coordinates
	
	swapf	yx, 1		; swap yx (to xy) result stored in yx
	movlw	0x0F
	andwf	yx, 0		; logical AND. Result stored in W.
	mulwf	onevolt
	movff   PRODL, item_y		; item_y now holds high nibbles in original yx. Holds y coordinates
	
	call	draw_item
	goto	end_graphics
	
set_goal_xy
	movf	grid_iter, W
	movff	PLUSW0, yx
	movlw	0x0F
	andwf	yx, 0		; logical AND yx with 00001111 to get only low nibble stored in W
	mulwf	onevolt
	movff   PRODL, item_x	; item_x now holds x coordinates
	
	swapf	yx, 1		; swap yx (to xy) result stored in yx
	movlw	0x0F
	andwf	yx, 0		; logical AND. Result stored in W.
	mulwf	onevolt
	movff   PRODL, item_y		; item_y now holds high nibbles in original yx. Holds y coordinates
	
	call	draw_item
	goto	end_graphics

end_graphics
	incf	grid_iter
	return
	end
	
	