	object_const_def
	const SHAUNASHOUSE_POKEFAN_F
	
ShaunasHouse_MapScripts:
	def_scene_scripts
	
	def_callbacks
	
ShaunasMomScript:
	jumptextfaceplayer ShaunasMomText
	
ShaunasMomText:
	text "Have you met my"
	line "daughter?"
	
	para "She's so excited"
	line "to be a #MON"
	cont "trainer..."
	done
	
ShaunasHouse_MapEvents:
	db 0, 0 ; filler
	
	def_warp_events
	warp_event  2,  7, AQUACORDE_TOWN, 4
	warp_event  3,  7, AQUACORDE_TOWN, 4
	
	def_coord_events
	
	def_bg_events
	
	def_object_events
	object_event  5,  3, SPRITE_POKEFAN_F, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, ShaunasMomScript, -1