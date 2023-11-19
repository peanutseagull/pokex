	object_const_def
	const TREVORSHOUSE_POKEFAN_M
	
TrevorsHouse_MapScripts:
	def_scene_scripts
	
	def_callbacks
	
TrevorsDadScript:
	jumptextfaceplayer TrevorsDadText
	
TrevorsDadText:
	text "My son Trevor has"
	line "gone off on a"
	cont "#MON journey."
	
	para "He's so shy..."
	
	para "I hope going away"
	line "might help him"
	cont "open up a bit."
	done
	
TrevorsHouse_MapEvents:
	db 0, 0 ; filler
	
	def_warp_events
	warp_event  2,  7, AQUACORDE_TOWN, 3
	warp_event  3,  7, AQUACORDE_TOWN, 3
	
	def_coord_events
	
	def_bg_events
	
	def_object_events
	object_event  2,  3, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, TrevorsDadScript, -1