	object_const_def
	const ROUTE2GATE_OFFICER

Route2Gate_MapScripts:
	def_scene_scripts

	def_callbacks

Route2GateOfficerScript:
	jumptextfaceplayer Route2GateOfficerText

Route2GateOfficerText:
	text "SANTALUNE FOREST"
	line "is up ahead."
	
	para "Be careful!"
	done

Route2Gate_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4,  7, ROUTE_2, 1
	warp_event  5,  7, ROUTE_2, 1
	warp_event  4,  0, SANTALUNE_FOREST, 2
	warp_event  5,  0, SANTALUNE_FOREST, 3

	def_coord_events

	def_bg_events

	def_object_events
	object_event  0,  4, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, Route2GateOfficerScript, -1
