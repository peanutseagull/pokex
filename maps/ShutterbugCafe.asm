	object_const_def
	
ShutterbugCafe_MapScripts:
	def_scene_scripts
	
	def_callbacks
	
ShutterbugCafePreschoolermScript:
	jumptext ShutterbugCafePreschoolermText
	
ShutterbugCafeBackpackerScript:
	jumptextfaceplayer ShutterbugCafeBackpackerText
	
ShutterbugCafeWaiterScript:
	jumptextfaceplayer ShutterbugCafeWaiterText
	
ShutterbugCafeWaiterText:
	text "Our customers"
	line "just love to take"
	cont "photos,"
	
	para "and to have their"
	line "photos taken, as"
	cont "well."
	
	para "It's such a"
	line "lovely community."
	done
	
ShutterbugCafeBackpackerText:
	text "When a photog"
	line "like me looks at"
	cont "you, I think…"
	
	para "You've never"
	line "picked up a"
	cont "camera before,"
	cont "have you?"
	
	para "Am I right?"
	
	para "Get it together!"
	
	para "What! You haven't"
	line "heard the term"
	cont "photog before?"
	
	para "Photographer!"
	line "Jeesh! Some of"
	cont "these kids really"
	cont "live under a"
	cont "rock!"
	done
	
ShutterbugCafePreschoolermText:
	text "I'm gonna make my"
	line "own cameras"
	cont "someday--"
	
	para "just you wait and"
	line "see!"
	
	para "I know everything"
	line "there is to know!"
	done
	
ShutterbugCafe_MapEvents:
	db 0, 0 ; filler
	
	def_warp_events
	warp_event  6,  7, LUMIOSE_SOUTHWEST, 3
	warp_event  7,  7, LUMIOSE_SOUTHWEST, 3
	
	def_coord_events
	
	def_bg_events
	
	def_object_events
	object_event  2,  2, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ShutterbugCafePreschoolermScript, -1
	object_event  4,  1, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ShutterbugCafeBackpackerScript, -1
	object_event  8,  4, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ShutterbugCafeWaiterScript, -1
	; object_event  3,  6, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ShutterbugCafeRangerScript, -1