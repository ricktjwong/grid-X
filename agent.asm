#include p18f87k22.inc
#include constants.inc
    global  agent_learn
    extern  player_gridhex
    extern  move_up, move_down, move_left, move_right, handle_D_button
    
acs0		udata_acs   
fsr_start	res 1	    
q_value_up	res 1		; q_value representing move up
q_value_down    res 1		; q_value representing move down
q_value_left    res 1		; q_value representing move left
q_value_right   res 1		; q_value representing move right
max_q		res 1		; max q_value
	
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
    call    get_max_q
    return
    
store_q_values
    movlw   0x04
    mulwf   player_gridhex
    movff   PRODL, fsr_start
    
    movf    fsr_start, W
    movff   PLUSW2, q_value_up
    
    incf    fsr_start
    movf    fsr_start, W
    movff   PLUSW2, q_value_down
    
    incf    fsr_start
    movf    fsr_start, W
    movff   PLUSW2, q_value_left
    
    incf    fsr_start
    movf    fsr_start, W
    movff   PLUSW2, q_value_right    
    return
    
get_max_q    
    movf    max_q, W
    cpfseq  q_value_up
    bra	    check_q_value_down
    call    move_up
    return
    
check_q_value_down
    movf    max_q, W
    cpfseq  q_value_down
    bra	    check_q_value_left
    call    move_down
    return
    
check_q_value_left
    movf    max_q, W
    cpfseq  q_value_left
    bra	    check_q_value_right
    call    move_left
    return
    
check_q_value_right
    movf    max_q, W
    cpfseq  q_value_right
    call    move_right
    return
    
q_learn
    return
    
update_q_table
    return

    end
