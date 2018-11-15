#include p18f87k22.inc


acs0	    udata_acs	     ; named variables in access ram	
storage		   res 1
current_H	   res 1     ; current iterator of q_H
current_max_H	   res 1     ; current index of max q_H
candidate_max_H    res 1
candidate_L res 1
 
q1      res 1
q2      res 1
q3	res 1
q4	res 1
q1_L    res 1
q2_L    res 1
q3_L	res 1
q4_L	res 1 

q_max_H	res 1
q_max_L	res 1
     
rst	code	0    ; reset vector
     
findmax	    code

setup
    movlw   0x00
    movwf   candidate_L
    movwf   current_H
    movwf   current_max_H
    
    movlw   0x03
    movwf   q1
    movlw   0x03
    movwf   q2
    movlw   0x03
    movwf   q3
    movlw   0x03
    movwf   q4
    
    movlw   0x07
    movwf   q1_L
    movlw   0x07
    movwf   q2_L
    movlw   0x0A
    movwf   q3_L
    movlw   0x06
    movwf   q4_L
    
    movlb   4
    lfsr    FSR0, 0x480
    
    movlb   5
    lfsr    FSR1, 0x580
    
    movff   q1, POSTINC0
    movff   q2, POSTINC0
    movff   q3, POSTINC0
    movff   q4, POSTINC0
    
    movff   q1_L, POSTINC1
    movff   q2_L, POSTINC1
    movff   q3_L, POSTINC1
    movff   q4_L, POSTINC1
    
    movlb   4
    lfsr    FSR0, 0x480
    
    movlb   5
    lfsr    FSR1, 0x580
    
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
    
    end