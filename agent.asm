#include p18f87k22.inc
#include constants.inc
    global  agent_learn
    extern  player_gridhex
    extern  third_check_up, third_check_down, third_check_left, third_check_right, handle_D_button
    extern  find_max, q1_H, q2_H, q3_H, q4_H, q1_L, q2_L, q3_L, q4_L
    extern  current_max_H, q_max_H, q_max_L, reward_L, reward_H, display_score
    
acs0		    udata_acs
fsr_start	    res 1
state1_gridhex	    res 1	    
state1_max_i	    res 1
state1_max_H	    res 1
state1_max_L	    res 1		    
state1_max_H_tmp    res 1
state1_max_L_tmp    res 1	    
state2_max_H	    res 1
state2_max_L	    res 1
tmp_move	    res 1	    
counter		    res 1
is_neg		    res 1		    
	
q_agent	    code
	    
agent_learn
    call    display_score	    
    call    move
    movlw   0x28
    cpfseq  player_gridhex
    bra	    agent_learn
    return
    
move
    call    get_action
    call    q_learn
    call    update_q_table
    call    reset_game_fsr
    return

get_action
    call    store_q_values			; store q values in format to find max
    call    find_max				; find max of q_table[state1][actions]
    movff   player_gridhex, state1_gridhex	
    movff   q_max_H, state1_max_H		; store state 1 q value max H
    movff   q_max_L, state1_max_L		; store state 1 q value max L
    movff   current_max_H, state1_max_i		; store max index for state1
    call    reset_game_fsr
    call    use_max_q				; move character based on maxQ
    call    store_q_values			; get new gridhex, and new q
    call    find_max				; find maxQ of state2
    movff   q_max_H, state2_max_H
    movff   q_max_L, state2_max_L
    return
    
store_q_values
    movlb   4					; select bank 4
    lfsr    FSR2, 0x480				; store low byte in FSR2 bank 4
    movlw   0x04
    mulwf   player_gridhex
    movff   PRODL, fsr_start
    
    movf    fsr_start, W
    movff   PLUSW2, q1_L
    
    incf    fsr_start
    movf    fsr_start, W
    movff   PLUSW2, q2_L
    
    incf    fsr_start
    movf    fsr_start, W
    movff   PLUSW2, q3_L
    
    incf    fsr_start
    movf    fsr_start, W
    movff   PLUSW2, q4_L 
    
    movlb   5					; select bank 5
    lfsr    FSR2, 0x580				; store low byte in FSR2 bank 5
    movlw   0x04
    mulwf   player_gridhex
    movff   PRODL, fsr_start
    
    movf    fsr_start, W
    movff   PLUSW2, q1_H
    
    incf    fsr_start
    movf    fsr_start, W
    movff   PLUSW2, q2_H
    
    incf    fsr_start
    movf    fsr_start, W
    movff   PLUSW2, q3_H
    
    incf    fsr_start
    movf    fsr_start, W
    movff   PLUSW2, q4_H 
    return
    
use_max_q
    movlw   0x00
    subwf   current_max_H, W
    movwf   tmp_move
    tstfsz  tmp_move
    bra	    check_q_value_down
    call    third_check_up
    return
    
check_q_value_down
    movlw   0x01
    subwf   current_max_H, W
    movwf   tmp_move
    tstfsz  tmp_move
    bra	    check_q_value_left
    call    third_check_down
    return
    
check_q_value_left
    movlw   0x02
    subwf   current_max_H, W
    movwf   tmp_move
    tstfsz  tmp_move
    bra	    check_q_value_right
    call    third_check_left
    return
    
check_q_value_right
    movlw   0x03
    subwf   current_max_H, W
    movwf   tmp_move
    tstfsz  tmp_move
    return
    call    third_check_right
    return
    
; *** qvalue_state1_action = qvalue_state1_action + learning_rate x	   *** ;
; *** [reward + discount_rate x MAX(qvalue_state2) - qvalue_state1_action] *** ;
; *** Take learning_rate = 1, discount_rate = 1				   *** ;
    
