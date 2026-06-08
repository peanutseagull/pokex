	object_const_def
	
CyllageBoutique_MapScripts:
	def_scene_scripts
	
	def_callbacks
	
CyllageBoutiqueMerch:
	jumptext CyllageBoutiqueMerchText
	
CyllageBoutiqueMerchText:
	text "Colourful clothes"
	line "line the shelves."
	done
	
CyllageBoutiqueWorkerScript:
	jumptextfaceplayer CyllageBoutiqueWorkerText

CyllageBoutiqueWorkerText:
	text "Hello! Welcome"
	line "to the CYLLAGE"
	cont "BOUTIQUE."
	
	para "Feel free to have"
	line "a look around."
	
	para "You can try on"
	line "items in the"
	cont "fitting room."
	done
	
CyllageBoutiqueBackpackerScript:
	jumptextfaceplayer CyllageBoutiqueBackpackerText
	
CyllageBoutiqueBackpackerText:
	text "If you're looking"
	line "for different"
	cont "T-shirts,"
	
	para "this shop is"
	line "definitely the"
	cont "place to be."
	done
	
CyllageBoutiqueLassScript:
	jumptextfaceplayer CyllageBoutiqueLassText
	
CyllageBoutiqueLassText:
	text "Hmm, feminine and"
	line "elegant?"
	
	para "Or youthful and"
	line "energetic?"
	done
	
CyllageBoutiqueBeautyScript:
	jumptextfaceplayer CyllageBoutiqueBeautyText
	
CyllageBoutiqueBeautyText:
	text "Changing something"
	line "as simple as your"
	cont "hat can totally"
	cont "change your look!"
	done
	
CyllageBoutiquePunkGuyScript:
	jumptextfaceplayer CyllageBoutiquePunkGuyText
	
CyllageBoutiquePunkGuyText:
	text "Hey! Didja know"
	line "the items on the"
	cont "mannequins change"
	cont "by the day?"
	
	para "I noticed 'cause"
	line "I'm here every"
	cont "single day to"
	cont "check 'em!"
	done
	
CyllageBoutique_MapEvents:
	db 0, 0 ; filler
	
	def_warp_events
	warp_event  7,  5, CYLLAGE_CITY, 9
	warp_event  8,  5, CYLLAGE_CITY, 9
	
	def_coord_events
	
	def_bg_events
	bg_event  6,  0, BGEVENT_READ, CyllageBoutiqueMerch
	bg_event  7,  0, BGEVENT_READ, CyllageBoutiqueMerch
	bg_event  8,  0, BGEVENT_READ, CyllageBoutiqueMerch
	bg_event  9,  0, BGEVENT_READ, CyllageBoutiqueMerch
	
	def_object_events
	object_event  9,  3, SPRITE_LINK_RECEPTIONIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CyllageBoutiqueWorkerScript, -1
	object_event  6,  2, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CyllageBoutiqueBackpackerScript, -1
	object_event  4,  4, SPRITE_LASS, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CyllageBoutiqueLassScript, -1
	object_event 13,  5, SPRITE_BEAUTY, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 2, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CyllageBoutiqueBeautyScript, -1
	object_event 14,  4, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CyllageBoutiquePunkGuyScript, -1
