#include p18f87k22.inc
#include constants.inc
     global  level2_table

acs0	    udata_acs
storage     res 1

level2	    code

level2_table

     movlb  6
     lfsr   FSR1, 0x680

     movlw  0x01
     movwf  storage
     movlw  .0
     movff  storage, PLUSW1

     movlw  0x01
     movwf  storage
     movlw  .1
     movff  storage, PLUSW1

     movlw  0x01
     movwf  storage
     movlw  .2
     movff  storage, PLUSW1

     movlw  0x01
     movwf  storage
     movlw  .3
     movff  storage, PLUSW1

     movlw  0x01
     movwf  storage
     movlw  .4
     movff  storage, PLUSW1

     movlw  0x01
     movwf  storage
     movlw  .5
     movff  storage, PLUSW1

     movlw  0x01
     movwf  storage
     movlw  .6
     movff  storage, PLUSW1

     movlw  0x01
     movwf  storage
     movlw  .7
     movff  storage, PLUSW1

     movlw  0x00
     movwf  storage
     movlw  .8
     movff  storage, PLUSW1

     movlw  0x00
     movwf  storage
     movlw  .9
     movff  storage, PLUSW1

     movlw  0x00
     movwf  storage
     movlw  .10
     movff  storage, PLUSW1

     movlw  0x00
     movwf  storage
     movlw  .11
     movff  storage, PLUSW1

     movlw  0x04
     movwf  storage
     movlw  .12
     movff  storage, PLUSW1

     movlw  0x01
     movwf  storage
     movlw  .13
     movff  storage, PLUSW1

     movlw  0x01
     movwf  storage
     movlw  .14
     movff  storage, PLUSW1

     movlw  0x00
     movwf  storage
     movlw  .15
     movff  storage, PLUSW1

     movlw  0x01
     movwf  storage
     movlw  .16
     movff  storage, PLUSW1

     movlw  0x01
     movwf  storage
     movlw  .17
     movff  storage, PLUSW1

     movlw  0x01
     movwf  storage
     movlw  .18
     movff  storage, PLUSW1

     movlw  0x04
     movwf  storage
     movlw  .19
     movff  storage, PLUSW1

     movlw  0x01
     movwf  storage
     movlw  .20
     movff  storage, PLUSW1

     movlw  0x01
     movwf  storage
     movlw  .21
     movff  storage, PLUSW1

     movlw  0x00
     movwf  storage
     movlw  .22
     movff  storage, PLUSW1

     movlw  0x00
     movwf  storage
     movlw  .23
     movff  storage, PLUSW1

     movlw  0x00
     movwf  storage
     movlw  .24
     movff  storage, PLUSW1

     movlw  0x00
     movwf  storage
     movlw  .25
     movff  storage, PLUSW1

     movlw  0x00
     movwf  storage
     movlw  .26
     movff  storage, PLUSW1

     movlw  0x01
     movwf  storage
     movlw  .27
     movff  storage, PLUSW1

     movlw  0x01
     movwf  storage
     movlw  .28
     movff  storage, PLUSW1

     movlw  0x00
     movwf  storage
     movlw  .29
     movff  storage, PLUSW1

     movlw  0x01
     movwf  storage
     movlw  .30
     movff  storage, PLUSW1

     movlw  0x01
     movwf  storage
     movlw  .31
     movff  storage, PLUSW1

     movlw  0x01
     movwf  storage
     movlw  .32
     movff  storage, PLUSW1

     movlw  0x00
     movwf  storage
     movlw  .33
     movff  storage, PLUSW1

     movlw  0x01
     movwf  storage
     movlw  .34
     movff  storage, PLUSW1

     movlw  0x01
     movwf  storage
     movlw  .35
     movff  storage, PLUSW1

     movlw  0x00
     movwf  storage
     movlw  .36
     movff  storage, PLUSW1

     movlw  0x00
     movwf  storage
     movlw  .37
     movff  storage, PLUSW1

     movlw  0x02
     movwf  storage
     movlw  .38
     movff  storage, PLUSW1

     movlw  0x00
     movwf  storage
     movlw  .39
     movff  storage, PLUSW1

     movlw  0x05
     movwf  storage
     movlw  .40
     movff  storage, PLUSW1

     movlw  0x01
     movwf  storage
     movlw  .41
     movff  storage, PLUSW1

     movlw  0x01
     movwf  storage
     movlw  .42
     movff  storage, PLUSW1

     movlw  0x01
     movwf  storage
     movlw  .43
     movff  storage, PLUSW1

     movlw  0x01
     movwf  storage
     movlw  .44
     movff  storage, PLUSW1

     movlw  0x01
     movwf  storage
     movlw  .45
     movff  storage, PLUSW1

     movlw  0x01
     movwf  storage
     movlw  .46
     movff  storage, PLUSW1

     movlw  0x01
     movwf  storage
     movlw  .47
     movff  storage, PLUSW1

     movlw  0x01
     movwf  storage
     movlw  .48
     movff  storage, PLUSW1

     return
     end
