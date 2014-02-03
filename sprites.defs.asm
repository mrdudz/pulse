numsprites  = 16
numchars    = 128

chars       = $1000
charsize    = numchars * 8
bufsize     = charsize / 2
charmask    = numchars - 1
bankmask    = numchars / 2
screensize  = 22 * 23

scr         = $00
col         = $02
scrx        = $04
scry        = $05
curcol      = $66
spr         = $07
sprx        = $09
spry        = $0a
sprbits     = $0b
sprchar     = $0d
sprshiftx   = $0e
sprshifty   = $0f
spr_u       = $10
spr_l       = $11
sprbank     = $12
counter     = $13
counter_u   = $14
tmp         = $15
tmp2        = $16
tmp3        = $17
cursprite   = $18

sprites_l   = $20   ; Low character address.
sprites_h   = $30   ; High character address.
sprites_x   = $40   ; X position.
sprites_y   = $50   ; Y position.
sprites_c   = $70   ; Color.
sprites_ox  = $80   ; Former X position for cleaning up.
sprites_oy  = $90   ; Former Y position for cleaning up.
sprites_fh  = $a0   ; Function controlling the sprite.
sprites_fl  = $b0   ; Function controlling the sprite.
sprites_i   = $c0   ; Whatever the function needs.
