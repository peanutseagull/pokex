	object_const_def
	
SantaluneBoutique_MapScripts:
	def_scene_scripts
	
	def_callbacks
	
SantaluneBoutiqueWorkerScript:
	jumptextfaceplayer SantaluneBoutiqueWorkerText
	
SantaluneBoutiqueManScript:
	jumptextfaceplayer SantaluneBoutiqueManText
	
SantaluneBoutiqueBoyScript:
	jumptextfaceplayer SantaluneBoutiqueBoyText
	
SantaluneBoutiqueMerch:
	jumptext SantaluneBoutiqueMerchText
	
SantaluneBoutiqueMerchText:
	text "Accessories of"
	line "every colour line"
	cont "the shelves!"
	done
	
SantaluneBoutiqueBoyText:
	text "This shop has tons"
	line "of hats and"
	cont "accessories."
	
	para "Should I get a"
	line "hat? I dunno…"
	done
	
SantaluneBoutiqueManText:
	text "You know, the"
	line "inventory of shops"
	cont "like this one can"
	cont "be completely"
	cont "different from one"
	cont "store to another."
	done
	
SantaluneBoutiqueWorkerText:
	text "Hello! Welcome"
	line "to the SANTALUNE"
	cont "BOUTIQUE."
	
	para "Feel free to have"
	line "a look around."
	
	para "You can try on"
	line "items in the"
	cont "fitting room."
	done
	
SantaluneBoutique_MapEvents:
	db 0, 0 ; filler
	
	def_warp_events
	warp_event  7,  5, SANTALUNE_CITY, 9
	warp_event  8,  5, SANTALUNE_CITY, 9
	
	def_coord_events
	
	def_bg_events
	bg_event  6,  0, BGEVENT_READ, SantaluneBoutiqueMerch
	bg_event  7,  0, BGEVENT_READ, SantaluneBoutiqueMerch
	bg_event  8,  0, BGEVENT_READ, SantaluneBoutiqueMerch
	bg_event  9,  0, BGEVENT_READ, SantaluneBoutiqueMerch
	
	def_object_events
	object_event  9,  3, SPRITE_LINK_RECEPTIONIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SantaluneBoutiqueWorkerScript, -1
	object_event 13,  5, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SantaluneBoutiqueManScript, -1
	object_event  3,  2, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SantaluneBoutiqueBoyScript, -1