	object_const_def
	
BerryFieldsHouse_MapScripts:
	def_scene_scripts
	
	def_callbacks
	
BerryFieldsHouseManScript:
	jumptextfaceplayer BerryFieldsHouseManText
	
BerryFieldsHouseGirlScript:
	jumptextfaceplayer BerryFieldsHouseGirlText
	
BerryFieldsHouseGirlText:
	text "The composter is"
	line "pretty amazing,"
	cont "right?"
	done
	
BerryFieldsHouseManText:
	text "Oh, welcome,"
	line "glad you stopped"
	cont "by!"
	
	para "The good thing"
	line "about berries is-"
	
	para "Coming back every"
	line "day to harvest"
	cont "gives you tons"
	cont "more berries!"
	
	para "That's the beauty"
	line "of field work,"
	
	para "it's the fruits"
	line "of your labour."
	done
	
BerryFieldsHouse_MapEvents:
	db 0, 0 ; filler
	
	def_warp_events
	warp_event 2, 7, BERRY_FIELDS, 1
	warp_event 3, 7, BERRY_FIELDS, 1
	
	def_coord_events
	
	def_bg_events
	
	def_object_events
	object_event  2,  3, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, BerryFieldsHouseManScript, -1
	object_event  6,  3, SPRITE_TWIN, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, BerryFieldsHouseGirlScript, -1