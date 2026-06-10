	object_const_def
	
GeosengeHouse1_MapScripts:
	def_scene_scripts
	
	def_callbacks
	
GeosengeHouse1EverstoneLadyScript:
	faceplayer
	opentext
	checkevent EVENT_GEOSENGE_TOWN_EVERSTONE
	iftrue .AlreadyHaveEverstone
	writetext GiveEverstoneText
	promptbutton
	verbosegiveitem EVERSTONE
	setevent EVENT_GEOSENGE_TOWN_EVERSTONE
.AlreadyHaveEverstone:
	writetext AfterEverstoneText
	waitbutton
	closetext
	end	
	
GiveEverstoneText:
	text "For some reason,"
	line "a #MON will"
	cont "not evolve when"
	cont "it is holding an"
	cont "EVERSTONE."
	
	para "I have quite a few"
	line "of them, so I'll"
	cont "share one with you"
	cont "as well."
	done
	
AfterEverstoneText:
	text "Could #MON"
	line "and stones have"
	cont "some kind of"
	cont "connection?"
	
	para "Think about it."
	line "Some #MON even"
	cont "evolve with a FIRE"
	cont "STONE or WATER"
	cont "STONE."
	done
	
GeosengeHouse1CooltrainermScript:
	jumptextfaceplayer GeosengeHouse1CooltrainermText
	
GeosengeHouse1CooltrainermText:
	text "I hear the history"
	line "of this area goes"
	cont "back to ancient"
	cont "times."
	
	para "You can probably"
	line "get the details"
	cont "from the guide in"
	cont "the hotel."
	done
	
GeosengeHouse1_MapEvents:
	db 0, 0 ; filler
	
	def_warp_events
	warp_event  2,  7, GEOSENGE_TOWN, 3
	warp_event  3,  7, GEOSENGE_TOWN, 3
	
	def_coord_events
	
	def_bg_events
	
	def_object_events
	object_event  1,  2, SPRITE_TEACHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GeosengeHouse1EverstoneLadyScript, -1
	object_event  6,  1, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GeosengeHouse1CooltrainermScript, -1