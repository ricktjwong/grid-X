#include p18f87k22.inc
#include constants.inc

    global  display_score
    extern  player_score, draw_zero, draw_one, draw_two, draw_three, draw_four
    extern  draw_five, draw_six, draw_seven, draw_eight, draw_nine
    extern  draw_negative

acs0	udata_acs	; reserve data space in access ram
	
ones		res 1	; reserve one byte to store ones place
tens		res 1	; reserve one byte to store tenths place
hundreds	res 1	; reserve one byte to store hundredths place
ps_tmp		res 1	; player_score temporary storage
check_tmp	res 1	; stores the ones/tenths/hundredths place for checking
digit_pos	res 1	; variable to keep track of which x_coord to print digit
and_tmp		res 1

score_display	code
	
display_score
	    movff   player_score, ps_tmp
	    movlw   0x80
	    andwf   ps_tmp, W
	    movwf   and_tmp
	    movlw   0x80
	    cpfslt  and_tmp
	    call    complement_and_drawneg
	    call    extract_hundreds
	    call    extract_tens_ones
	    call    display_digits
	    return
	    
complement_and_drawneg    
	    negf	ps_tmp
	    call	draw_negative
	    return
	    
extract_hundreds    
	    clrf	hundreds
h_extract   movlw	0x64
	    incf	hundreds
	    subwf	ps_tmp, F
	    btfsc	STATUS, C
	    goto 	h_extract
	    decf	hundreds
	    movlw	0x64
	    addwf	ps_tmp
	    return
	 
extract_tens_ones  
	    clrf	tens
t_extract   movlw	0x0A
	    incf	tens
	    subwf	ps_tmp, F
	    btfsc	STATUS, C
	    goto 	t_extract
	    decf	tens
	    movlw	0x0A
	    addwf	ps_tmp
	    movff	ps_tmp, ones
	    return

display_digits
	    movlw	0x6C
	    movwf	digit_pos
	    movf	hundreds, W
	    call	check_display
	    
	    movlw	0x7A 
	    movwf	digit_pos
	    movf	tens, W
	    call	check_display
	    
	    movlw	0x88
	    movwf	digit_pos
	    movf	ones, W
	    call	check_display
	    return

check_display   
	    movwf	check_tmp
	    movlw	0x00
	    cpfseq	check_tmp
	    bra		check_one
	    movf	digit_pos, W
	    call	draw_zero
	    return
	    
check_one   movlw	0x01
	    cpfseq	check_tmp
	    bra		check_two
	    movf	digit_pos, W
	    call	draw_one
	    return
	    
check_two   movlw	0x02
	    cpfseq	check_tmp
	    bra		check_three
	    movf	digit_pos, W
	    call	draw_two
	    return
	    
check_three movlw	0x03
	    cpfseq	check_tmp
	    bra		check_four
	    movf	digit_pos, W
	    call	draw_three
	    return
	    
check_four  movlw	0x04
	    cpfseq	check_tmp
	    bra		check_five
	    movf	digit_pos, W
	    call	draw_four
	    return
	    
check_five  movlw	0x05
	    cpfseq	check_tmp
	    bra		check_six
	    movf	digit_pos, W
	    call	draw_five
	    return
	    
check_six   movlw	0x06
	    cpfseq	check_tmp
	    bra		check_seven
	    movf	digit_pos, W
	    call	draw_six
	    return
	    
check_seven movlw	0x07
	    cpfseq	check_tmp
	    bra		check_eight
	    movf	digit_pos, W
	    call	draw_seven
	    return
	    
check_eight movlw	0x08
	    cpfseq	check_tmp
	    bra		check_nine
	    movf	digit_pos, W
	    call	draw_eight
	    return
	    
check_nine  movlw	0x09
	    cpfseq	check_tmp
	    return
	    movf	digit_pos, W
	    call	draw_nine	    
	    return
	    
	    end
