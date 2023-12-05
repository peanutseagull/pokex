	object_const_def
	
Route5LumioseGate_MapScripts:
	def_scene_scripts
	
	def_callbacks
	
Route5LumioseGateReceptionistScript:
	jumptextfaceplayer Route5LumioseGateReceptionistText
	
Route5LumioseGateReceptionistText:
	text "Right through this"
	line "gate is ROUTE 5,"
	cont "Versant Road."
	
	para "It leads to both"
	line "Parfum Palace and"
	cont "CAMPHRIER TOWN."
	done
	
Route5LumioseGateBeautyScript:
	jumptextfaceplayer Route5LumioseGateBeautyText
	
Route5LumioseGateBeautyText:
	text "Sometimes it's"
	line "nice to take the"
	cont "long way!"
	
	para "You'll never know"
	line "what you'll find."
	done
	
Route5LumioseGateLassScript:
	jumptextfaceplayer Route5LumioseGateLassText
	
Route5LumioseGateLassText:
	text "If you lose your"
	line "way in LUMIOSE,"
	
	para "I recommend"
	line "entering a shop to"
	cont "get your bearings."
	done
	
Route5LumioseGate_MapEvents:
	db 0, 0 ; filler
	
	def_warp_events
	warp_event  6,  0, LUMIOSE_SOUTHEAST, 11
	warp_event  7,  0, LUMIOSE_SOUTHEAST, 12
	; warp_event  0,  4, ROUTE_5, 1
	; warp_event  0,  5, ROUTE_5, 2
	
	def_coord_events
	
	def_bg_events
	
	def_object_events
	object_event  4,  2, SPRITE_RECEPTIONIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route5LumioseGateReceptionistScript, -1
	object_event  1,  7, SPRITE_BEAUTY, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route5LumioseGateBeautyScript, -1
	object_event  5,  6, SPRITE_LASS, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route5LumioseGateLassScript, -1