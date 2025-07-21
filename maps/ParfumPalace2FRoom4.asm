	object_const_def
	
ParfumPalace2FRoom4_MapScripts:
	def_scene_scripts
	
	def_callbacks
	
ParfumPalace2FRoom4Painting:
	jumptext ParfumPalace2FRoom4PaintingText
	
ParfumPalace2FRoom4PaintingText:
	text "A portrait of"
	line "someone on the"
	cont "wall."
	
	para "Perhaps it's the"
	line "king who built"
	cont "the palace?"
	done
	
ParfumPalace2FRoom4_MapEvents:
	db 0, 0 ; filler
	
	def_warp_events
	warp_event  4, 11, PARFUM_PALACE_2F, 11
	warp_event  5, 11, PARFUM_PALACE_2F, 12
	
	def_coord_events
	
	def_bg_events
	bg_event  4,  0, BGEVENT_READ, ParfumPalace2FRoom4Painting
	
	def_object_events
	