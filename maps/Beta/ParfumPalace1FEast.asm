	object_const_def
	
ParfumPalace1FEast_MapScripts:
	def_scene_scripts
	
	def_callbacks
	
ParfumPalace1FEastMinstrelScript:
	jumptextfaceplayer ParfumPalace1FEastMinstrelText
	
ParfumPalace1FEastMinstrelText:
	text "I am a travelling"
	line "minstrel,"
	
	para "wandering the"
	line "world. Please"
	cont "listen to my"
	cont "song."
	
	para "The KALOS region,"
	line "now upheld as"
	cont "fair,"
	
	para "from ancient days"
	line "an ugly past doth"
	cont "bear."
	
	para "The woes of war"
	line "did knock on"
	cont "every door,"
	
	para "till' man nor"
	line "#MON could"
	cont "take no more,"
	
	para "Three thousand"
	line "years ago, upon"
	cont "this shore."
	done
	
ParfumPalace1FEast_MapEvents:
	db 0, 0 ; filler
	
	def_warp_events
	warp_event 19,  3, PARFUM_PALACE_2F_EAST, 1
	warp_event  4,  0, PARFUM_PALACE_1F_ROOM_3, 1
	warp_event  5,  0, PARFUM_PALACE_1F_ROOM_3, 2
	warp_event  8,  0, PARFUM_PALACE_1F_ROOM_4, 1
	warp_event  9,  0, PARFUM_PALACE_1F_ROOM_4, 2
	
	def_coord_events
	
	def_bg_events
	
	def_object_events
	object_event  6,  1, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ParfumPalace1FEastMinstrelScript, -1