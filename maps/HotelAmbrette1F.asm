	object_const_def
	
HotelAmbrette1F_MapScripts:
	def_scene_scripts
	
	def_callbacks
	
HotelAmbrette1FConciergeScript:
	jumptextfaceplayer HotelAmbrette1FConciergeText
	
HotelAmbrette1FConciergeText:
	text "Welcome to HOTEL"
	line "AMBRETTE."
	done
	
HotelAmbretteEspurrScript:
	jumptextfaceplayer HotelAmbretteEspurrText
	
HotelAmbretteEspurrText:
	text "ESPURR: Tee-hee!"
	done
	
HotelAmbretteLassScript:
	jumptextfaceplayer HotelAmbretteLassText
	; faceplayer
	; opentext
	; checkevent EVENT_GOT_TM96_NATURE_POWER
	; iftrue .AlreadyHaveNaturePower
	; writetext GetNaturePowerText
	; promptbutton
	; verbosegiveitem TM_NATURE_POWER
	; setevent EVENT_GOT_TM96_NATURE_POWER
; .AlreadyHaveNaturePower:
	; writetext GetNaturePowerAfterText
	; waitbutton
	; closetext
	; end
	
; GetNaturePowerText:
	; text "Traveling Trainer!"
	; line "Why don't you use"
	; cont "this?"
	; done
	
; GetNaturePowerAfterText:
	; text Nature Power becomes a different move depending on the place it's used. I hope it will add fun to your journey!
	
HotelAmbretteLassText:
	text "Darn, I was going"
	line "to give you a TM,"
	
	para "but it's not in"
	line "the game yet!"
	done
	
HotelAmbretteFurfrouScript:
	jumptextfaceplayer HotelAmbretteFurfrouText
	
HotelAmbretteFurfrouText:
	text "FURFROU: Ouaf!"
	done
	
HotelAmbretteBeautyScript:
	jumptextfaceplayer HotelAmbretteBeautyText
	
HotelAmbretteBeautyText:
	text "Hey, I got"
	line "something rare"
	cont "from a customer!"
	
	para "I had a chat with"
	line "the customer"
	cont "several times,"
	cont "and we hit it off!"
	done

HotelAmbrette1F_MapEvents:
	db 0, 0 ; filler
	
	def_warp_events
	warp_event  9, 11, AMBRETTE_TOWN, 4
	warp_event 10, 11, AMBRETTE_TOWN, 4
	warp_event  1,  1, HOTEL_AMBRETTE_2F, 1
	
	def_coord_events
	
	def_bg_events
	
	def_object_events
	object_event 10,  3, SPRITE_RECEPTIONIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, HotelAmbrette1FConciergeScript, -1
	object_event 14,  6, SPRITE_FAIRY, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, HotelAmbretteEspurrScript, -1
	object_event 15,  9, SPRITE_LASS, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, HotelAmbretteLassScript, -1
	object_event  2,  3, SPRITE_MONSTER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, HotelAmbretteFurfrouScript, -1
	object_event  3,  8, SPRITE_BEAUTY, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, HotelAmbretteBeautyScript, -1
