#include p18f87k22.inc

acs0	udata_acs   ; reserve data space in access ram

mapArray res 0x80	
	
main code

table
    movlb	6		    ;select bank 6
    lfsr	FSR1, 0x680	    ;point FSR1 to the middle of bank 6
    movlw	0x01		    ; load all of the ascii codes into locations +/- away from the FSR1
    movwf	storage
    movlw	0x01
    movff	storage, PLUSW1
    
    movlw	0x05		    ; load all of the ascii codes into locations +/- away from the FSR1
    movwf	storage
    movlw	0x02
    movff	storage, PLUSW1
    
    end
