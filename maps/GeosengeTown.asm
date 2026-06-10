	object_const_def
	
GeosengeTown_MapScripts:
	def_scene_scripts
	
	def_callbacks
	
GeosengeTownBeautyScript:
	jumptextfaceplayer GeosengeTownBeautyText
	
GeosengeTownBeautyText:
	text "You're a pretty"
	line "sophisticated"
	cont "traveller if you"
	line "are here to check"
	cont "out the monument."
	done
	
GeosengeTownRockerScript:
	jumptextfaceplayer GeosengeTownRockerText
	
GeosengeTownRockerText:
	text "Nothing but rocks"
	line "here, you say?"
	
	para "Non, non! You"
	line "don't get it."
	
	para "This town has"
	line "nothing else, so"
	cont "it's obvious how"
	cont "amazing the stones"
	cont "are!"
	done
	
GeosengeTownCooltrainerFInTheWay:
	jumptext GeosengeTownCooltrainerFInTheWayText
	
GeosengeTownCooltrainerFInTheWayText:
	text "And in conclusion…"
	
	para "The stones on"
	line "ROUTE 10 are lined"
	cont "up so they connect"
	cont "to GEOSENGE TOWN."
	
	para "CYLLAGE CITY's Gym"
	line "Leader, GRANT, is"
	cont "researching them,"
	cont "but much about"
	cont "these stones"
	cont "remains unknown."
	done
	
GeosengeTownFisherInTheWay1:
	jumptextfaceplayer GeosengeTownFisherInTheWay1Text
	
GeosengeTownFisherInTheWay1Text:
	text "So in the end"
	line "nobody really"
	cont "knows…"
	
	para "The world is full"
	line "of things like"
	cont "that."
	done
	
GeosengeTownFisherInTheWay2:
	jumptextfaceplayer GeosengeTownFisherInTheWay2Text
	
GeosengeTownFisherInTheWay2Text:
	text "This has to be the"
	line "workd of extra-"
	cont "terrestrials!"
	
	para "There's no other"
	line "explanation!"
	done
	
GeosengeTownFisherInTheWay3:
	jumptextfaceplayer GeosengeTownFisherInTheWay3Text
	
GeosengeTownFisherInTheWay3Text:
	text "Arranging so many"
	line "stones like that"
	cont "is impressive."
	
	para "People 3,000 years"
	line "ago were amazing."
	done
	
GeosengeTownPokecenterSign:
	jumpstd PokecenterSignScript

GeosengeTownMartSign:
	jumpstd MartSignScript
	
GeosengeTownSign:
	jumptext GeosengeTownSignText
	
GeosengeTownSignText:
	text "GEOSENGE TOWN:"
	line "Quiet stones speak"
	cont "volumes."
	done
	
GeosengeTownRocksSign:
	jumptext GeosengeTownRocksSignText
	
GeosengeTownRocksSignText:
	text "These ancient"
	line "stones are said to"
	cont "emit a mysterious"
	cont "power."
	done
	
GeosengeTownSuspiciousRocks:
	jumptext GeosengeTownSuspiciousRocksText

GeosengeTownSuspiciousRocksText:
	text "It's an ancient"
	line "artifact?"
	done
	
GeosengeTownSoftSand:
	itemball SOFT_SAND
	
; GeosengeTownTimerBall:
	; itemball TIMER_BALL
	
GeosengeTown_MapEvents:
	db 0, 0 ; filler
	
	def_warp_events
	warp_event 15, 35, GEOSENGE_POKECENTER_1F, 1
	warp_event 11, 21, GEOSENGE_MART, 2
	warp_event  9, 29, GEOSENGE_HOUSE_1, 1
	warp_event 17, 11, GEOSENGE_HOUSE_2, 1
	warp_event 21, 35, HOTEL_MARINE_SNOW_1F, 1
	
	def_coord_events
	
	def_bg_events
	bg_event 16, 35, BGEVENT_READ, GeosengeTownPokecenterSign
	bg_event 12, 21, BGEVENT_READ, GeosengeTownMartSign
	bg_event 17, 27, BGEVENT_READ, GeosengeTownSign
	bg_event 19, 21, BGEVENT_READ, GeosengeTownRocksSign
	bg_event  1,  1, BGEVENT_READ, GeosengeTownSuspiciousRocks
	bg_event  2,  1, BGEVENT_READ, GeosengeTownSuspiciousRocks
	
	def_object_events
	object_event  4, 39, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, GeosengeTownSoftSand, EVENT_GEOSENGE_TOWN_SOFT_SAND
	; object_event 23, 31, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, GeosengeTownTimerBall, EVENT_GEOSENGE_TOWN_TIMER_BALL
	object_event 13, 27, SPRITE_BEAUTY, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GeosengeTownBeautyScript, -1
	object_event 10, 24, SPRITE_ROCKER, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GeosengeTownRockerScript, -1
	object_event 29, 26, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, GeosengeTownCooltrainerFInTheWay, EVENT_BEAT_GRANT
	object_event 31, 25, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GeosengeTownFisherInTheWay1, EVENT_BEAT_GRANT
	object_event 31, 26, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GeosengeTownFisherInTheWay2, EVENT_BEAT_GRANT
	object_event 31, 27, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GeosengeTownFisherInTheWay3, EVENT_BEAT_GRANT