	object_const_def
	
LumioseSouthOfficeUpstairs1_MapScripts:
	def_scene_scripts
	
	def_callbacks
	
LumioseSouthOffice1BeautyScript:
	faceplayer
	opentext
	writetext LumioseSouthOffice1BeautyText1
	yesorno
	iffalse .false
	writetext LumioseSouthOffice1BeautyCorrect
	waitbutton
	closetext
	end
	
.false
	writetext LumioseSouthOffice1BeautyFalse
	waitbutton
	closetext
	end
	
LumioseSouthOffice1BeautyText1:
	text "The spelling of"
	line "VERNAL is V-E-R-"
	cont "N-A-L, right?"
	done
	
LumioseSouthOffice1BeautyCorrect:
	text "I was right!"
	line "Thank you!"
	
	para "Spelling really"
	line "isn't my strong"
	cont "suit."
	done
	
LumioseSouthOffice1BeautyFalse:
	text "Huh? Did I"
	line "misspell them?"
	done
	
LumioseSouthOffice1FisherScript:
	jumptextfaceplayer LumioseSouthOffice1FisherText
	
LumioseSouthOffice1FisherText:
	text "I clean garbage"
	line "cans across KALOS."
	
	para "You'd be shocked"
	line "at what people"
	cont "throw out!"
	
	para "Even perfectly"
	line "nice clothes!"
	
	para "All in the pursuit"
	line "of fashion, I"
	cont "guess."
	
	para "It's tough work,"
	line "but I make it"
	cont "work."
	done
	
LumioseSouthOffice1LassScript:
	jumptextfaceplayer LumioseSouthOffice1LassText
	
LumioseSouthOffice1LassText:
	text "Taking a rest"
	line "to do our best!"
	cont "It's important!"
	done
	
LumioseSouthOffice1CooltrainermScript:
	jumptextfaceplayer LumioseSouthOffice1CooltrainermText
	
LumioseSouthOffice1CooltrainermText:
	text "People rest at"
	line "night." 
	
	para "So I just loaf"
	line "around at night."
	done
	
LumioseSouthOfficeUpstairs1_MapEvents:
	db 0, 0 ; filler
	
	def_warp_events
	warp_event  7,  0, LUMIOSE_SOUTH_OFFICE_GROUND_1, 3
	
	def_coord_events
	
	def_bg_events
	
	def_object_events
	object_event  0,  5, SPRITE_BEAUTY, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, LumioseSouthOffice1BeautyScript, -1
	object_event  4,  1, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, LumioseSouthOffice1FisherScript, -1
	object_event  2,  7, SPRITE_LASS, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, LumioseSouthOffice1LassScript, -1
	object_event  6,  7, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, LumioseSouthOffice1CooltrainermScript, -1