	object_const_def

AquacordeTown_MapScripts:
	def_scene_scripts

	def_callbacks

AquacordeTownSign:
	jumptext AquacordeTownSignText
	
AquacordeTownSignText:
	text "AQUACORDE TOWN"
	
	para "Water and"
	line "civilization in"
	cont "harmony."
	done
	
AquacordeTown_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3, 19, AQUACORDE_MART, 1
	warp_event 15, 29, AQUACORDE_POKECENTER_1F, 1

	def_coord_events

	def_bg_events
	bg_event  7, 25, BGEVENT_READ, AquacordeTownSign
	
	def_object_events
