#include p18f87k22.inc
#include constants.inc
    global  q_table_level1
    
acs0	    udata_acs   ; named variables in access ram	
initial_q   res 1
counter	    res 1
	
q_table1    code
	    
q_table_level1
    movlw	0x10		    ; initial q_value for all state_actions is 0
    movwf	initial_q
    movlw	0x00
    movwf	counter
    
populate_q_table
    movlb	4		    ; select bank 4
    lfsr	FSR2, 0x480	    ; store low byte in FSR2 bank 4
    movf	counter, W	    
    movff	counter, PLUSW2
    
    movlb	5		    ; select bank 5
    lfsr	FSR2, 0x580	    ; store high byte in FSR2 bank 5
    movf	counter, W	    
    movff	counter, PLUSW2
    
    incf	counter
    movlw	0xA4
    cpfseq	counter
    bra		populate_q_table
    return

    end
