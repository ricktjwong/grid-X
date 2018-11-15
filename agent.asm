#include p18f87k22.inc
#include constants.inc
    global  agent_learn
    extern  player_gridhex
    extern  move_up, move_down, move_left, move_right, handle_D_button
    
acs0		    udata_acs   
fsr_start	    res 1	    
q_value_up_low	    res 1		; q_value representing move up
q_value_down_low    res 1		; q_value representing move down
q_value_left_low    res 1		; q_value representing move left
q_value_right_low   res 1		; q_value representing move right
q_value_up_high	    res 1		; q_value representing move up
q_value_down_high   res 1		; q_value representing move down
q_value_left_high   res 1		; q_value representing move left
q_value_right_high  res 1		; q_value representing move right
max_q		    res 1
max_q_high	    res 1		; max q_high_value
max_q_low	    res 1		; max q_low_value
max_q_high_index    res 1		; index of max q_high
max_q_low_index	    res 1		; index of max q_low
number_equal_high   res 1		; Number of equal q_high values
	
q_agent	    code
	    
agent_learn
    movlw   0x28
    cpfseq  player_gridhex
    call    move
    return
    
move
    call    get_action
    call    q_learn
    call    update_q_table
    return

get_action
    call    store_q_values
    call    determine_Nmax
    tstfsz  number_equal_high
    call    get_max_q_low
    call    get_max_q_high
    call    use_max_q
    return
    
store_q_values
    movlb   4			; select bank 4
    lfsr    FSR2, 0x480		; store low byte in FSR2 bank 4
    movlw   0x04
    mulwf   player_gridhex
    movff   PRODL, fsr_start
    
    movf    fsr_start, W
    movff   PLUSW2, q_value_up_low
    
    incf    fsr_start
    movf    fsr_start, W
    movff   PLUSW2, q_value_down_low
    
    incf    fsr_start
    movf    fsr_start, W
    movff   PLUSW2, q_value_left_low
    
    incf    fsr_start
    movf    fsr_start, W
    movff   PLUSW2, q_value_right_low 
    
    movlb   5			; select bank 5
    lfsr    FSR2, 0x580		; store low byte in FSR2 bank 5
    movlw   0x04
    mulwf   player_gridhex
    movff   PRODL, fsr_start
    
    movf    fsr_start, W
    movff   PLUSW2, q_value_up_high
    
    incf    fsr_start
    movf    fsr_start, W
    movff   PLUSW2, q_value_down_high
    
    incf    fsr_start
    movf    fsr_start, W
    movff   PLUSW2, q_value_left_high
    
    incf    fsr_start
    movf    fsr_start, W
    movff   PLUSW2, q_value_right_high 
    return
    
get_max_q_high
    ; call this routine if number_equal_high = 0b0000 0000 only
    movff   q_value_up_high, max_q_high
    movlw   0x00
    movwf   max_q_high_index
    
    movf    q_value_down_high, W
    cpfslt  max_q_high				 ;compare current_q with W skip if <
    movff   q_value_down_high, max_q_high	 ; if instead > , then set as new max
    cpfslt  max_q_high
    movlw   0x01
    cpfslt  max_q_high
    movwf   max_q_high_index
    
    movf    q_value_left_high, W
    cpfslt  max_q_high				 ;compare current_q with W skip if <
    movff   q_value_down_high, max_q_high	 ; if instead > , then set as new max
    cpfslt  max_q_high
    movlw   0x02
    cpfslt  max_q_high
    movwf   max_q_high_index
    
    movf    q_value_right_high, W
    cpfslt  max_q_high				 ;compare current_q with W skip if <
    movff   q_value_right_high, max_q_high	 ; if instead > , then set as new max
    cpfslt  max_q_high
    movlw   0x03
    cpfslt  max_q_high
    movwf   max_q_high_index
    return

get_max_q_low
    ; Call this routine only if max_q_high was indeterminate 
    ; i.e. number_equal high has >= 2 ones (equivalently if number_equal_high > 0x01)
    movff   q_value_up_low, max_q_low
    movlw   0x00
    movwf   max_q_low_index
    
    movf    q_value_down_low, W
    cpfslt  max_q_low				 ; compare current_q with W skip if <
    movff   q_value_down_low, max_q_low		 ; if instead > , then set as new max
    cpfslt  max_q_low
    movlw   0x01
    cpfslt  max_q_low
    movwf   max_q_low_index
    
    movf    q_value_left_low, W
    cpfslt  max_q_low				 ; compare current_q with W skip if <
    movff   q_value_down_low, max_q_low		 ; if instead > , then set as new max
    cpfslt  max_q_low
    movlw   0x02
    cpfslt  max_q_low
    movwf   max_q_low_index
    
    movf    q_value_right_low, W
    cpfslt  max_q_low				 ; compare current_q with W skip if <
    movff   q_value_right_low, max_q_low	 ; if instead > , then set as new max
    cpfslt  max_q_low
    movlw   0x03
    cpfslt  max_q_low
    movwf   max_q_low_index
    return
    
determine_Nmax
    movf    q_value_up_high, W
    
compare_UpDown  
    cpfseq  q_value_down_high
    bra	    compare_UpLeft
    movlw   0x01
    addwf   number_equal_high
 
compare_UpLeft
    cpfseq  q_value_left_high
    bra	    compare_UpRight
    movlw   0x02
    addwf   number_equal_high
    
compare_UpRight
    cpfseq  q_value_right_high
    bra	    compare_DownLeft
    movlw   0x04
    addwf   number_equal_high
    
compare_DownLeft
    movf    q_value_down_high, W
    cpfseq  q_value_left_high
    bra	    compare_DownRight
    movlw   0x08
    addwf   number_equal_high
    
compare_DownRight
    cpfseq  q_value_right_high
    bra	    compare_LeftRight
    movlw   0x10
    addwf   number_equal_high
    
compare_LeftRight
    movf    q_value_left_high, W
    cpfseq  q_value_right_high
    return
    movlw   0x20
    addwf   number_equal_high
    return
    
use_max_q    
    movf    max_q, W
    cpfseq  q_value_up_low
    bra	    check_q_value_down
    call    move_up
    return
    
check_q_value_down
    movf    max_q, W
    cpfseq  q_value_down_low
    bra	    check_q_value_left
    call    move_down
    return
    
check_q_value_left
    movf    max_q, W
    cpfseq  q_value_left_low
    bra	    check_q_value_right
    call    move_left
    return
    
check_q_value_right
    movf    max_q, W
    cpfseq  q_value_right_low
    call    move_right
    return
    
q_learn
    return
    
update_q_table
    return


    end
