	object_const_def
	
SantaluneHouse2_MapScripts:
	def_scene_scripts
	
	def_callbacks
	
SantaluneHouse2CooltrainerMScript:
	jumptextfaceplayer SantaluneHouse2CooltrainerMText
	
SantaluneHouse2CooltrainerMText:
	text "The GYM leader in"
	line "this city is"
	cont "VIOLA!"
	
	para "She's a fantastic"
	line "photographer!"
	
	para "I'll have to go"
	line "find some BUG"
	cont "#MON if I want"
	
	para "to have my"
	line "pictures displayed"
	cont "in the GYM!"
	done
	
SantaluneHouse2CooltrainerFScript:
	jumptextfaceplayer SantaluneHouse2CooltrainerFText
	
SantaluneHouse2CooltrainerFText:
	text "There are so many"
	line "great GYM badges"
	cont "in KALOS!"
	done
	
SantaluneHouse2_MapEvents:
	db 0, 0 ; filler
	
	def_warp_events
	warp_event  2,  7, SANTALUNE_CITY, 6
	warp_event  3,  7, SANTALUNE_CITY, 6
	
	def_coord_events
	
	def_bg_events
	
	def_object_events
	object_event  1,  4, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SantaluneHouse2CooltrainerMScript, -1
	object_event  5,  3, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SantaluneHouse2CooltrainerFScript, -1