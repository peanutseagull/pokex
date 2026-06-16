	object_const_def
	
Route10Gate_MapScripts:
	def_scene_scripts
	
	def_callbacks
	
Route10GateOfficerScript:
	jumptextfaceplayer Route10GateOfficerText
	
Route10GateOfficerText:
	text "ROUTE 10 is"
	line "through this gate."
	
	para "Stay safe out"
	line "there!"
	done
	
Route10Gate_MapEvents:
	db 0, 0 ; filler
	
	def_warp_events
	warp_event  4,  7, CYLLAGE_CITY, 14
	warp_event  5,  7, CYLLAGE_CITY, 14
	warp_event  4,  0, ROUTE_10, 1
	warp_event  5,  0, ROUTE_10, 2
	
	def_coord_events
	
	def_bg_events
	
	def_object_events
	object_event  0,  4, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, Route10GateOfficerScript, -1
	