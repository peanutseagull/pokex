	object_const_def
	const NEIGHBOURSHOUSE_POKEFAN_M
	
NeighboursHouse_MapScripts:
	def_scene_scripts
	
	def_callbacks
	
NeighboursHouseNeighbourScript:
	jumptextfaceplayer NeighboursHouseText
	
NeighboursHouseText:
	text "If the time comes,"
	line "I hope I can give"
	cont "my son a #MON."
	
	para "Going on a #MON"
	line "journey really"
	cont "helps a young man"
	
	para "to mature…"
	done
	
NeighboursHouse_MapEvents:
	db 0, 0 ; filler
	
	def_warp_events
	warp_event  2,  7, VANIVILLE_TOWN, 3
	warp_event  3,  7, VANIVILLE_TOWN, 3
	
	def_coord_events
	
	def_bg_events
	
	def_object_events
	object_event  2,  3, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, NeighboursHouseNeighbourScript, -1