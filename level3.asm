#include p18f87k22.inc
#include constants.inc
     global  level3_table

acs0	    udata_acs
storage     res 1

level3	    code

level3_table

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

     movlw  0x01
     movwf  storage
     movlw  .8
     movff  storage, PLUSW1

     movlw  0x01
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

     movlw  0x00
     movwf  storage
     movlw  .12
     movff  storage, PLUSW1

     movlw  0x01
     movwf  storage
     movlw  .13
     movff  storage, PLUSW1

     movlw  0x00
     movwf  storage
     movlw  .14
     movff  storage, PLUSW1

     movlw  0x00
     movwf  storage
     movlw  .15
     movff  storage, PLUSW1

     movlw  0x00
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

     movlw  0x00
     movwf  storage
     movlw  .19
     movff  storage, PLUSW1

     movlw  0x01
     movwf  storage
     movlw  .20
     movff  storage, PLUSW1

     movlw  0x04
     movwf  storage
     movlw  .21
     movff  storage, PLUSW1

     movlw  0x01
     movwf  storage
     movlw  .22
     movff  storage, PLUSW1

     movlw  0x00
     movwf  storage
     movlw  .23
     movff  storage, PLUSW1

     movlw  0x01
     movwf  storage
     movlw  .24
     movff  storage, PLUSW1

     movlw  0x00
     movwf  storage
     movlw  .25
     movff  storage, PLUSW1

     movlw  0x01
     movwf  storage
     movlw  .26
     movff  storage, PLUSW1

     movlw  0x01
     movwf  storage
     movlw  .27
     movff  storage, PLUSW1

     movlw  0x00
     movwf  storage
     movlw  .28
     movff  storage, PLUSW1

     movlw  0x04
     movwf  storage
     movlw  .29
     movff  storage, PLUSW1

     movlw  0x00
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

     movlw  0x00
     movwf  storage
     movlw  .34
     movff  storage, PLUSW1

     movlw  0x01
     movwf  storage
     movlw  .35
     movff  storage, PLUSW1

     movlw  0x01
     movwf  storage
     movlw  .36
     movff  storage, PLUSW1

     movlw  0x00
     movwf  storage
     movlw  .37
     movff  storage, PLUSW1

     movlw  0x01
     movwf  storage
     movlw  .38
     movff  storage, PLUSW1

     movlw  0x01
     movwf  storage
     movlw  .39
     movff  storage, PLUSW1

     movlw  0x00
     movwf  storage
     movlw  .40
     movff  storage, PLUSW1

     movlw  0x04
     movwf  storage
     movlw  .41
     movff  storage, PLUSW1

     movlw  0x01
     movwf  storage
     movlw  .42
     movff  storage, PLUSW1

     movlw  0x00
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

     movlw  0x00
     movwf  storage
     movlw  .46
     movff  storage, PLUSW1

     movlw  0x00
     movwf  storage
     movlw  .47
     movff  storage, PLUSW1

     movlw  0x04
     movwf  storage
     movlw  .48
     movff  storage, PLUSW1

     movlw  0x00
     movwf  storage
     movlw  .49
     movff  storage, PLUSW1

     movlw  0x00
     movwf  storage
     movlw  .50
     movff  storage, PLUSW1

     movlw  0x00
     movwf  storage
     movlw  .51
     movff  storage, PLUSW1

     movlw  0x00
     movwf  storage
     movlw  .52
     movff  storage, PLUSW1

     movlw  0x01
     movwf  storage
     movlw  .53
     movff  storage, PLUSW1

     movlw  0x01
     movwf  storage
     movlw  .54
     movff  storage, PLUSW1

     movlw  0x01
     movwf  storage
     movlw  .55
     movff  storage, PLUSW1

     movlw  0x00
     movwf  storage
     movlw  .56
     movff  storage, PLUSW1

     movlw  0x01
     movwf  storage
     movlw  .57
     movff  storage, PLUSW1

     movlw  0x01
     movwf  storage
     movlw  .58
     movff  storage, PLUSW1

     movlw  0x00
     movwf  storage
     movlw  .59
     movff  storage, PLUSW1

     movlw  0x01
     movwf  storage
     movlw  .60
     movff  storage, PLUSW1

     movlw  0x00
     movwf  storage
     movlw  .61
     movff  storage, PLUSW1

     movlw  0x01
     movwf  storage
     movlw  .62
     movff  storage, PLUSW1

     movlw  0x01
     movwf  storage
     movlw  .63
     movff  storage, PLUSW1

     movlw  0x04
     movwf  storage
     movlw  .64
     movff  storage, PLUSW1

     movlw  0x00
     movwf  storage
     movlw  .65
     movff  storage, PLUSW1

     movlw  0x04
     movwf  storage
     movlw  .66
     movff  storage, PLUSW1

     movlw  0x00
     movwf  storage
     movlw  .67
     movff  storage, PLUSW1

     movlw  0x04
     movwf  storage
     movlw  .68
     movff  storage, PLUSW1

     movlw  0x00
     movwf  storage
     movlw  .69
     movff  storage, PLUSW1

     movlw  0x04
     movwf  storage
     movlw  .70
     movff  storage, PLUSW1

     movlw  0x01
     movwf  storage
     movlw  .71
     movff  storage, PLUSW1

     movlw  0x01
     movwf  storage
     movlw  .72
     movff  storage, PLUSW1

     movlw  0x01
     movwf  storage
     movlw  .73
     movff  storage, PLUSW1

     movlw  0x01
     movwf  storage
     movlw  .74
     movff  storage, PLUSW1

     movlw  0x01
     movwf  storage
     movlw  .75
     movff  storage, PLUSW1

     movlw  0x01
     movwf  storage
     movlw  .76
     movff  storage, PLUSW1

     movlw  0x01
     movwf  storage
     movlw  .77
     movff  storage, PLUSW1

     movlw  0x01
     movwf  storage
     movlw  .78
     movff  storage, PLUSW1

     movlw  0x01
     movwf  storage
     movlw  .79
     movff  storage, PLUSW1

     movlw  0x01
     movwf  storage
     movlw  .80
     movff  storage, PLUSW1

     return
     end