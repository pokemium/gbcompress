; GB-Compress decompressor in RGBASM format.
; NOT Compatible with GBTD

_gb_decompress::
    lda     hl, 5(SP)
    ld      a, (hl-)
    ld      d, a
    ld      a, (hl-)
    ld      e, a
    ld      a, (hl-)
    ld      l, (hl)
    ld      h, a

; hl = source; de = dest
gb_decompress::
    push    bc
.loop
    ld      a, (hl+)     ; load command
    or      a
    jr      z, .exit    ; exit, if last byte
    bit     7, a
    jr      nz, .stringOrTrash       ; string functions
    bit     6, a
    jr      nz, .word
; .byte
    and     %00111111         ; calc counter
    inc     a
    ld      b, a
    ld      a, (hl+)
.byteLoop
    ld      (de), a
    inc     de
    dec     b
    jr      nz, .byteLoop
    jr      .loop      ; next command
.word                   ; RLE word
    and     %00111111
    inc     a
    ld      b, (hl)  ; load word into bc
    inc     hl
    ld      c, (hl)
    inc     hl
.wordLoop
    push    af
    ld      a, b     ; store word
    ld      (de), a
    inc     de
    ld      a, c
    ld      (de), a
    inc     de
    pop     af
    dec     a
    jr      nz, .wordLoop
    jr      .loop      ; next command
.stringOrTrash
    bit     6, a
    jr      nz, .trash
    ; string repeat
    and     a, %00111111
    inc     a
    push    hl
    ld      c, (hl)  ; bc = offset
    inc     hl
    ld      b, (hl)
    ld      h, d     ; hl = de(dest)
    ld      l, e
    add     hl, bc   ; hl(from) = hl(dest) + bc(offset)
    ld      b, a
.stringLoop
    ld      a, (hl+)
    ld      (de), a
    inc     de
    dec     b
    jr      nz, .stringLoop
    pop     hl
    inc     hl
    inc     hl
    jr      .loop      ; next command
.trash                   ; string copy
    and     %00111111
    inc     a
    ld      b, a
.trashLoop                    
    ld      a, (hl+)
    ld      (de), a
    inc     de
    dec     b
    jr      nz, .trashLoop
    jr      .loop      ; next command
.exit
    pop     bc
    ret
