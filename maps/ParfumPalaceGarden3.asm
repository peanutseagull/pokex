	object_const_def
	
ParfumPalaceGarden3_MapScripts:
	def_scene_scripts
	
	def_callbacks
	
ParfumPalaceGarden3Antidote:
	itemball ANTIDOTE
	
ParfumPalaceGarden3GardenerScript:
	jumptextfaceplayer ParfumPalaceGarden3GardenerText
	
ParfumPalaceGarden3GardenerText:
	text "I heard that an"
	line "ancient king made"
	cont "rules about when"
	cont "to view this"
	cont "garden."
	
	para "Didn't he have"
	line "anything better"
	cont "to make rules"
	cont "about?"
	done
	
ParfumPalaceGarden3_MapEvents:
	db 0, 0 ; filler
	
	def_warp_events
	
	def_coord_events
	
	def_bg_events
	
	def_object_events
	object_event 103,  5, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, ParfumPalaceGarden3Antidote, EVENT_PARFUM_PALACE_GARDEN_3_ANTIDOTE
	object_event 126,  0, SPRITE_OFFICER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ParfumPalaceGarden3GardenerScript, -1