	db HAWLUCHA

	db  78,  92,  75, 118,  74,  63
	;   hp  atk  def  spd  sat  sdf

	db FIGHTING, FLYING ; type
	db 100 ; catch rate
	db 175 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/hawlucha/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_FLYING, EGG_HUMANSHAPE ; egg groups

	; tm/hm learnset
	tmhm HEADBUTT
	; end
