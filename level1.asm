#include p18f87k22.inc
    global  level1_table
    
acs0	    udata_acs   ; named variables in access ram	
storage     res 1
tables	    udata   0x400	; reserve data anywhere in RAM (here at 0x400)
myArray	    res	    0x80	; reserve 128 bytes for message data
	
level1	    code
	    
level1_table
    ; *** row 1: W W W W W W W *** ;
    movlb	6		    ; select bank 6
    lfsr	FSR1, 0x680	    ; point FSR1 to the middle of bank 6
    movlw	0x01		    ; load all of the ascii codes into locations +/- away from the FSR1
    movwf	storage
    movlw	0x00
    movff	storage, PLUSW1

    movlw	0x01
    movwf	storage
    movlw	0x01
    movff	storage, PLUSW1
    
    movlw	0x01
    movwf	storage
    movlw	0x02
    movff	storage, PLUSW1
    
    movlw	0x01
    movwf	storage
    movlw	0x03
    movff	storage, PLUSW1
    
    movlw	0x01
    movwf	storage
    movlw	0x04
    movff	storage, PLUSW1
    
    movlw	0x01
    movwf	storage
    movlw	0x05
    movff	storage, PLUSW1
    
    movlw	0x01
    movwf	storage
    movlw	0x06
    movff	storage, PLUSW1
    
    ; *** row 2: W N N N N N W *** ;
    movlw	0x01
    movwf	storage
    movlw	0x07
    movff	storage, PLUSW1
    
    movlw	0x01
    movwf	storage
    movlw	0x0D
    movff	storage, PLUSW1
    
    ; *** row 3: W N I N W N W *** ;
    movlw	0x01
    movwf	storage
    movlw	0x0E
    movff	storage, PLUSW1
    
    movlw	0x04
    movwf	storage
    movlw	0x10
    movff	storage, PLUSW1
    
    movlw	0x01
    movwf	storage
    movlw	0x12
    movff	storage, PLUSW1
    
    movlw	0x01
    movwf	storage
    movlw	0x14
    movff	storage, PLUSW1
    
    ; *** row 4: W W W W N N W *** ;
    movlw	0x01
    movwf	storage
    movlw	0x15
    movff	storage, PLUSW1
    
    movlw	0x01
    movwf	storage
    movlw	0x16
    movff	storage, PLUSW1
    
    movlw	0x01
    movwf	storage
    movlw	0x17
    movff	storage, PLUSW1
    
    movlw	0x01
    movwf	storage
    movlw	0x18
    movff	storage, PLUSW1
    
    movlw	0x01
    movwf	storage
    movlw	0x1B
    movff	storage, PLUSW1
    
    ; *** row 5: W N N N N W W *** ;
    movlw	0x01
    movwf	storage
    movlw	0x1C
    movff	storage, PLUSW1
    
    movlw	0x01
    movwf	storage
    movlw	0x21
    movff	storage, PLUSW1
    
    movlw	0x01
    movwf	storage
    movlw	0x22
    movff	storage, PLUSW1
    
    ; *** row 6: W N I N N G W *** ;
    movlw	0x01
    movwf	storage
    movlw	0x23
    movff	storage, PLUSW1
    
    movlw	0x04
    movwf	storage
    movlw	0x25
    movff	storage, PLUSW1
    
    movlw	0x02
    movwf	storage
    movlw	0x28
    movff	storage, PLUSW1
    
    movlw	0x01
    movwf	storage
    movlw	0x29
    movff	storage, PLUSW1
    
    ; *** row 7: W W W W W W W *** ;
    
    movlw	0x01
    movwf	storage
    movlw	0x2A
    movff	storage, PLUSW1
    
    movlw	0x01
    movwf	storage
    movlw	0x2B
    movff	storage, PLUSW1
    
    movlw	0x01
    movwf	storage
    movlw	0x2C
    movff	storage, PLUSW1
    
    movlw	0x01
    movwf	storage
    movlw	0x2D
    movff	storage, PLUSW1
    
    movlw	0x01
    movwf	storage
    movlw	0x2E
    movff	storage, PLUSW1
    
    movlw	0x01
    movwf	storage
    movlw	0x2F
    movff	storage, PLUSW1
    
    movlw	0x01
    movwf	storage
    movlw	0x30
    movff	storage, PLUSW1
    
    return
    
    end
