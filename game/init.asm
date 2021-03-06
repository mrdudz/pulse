realstart = @(+ #x1000 charsetsize)

main:
    sei
    lda #$7f
    sta $912e       ; Disable and acknowledge interrupts.
    sta $912d
    sta $911e       ; Disable restore key NMIs.

    ; Copy code to $200-3ff.
    ldx #0
l:  lda lowmem,x
    sta $200,x
    lda @(+ lowmem #x100),x
    sta $300,x
    dex
    bne -l

    ; Copy code to stack.
    ldx #$5f
l:  lda stackmem,x
    sta $180,x
    dex
    bpl -l
