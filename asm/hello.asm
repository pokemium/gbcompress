printPC: MACRO
    printt \1
    printv(@)
    printt "\n"
ENDM

SECTION	"Start",ROM0[$100]		; start vector, followed by header data applied by rgbfix.exe
	nop
	jp	start

SECTION "Main",ROM0[$150]		; code starts here

start:
	di					; disable interrupts
	ld	sp,$E000			; setup stack

.wait_vbl					; wait for vblank to properly disable lcd
	ld	a,[$FF44]	
	cp	$90
	jr	nz,.wait_vbl

.exec
    ld hl, src
    ld de, dest
    call decompress

.the_end
	printPC "Cycle print point: "
	halt					; save battery
;	nop					    ; nop after halt is mandatory but rgbasm takes care of it :)
	jr	.the_end			; endless loop

    INCLUDE "decompress.asm"

SECTION "Compressed Src", ROM0[$200]

src:
	INCBIN "packed.wyv"

SECTION "Decompress Dest", WRAM0[$c000]
dest:
