#include p18f87k22.inc
#include constants.inc
    global  qlearning_level_1, check_qlearning_level_2, check_qlearning_level_3
    extern  draw_player, player_x, player_y, player_gridhex
    extern  level1_table, level2_table, level3_table 
    extern  mapmatrix7x7, draw_grids, gamestate
    extern  player_score, q_table_7x7, agent_learn
    extern  player_score_L, player_score_H, start
    
acs0		    udata_acs
fsr_start	    res 1	    
	
q_learning_mods	    code
	
qlearning_level_1
	call	q_table_7x7
iter	clrf	player_score_L
	clrf	player_score_H
	movlw	0x00
	movwf	player_score
	call	level1_table
	call	mapmatrix7x7
	movlw   0x1B
	movwf   player_x
	movwf   player_y
	movlw	0x08
	movwf	player_gridhex
	call	agent_learn
	call	draw_grids
	call	draw_player
	movlw	0x00
	cpfseq	gamestate
	goto	iter
	goto	start
	
qlearning_level_2
	call	q_table_7x7
iter2	clrf	player_score_L
	clrf	player_score_H
	movlw	0x00
	movwf	player_score
	call	level2_table
	call	mapmatrix7x7
	movlw   0x51
	movwf   player_x
	movwf   player_y
	movlw	0x18
	movwf	player_gridhex
	call	agent_learn
	call	draw_grids
	call	draw_player
	movlw	0x00
	cpfseq	gamestate
	goto	iter2
	goto	start
	
qlearning_level_3
	call	q_table_7x7
iter3	clrf	player_score_L
	clrf	player_score_H
	movlw	0x00
	movwf	player_score
	call	level3_table
	call	mapmatrix7x7
	movlw   0x1B
	movwf   player_x
	movwf   player_y
	movlw	0x08
	movwf	player_gridhex
	call	agent_learn
	call	draw_grids
	call	draw_player
	movlw	0x00
	cpfseq	gamestate
	goto	iter3
	goto	start	
	
check_qlearning_level_2
	movlw	0x78
	cpfseq	gamestate
	goto	check_qlearning_level_3	
	goto	qlearning_level_2
	
check_qlearning_level_3
	movlw	0x79
	cpfseq	gamestate
	goto	start	
	goto	qlearning_level_3
	
	end
