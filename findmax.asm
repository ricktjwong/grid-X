#include p18f87k22.inc
	global find_max, q1_H, q2_H, q3_H, q4_H, q1_L, q2_L, q3_L, q4_L
	global current_max_H, q_max_H, q_max_L
    
acs0		    udata_acs		; named variables in access ram
current_H	    res 1		; current iterator of q_H
current_max_H	    res 1		; current index of max q_H
candidate_max_H	    res 1
candidate_L	    res 1
neg_count	    res 1
neg_tmp		    res 1    
 
q1_H    res 1
q2_H    res 1
q3_H	res 1
q4_H	res 1
q1_L    res 1
q2_L    res 1
q3_L	res 1
q4_L	res 1 

q_max_H	res 1
q_max_L	res 1
     
findmax	    code

find_max
setup
    call    handle_negs
    movlw   0x00
    movwf   candidate_L
    movwf   current_H
    movwf   current_max_H
    
    movlb   3
    lfsr    FSR0, 0x300
    
    movlb   3
    lfsr    FSR1, 0x340
    
    movff   q1_H, POSTINC0
    movff   q2_H, POSTINC0
    movff   q3_H, POSTINC0
    movff   q4_H, POSTINC0
    
    movff   q1_L, POSTINC1
    movff   q2_L, POSTINC1
    movff   q3_L, POSTINC1
    movff   q4_L, POSTINC1
    
    movlb   3
    lfsr    FSR0, 0x300
    
    movlb   3
    lfsr    FSR1, 0x340
    
start_
    movff   POSTINC0, q_max_H		; Loads q1 into q_max_H    
    
compare_next
    movf    POSTINC0, W			; Temp storage for candidate q
    incf    current_H			; Increments current_H
    cpfsgt  q_max_H			; Compare if W < max_q_H 
    bra	    check_greater_equal		; if >= do not skip check for ==

rejoin_H
    movlw   0x03
    cpfseq  current_H			; if counter_H == 3
    bra	    compare_next		; Check next number
    goto    exit

check_greater_equal
    cpfseq  q_max_H			; compare if W == max_q_H
    bra	    set_max			; since != and previously !< , must be >
    movff   current_H, candidate_max_H
    call    check_low			; since == then need to check low bits
    goto    rejoin_H			; Rejoins main loop
	    
set_max
    movwf   q_max_H
    movff   current_H, current_max_H
    goto    rejoin_H			; Rejoins main loop
    
check_low
    movf    current_max_H, W
    movff   PLUSW1, q_max_L		; Loads q1 into q_max_H
    
compare_L
    movf    candidate_max_H, W
    movff   PLUSW1, candidate_L	
    movf    candidate_L, W
    cpfsgt  q_max_L			; compare if max_q_H > W
    movwf   q_max_L			; if q_max_L <  set new max
					; else if q_max_L already > W, do nothing
    cpfsgt  q_max_L			; compare if max_q_H > W
    movff   candidate_max_H, current_max_H
    return    
    
exit
    movlb   3
    lfsr    FSR0, 0x300
    movlb   3
    lfsr    FSR1, 0x340
    
    movf    current_max_H, W
    movff   PLUSW0, q_max_H
    movff   PLUSW1, q_max_L
    
    movlw   0x00
    cpfseq  neg_count
    bra	    handle_invert_back
    bra	    final
handle_invert_back
    movlw   0x04
    cpfseq  neg_count
    bra	    sub_one
    goto    invert_neg_back
sub_one
    call    sub_one_back
final    
    return
    
; *** Count number of negative numbers and handle the three different	  *** ;
; *** cases:								  *** ;
; *** 1. All four numbers are positive					  *** ;
; *** 2. Some numbers are positive, some are negative			  *** ;
; *** 3. All numbers are negative					  *** ;
handle_negs
    call    count_negs
    call    check_negs
    return
    
count_negs
    clrf    neg_count
    movlw   0x80
    cpfslt  q1_H
    incf    neg_count
    movlw   0x80
    cpfslt  q2_H
    incf    neg_count
    movlw   0x80
    cpfslt  q3_H
    incf    neg_count
    movlw   0x80
    cpfslt  q4_H
    incf    neg_count
    return

; If neg_count = 0, situation 1. If neg_count = 4, situation 3. Else, it is
; situation 2 where some are negative
check_negs
    movlw   0x00
    cpfseq  neg_count
    bra	    check_all_neg
    return
check_all_neg
    movlw   0x04
    cpfseq  neg_count
    bra	    check_some_negs
    call    invert_negs
    return   
check_some_negs
    call    handle_some_negs
    return
    
invert_negs
    movlw   0xFF
    addwf   q1_L, F
    movlw   0xFF
    addwfc  q1_H, F
    
    movlw   0xFF
    addwf   q2_L, F
    movlw   0xFF
    addwfc  q2_H, F
    
    movlw   0xFF
    addwf   q3_L, F
    movlw   0xFF
    addwfc  q3_H, F
    
    movlw   0xFF
    addwf   q4_L, F
    movlw   0xFF
    addwfc  q4_H, F
    return
    
invert_neg_back
    movlw   0x01
    addwf   q_max_L, F
    movlw   0x00
    addwfc  q_max_H, F
    goto    final    
    
sub_one_back
    movlw   0x01
    subwf   q_max_L, F
    movlw   0x00
    subwf   q_max_H
    return
    
; *** If number is negative, change to 0. If positive, add 1 to handle	   *** ;
; *** the case where positives are 0s e.g. 0, 0, 0, -1 -> 0, 0, 0, 0	   *** ;
handle_some_negs
    movlw   0x80
    cpfslt  q1_H
    goto    handle_q1_negative
    call    handle_q1_positive
check_q2   
    movlw   0x80
    cpfslt  q2_H
    goto    handle_q2_negative
    call    handle_q2_positive
check_q3
    movlw   0x80
    cpfslt  q3_H
    goto    handle_q3_negative
    call    handle_q3_positive
check_q4 
    movlw   0x80
    cpfslt  q4_H
    goto    handle_q4_negative
    call    handle_q4_positive
rejoin
    return

handle_q1_positive
    movlw   0x01
    addwf   q1_L, F
    movlw   0x00
    addwfc  q1_H, F
    return
    
handle_q1_negative
    clrf    q1_H
    clrf    q1_L
    goto    check_q2
    
handle_q2_positive
    movlw   0x01
    addwf   q2_L, F
    movlw   0x00
    addwfc  q2_H, F
    return
    
handle_q2_negative
    clrf    q2_H
    clrf    q2_L
    goto    check_q3
    return
    
handle_q3_positive
    movlw   0x01
    addwf   q3_L, F
    movlw   0x00
    addwfc  q3_H, F
    return
    
handle_q3_negative
    clrf    q3_H
    clrf    q3_L
    goto    check_q4
    return
    
handle_q4_positive
    movlw   0x01
    addwf   q4_L, F
    movlw   0x00
    addwfc  q4_H, F
    return
    
handle_q4_negative
    clrf    q4_H
    clrf    q4_L
    goto    rejoin
    return    
    
test_cases    
    movlw   0x00
    movwf   q1_H
    movlw   0x00
    movwf   q1_L

    movlw   0xFF
    movwf   q2_H
    movlw   0xFD
    movwf   q2_L

    movlw   0x00
    movwf   q3_H
    movlw   0x00
    movwf   q3_L

    movlw   0xFF
    movwf   q4_H
    movlw   0xFE
    movwf   q4_L   
    return
    
    end
    