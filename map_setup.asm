#include p18f87k22.inc
    global table

acs0    udata_acs   ; named variables in access ram
 
storage	  res 1
map_array res 49	 
	
map_setup	code

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
