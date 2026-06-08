	object_const_def
	
CyllageHouse2_MapScripts:
	def_scene_scripts
	
	def_callbacks
	
CyllageHouse2ScientistFScript:
	jumptextfaceplayer CyllageHouse2ScientistFText
	
CyllageHouse2ScientistFText:
	text "Everyone deposits"
	line "#MON into the"
	cont "GTS system, you"
	cont "see."
	
	para "You can search"
	line "from among them"
	cont "for #MON you"
	cont "want."
	done
	
CyllageHouse2YoungsterScript:
	jumptextfaceplayer CyllageHouse2YoungsterText
	
CyllageHouse2YoungsterText:
	text "Hey, listen to"
	line "this!"
	
	para "Even if you have"
	line "never seen some"
	cont "#MON or another"
	cont "yourself,"
	
	para "as long as you've"
	line "at least heard its"
	cont "name…"
	
	para "You can just input"
	line "that name in the"
	cont "GTS to find the"
	cont "#MON that way!"
	
	para "Awesome, eh?"
	done
	
CyllageHouse2EspurrScript:
	jumptextfaceplayer CyllageHouse2EspurrText
	
CyllageHouse2EspurrText:
	text "ESPURR: Grrrwahn!"
	done
	
CyllageHouse2PokefanmScript:
	jumptextfaceplayer CyllageHouse2PokefanmText
	
CyllageHouse2PokefanmText:
	text "The Global Trade"
	line "Station, or in"
	cont "short, the GTS!"
	
	para "With it, you can"
	line "use an Internet"
	cont "connection to"
	cont "trade #MON with"
	cont "Trainers around"
	cont "the world!"
	done
	
CyllageHouse2_MapEvents:
	db 0, 0 ; filler
	
	def_warp_events
	warp_event  2,  7, CYLLAGE_CITY, 4
	warp_event  3,  7, CYLLAGE_CITY, 4
	
	def_coord_events
	
	def_bg_events
	
	def_object_events
	object_event  2,  2, SPRITE_JANINE, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CyllageHouse2ScientistFScript, -1
	object_event  7,  2, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CyllageHouse2YoungsterScript, -1
	object_event  6,  3, SPRITE_MONSTER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 2, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CyllageHouse2EspurrScript, -1
	object_event  2,  4, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CyllageHouse2PokefanmScript, -1