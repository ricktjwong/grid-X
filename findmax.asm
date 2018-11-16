#include p18f87k22.inc
	global find_max, q1_H, q2_H, q3_H, q4_H, q1_L, q2_L, q3_L, q4_L
	global current_max_H, q_max_H, q_max_L
    
acs0		    udata_acs	    ; named variables in access ram
current_H	    res 1	    ; current iterator of q_H
current_max_H	    res 1	    ; current index of max q_H
candidate_max_H	    res 1
candidate_L	    res 1
 
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
    movff   POSTINC0, q_max_H	; Loads q1 into q_max_H    
    
compare_next
    movf    POSTINC0, W		; Temp storage for candidate q
    incf    current_H		; Increments current_H
    cpfsgt  q_max_H		; Compare if W < max_q_H 
    bra	    check_greater_equal		; if >= do not skip check for ==

rejoin_H
    movlw   0x03
    cpfseq  current_H		; if counter_H == 3
    bra	    compare_next	; Check next number
    goto    exit

check_greater_equal
    cpfseq  q_max_H			 ; compare if W == max_q_H
    bra	    set_max			 ; since != and previously !< , must be >
    movff   current_H, candidate_max_H
    call    check_low			 ; since == then need to check low bits
    goto    rejoin_H			 ; Rejoins main loop
	    
set_max
    movwf   q_max_H
    movff   current_H, current_max_H
    goto    rejoin_H		; Rejoins main loop
    
check_low
    movf    current_max_H, W
    movff   PLUSW1, q_max_L	; Loads q1 into q_max_H
    
compare_L
    movf    candidate_max_H, W
    movff   PLUSW1, candidate_L	
    movf    candidate_L, W
    cpfsgt  q_max_L		; compare if max_q_H > W
    movwf   q_max_L		; if q_max_L <  set new max
				; else if q_max_L already > W, do nothing
    cpfsgt  q_max_L		; compare if max_q_H > W
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
    return
    
    end