q_learn
    clrf    is_neg
    movff   state1_max_L, state1_max_L_tmp
    movff   state1_max_H, state1_max_H_tmp
    ; *** A = reward + 1 x MAX(qvalue_state2) *** ;
    movf    reward_L, W				; move reward to WREG
    addwf   state2_max_L, F			; add to state2_max_L
    movf    reward_H, W				; add carry to H
    addwfc  state2_max_H, F			; add carry to state2_max_H
    
    ; *** B = A - qvalue_state1_action *** ;
    ; *** Perform negf on the 16bit state1_max_H:state1_max_L manually	*** ;
    movlw   0x01
    subwf   state1_max_L_tmp, F
    movlw   0x00
    subwfb  state1_max_H_tmp, F
    comf    state1_max_L_tmp
    comf    state1_max_H_tmp
    
    ; *** Add A_low:A_high to negf(state1_max_H:state1_max_L) *** ;
    movf    state1_max_L_tmp, W
    addwf   state2_max_L, F
    movf    state1_max_H_tmp, W
    addwfc  state2_max_H, F
    
    ; *** C = learning_rate x B *** ;
    clrf    counter
    movlw   0x80
    cpfslt  state2_max_H
    call    convert_from_twos_comp
    
    learning_rate_mul
	incf	counter
	bcf	STATUS, Z
	rrcf	state2_max_H, F
	rrcf	state2_max_L, F
	movlw	0x02
	cpfslt	counter
	bra	learning_rate_mul
	
    movlw   0x01
    cpfseq  is_neg
    bra	    final_q_learn
    call    convert_to_twos_comp
    
    ; *** D = C + qvalue_state1_action (in 2's complement)		   *** ;
    final_q_learn
	movf    state1_max_L, W			; add state1 max low byte to the
	addwf   state2_max_L, F			; low byte of A
	movf    state1_max_H, W			; add state1 max high byte to
	addwfc  state2_max_H, F			; high byte of A
    
    movff   state2_max_L, state1_max_L
    movff   state2_max_H, state1_max_H
       
    return
    
update_q_table
    movlb   4			    ; select bank 4 for L bytes (reset FSR pointer)
    lfsr    FSR2, 0x480		    ; reset at 0x480
    
    movlw   0x04
    mulwf   state1_gridhex	    ; Mutiply gridhex value by 4 (up down left right)
    movf    PRODL, W		    ; Retrieve value (into W)
    addwf   state1_max_i, W	    ; Offset by index value 
    movff   state1_max_L, PLUSW2    ; update table with new q value for L bytes 
    
    movlb   5			    ; select bank 5 for H bytes (reset FSR pointer)
    lfsr    FSR2, 0x580		    ; reset at 0x580
    
    movlw   0x04
    mulwf   state1_gridhex	    ; Mutiply gridhex value by 4 (up down left right)
    movf    PRODL, W		    ; Retrieve value (into W)
    addwf   state1_max_i, W	    ; Offset by index value 
    movff   state1_max_H, PLUSW2    ; update table with new q value for H bytes 
    return
    
reset_game_fsr
    movlb   6			    ; select bank 6
    lfsr    FSR1, 0x680		    ; reset at 0x680 to point to game grid values
    
    movlb   8			    ; select bank 8
    lfsr    FSR0, 0x880		    ; reset at 0x880 for mapmatrix level
    return
    
convert_from_twos_comp    
    movlw   0x01
    movwf   is_neg
    movlw   0x01
    subwf   state2_max_L, F
    movlw   0x00
    subwfb  state2_max_H, F
    comf    state2_max_L
    comf    state2_max_H   
    return
    
convert_to_twos_comp    
    comf    state2_max_L
    comf    state2_max_H
    movlw   0x01
    addwf   state2_max_L
    movlw   0x00
    addwfc  state2_max_H
    return
    
    end
