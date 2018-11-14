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
    
    movlb	4		    ; select bank 4
    lfsr	FSR2, 0x480	    ; point FSR2 to bank 4
    
populate_q_table
    movf	counter, W
    movff	initial_q, PLUSW2
    incf	counter
    movlw	0xC4
    cpfseq	counter
    bra		populate_q_table
    return

    end
