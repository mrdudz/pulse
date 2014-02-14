adding_scout:           .byte 0
adding_scout_delay:     .byte 0
scout_formation_y:      .byte 0
formation_left_unhit:   .byte 0

add_scout:
.(
    lda framecounter
    and #%01111111
    bne l1
    lda random
retry:
    and #%01111000
    clc
    adc #16
    sta scout_formation_y
    lsr
    lsr
    lsr
    sta scry
    lda #21
    sta scrx
    jsr scraddr
    ldy #0
    lda (scr),y
    and #foreground
    cmp #foreground
    bne n1
    lda random
    rol
    eor $9004
    sta random
    jmp retry
n1: lda #8
    sta adding_scout
    sta formation_left_unhit
    lda #3
    sta adding_scout_delay
l1:

    lda adding_scout
    beq l2
    dec adding_scout_delay
    lda adding_scout_delay
    bne l2
    lda #3
    sta adding_scout_delay
    dec adding_scout
    lda scout_formation_y
    sta scout_init+1
    ldy #scout_init-sprite_inits
    jmp add_sprite
l2: rts
.)
