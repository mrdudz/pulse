#ifdef M3K
* = $03ff
#else
* = $0fff
#endif

load_address:
#ifdef M3K
    .word $0401
#else
    .word $1001
#endif

    .word basic_end
    .word 1
    .byte $9e
#ifdef M3K
    .asc "1037"
#else
    .asc "4109"
#endif
    .byte 0
basic_end:
    .word 0
