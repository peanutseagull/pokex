	object_const_def
	
ParfumPalace2FRoom1_MapScripts:
	def_scene_scripts
	
	def_callbacks
	
ParfumPalace2FRoom1GentlemanScript:
	jumptextfaceplayer ParfumPalace2FRoom1GentlemanText
	
ParfumPalace2FRoom1GentlemanText:
	text "I heard that a"
	line "forbidden tome"
	cont "once existed that"
	cont "contained the"
	cont "secret to bring"
	cont "#MON back to"
	cont "life."
	
	para "It's probably"
	line "just a rumour,"
	cont "though."
	
	para "We've certianly"
	line "got nothing of"
	cont "the sort in our"
	cont "library!"
	done
	
ParfumPalace2FRoom1AmuletCoin:
	itemball AMULET_COIN
	
ParfumPalace2FRoom1_MapEvents:
	db 0, 0 ; filler
	
	def_warp_events
	warp_event  4, 11, PARFUM_PALACE_2F, 5
	warp_event  5, 11, PARFUM_PALACE_2F, 6
	
	def_coord_events
	
	def_bg_events
	
	def_object_events
	object_event  2,  9, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ParfumPalace2FRoom1GentlemanScript, -1
	object_event  4,  1, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, ParfumPalace2FRoom1AmuletCoin, EVENT_GOT_AMULET_COIN