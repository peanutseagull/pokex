	object_const_def

FriseurFurfrou_MapScripts:
	def_scene_scripts

	def_callbacks
	
; NO idea how to implement this lmao
	
FriseurFurfrouShopkeeperScript:
	jumptextfaceplayer FriseurFurfrouShopkeeperText
	
FriseurFurfrouShopkeeperText:
	text "Bienvenue to"
	line "FRISEUR FURFROU!"
	
	para "Here we groom"
	line "gorgeous FURFROU"
	cont "into fabulous"
	cont "styles!"
	done
	
FriseurFurfrouMadameScript:
	faceplayer
	opentext
	writetext FriseurFurfrouMadameIntroText
	yesorno
	iffalse .SaidNo
	special BillsGrandfather
	iffalse .SaidNo
	ifnotequal FURFROU, .WrongPokemon
	writetext FriseurFurfrouMadameFurfrouText
	waitbutton
	closetext
	end
	
.SaidNo:
	writetext FriseurFurfrouMadameSaidNoText
	waitbutton
	closetext
	end

.WrongPokemon:
	writetext FriseurFurfrouMadameWrongMonText
	waitbutton
	closetext
	end
	
FriseurFurfrouBeautyScript:
	jumptextfaceplayer FriseurFurfrouBeautyText
	
FriseurFurfrouLassScript:
	jumptextfaceplayer FriseurFurfrouLassText
	
FriseurFurfrouFurfrouScript:
	faceplayer
	opentext
	writetext FriseurFurfrouFurfrouText
	yesorno ; Fou-bouaf! or Ouaf-oua...
	iftrue .Yes
	writetext FriseurFurfrouFurfrouNoText
	waitbutton
	closetext
	end
	
.Yes:
	writetext FriseurFurfrouFurfrouYesText
	waitbutton
	closetext
	end
	
FriseurFurfrouFurfrouText:
	text "FURFROU: Bouaf?"
	done
	
FriseurFurfrouFurfrouYesText:
	text "Ouaf-ouaf-ouaf!"
	done
	
FriseurFurfrouFurfrouNoText:
	text "F-fou…fouaf…"
	done
	
FriseurFurfrouLassText:
	text "Hey, hey, guess"
	line "what!"
	
	para "My FURFUR and I"
	line "are TOTALLY in"
	cont "sync with each"
	cont "other!"
	
	para "We get up at the"
	line "same time, eat at"
	cont "the same time,"
	cont "and go to bed at"
	cont "the same time!"
	done
	
FriseurFurfrouBeautyText:
	text "A FURFROU trim,"
	line "hmm?"
	
	para "It will grow out"
	line "in about five"
	cont "days."
	
	para "Their pelts do"
	line "grow quickly,"
	cont "don't they?"
	done
	
FriseurFurfrouMadameWrongMonText:
	text "Darling, that's"
	line "not a FURFROU!"
	
	para "Come visit again"
	line "and show me a"
	cont "fabulous FURFROU!"
	done
	
FriseurFurfrouMadameSaidNoText:
	text "Such a shame,"
	line "darling."
	
	para "Come visit us"
	line "again soon, yes?"
	done
	
FriseurFurfrouMadameFurfrouText:
	text "Magnificent,"
	line "darling!"
	
	para "Your FURFROU is"
	line "a fine specimen."
	
	para "Let us give it a"
	line "trim sometime,"
	cont "darling, yes?"
	
	para "A bientot!" ; À bientôt!
	done
	
FriseurFurfrouMadameIntroText:
	text "Bonjour, darling!"
	line "I am the owner"
	cont "and head stylist"
	cont "here at FRISEUR"
	cont "FURFROU!"
	
	para "I absolutely"
	line "ADORE fabulous"
	cont "FURFROU!"
	
	para "Do you have a"
	line "gorgeous FURFROU?"
	cont "Oui ou non?"
	done

FriseurFurfrou_MapEvents:	
	db 0, 0 ; filler
	
	def_warp_events
	warp_event  5,  7, VERNAL_AVENUE, 11
	warp_event  6,  7, VERNAL_AVENUE, 12

	def_coord_events

	def_bg_events

	def_object_events
	object_event  5,  2, SPRITE_LINK_RECEPTIONIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, FriseurFurfrouShopkeeperScript, -1
	object_event  7,  4, SPRITE_ERIKA, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, FriseurFurfrouMadameScript, -1
	object_event  2,  6, SPRITE_BEAUTY, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, FriseurFurfrouBeautyScript, -1
	object_event  9,  6, SPRITE_LASS, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, FriseurFurfrouLassScript, -1
	object_event 10,  6, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, FriseurFurfrouFurfrouScript, -1