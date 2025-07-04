	object_const_def
	
Route7West_MapScripts:
	def_scene_scripts
	
	def_callbacks
	
Route7WestConnectingCaveCyllageSign:
	jumptext Route7WestConnectingCaveCyllageText
	
Route7WestConnectingCaveCyllageText:
	text "CONNECTING CAVE:"
	line "This is the"
	cont "shortcut to"
	cont "CYLLAGE CITY."
	done
	
Route7WestConnectingCaveAmbretteSign:
	jumptext Route7WestConnectingCaveAmbretteText
	
Route7WestConnectingCaveAmbretteText:
	text "CONNECTING CAVE:"
	line "This is the"
	cont "shortcut to"
	cont "AMBRETTE TOWN."
	done
	
Route7TinyMushroom:
	itemball TINYMUSHROOM
	
Route7Silverpowder:
	itemball SILVERPOWDER
	
Route7West_MapEvents:
	db 0, 0 ; filler
	
	def_warp_events
	warp_event 12, 11, CONNECTING_CAVE, 1
	warp_event  4, 29, CONNECTING_CAVE, 2
	
	def_coord_events
	
	def_bg_events
	bg_event 14, 12, BGEVENT_READ, Route7WestConnectingCaveCyllageSign
	bg_event  6, 30, BGEVENT_READ, Route7WestConnectingCaveAmbretteSign
	
	def_object_events
	object_event  4, 43, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Route7TinyMushroom, EVENT_ROUTE_7_TINY_MUSHROOM
	object_event  4, 23, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Route7Silverpowder, EVENT_ROUTE_7_SILVERPOWDER