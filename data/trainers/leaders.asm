; These lists determine the battle music and victory music, and whether to
; award HAPPINESS_GYMBATTLE for winning.

; Note: CHAMPION and RED are unused for battle music checks, since they are
; accounted for prior to the list check.

GymLeaders:
	db VIOLA
	db KORRINA
	db GRANT
	db RAMOS
	db OLYMPIA
	db VALERIE
	db CLEMONT
	db WULFRIC
	db WIKSTROM
	db MALVA
	db DRASNA
	db SIEBOLD
	db CHAMPION
	; db RED
; fallthrough
KantoGymLeaders:
	; db BROCK
	; db MISTY
	; db LT_SURGE
	; db ERIKA
	; db JANINE
	; db SABRINA
	; db BLAINE
	; db BLUE
	db -1
