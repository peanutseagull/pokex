	object_const_def
	
ParfumPalace2FRoom3_MapScripts:
	def_scene_scripts
	
	def_callbacks
	
ParfumPalace2FRoom3MaidScript:
	jumptextfaceplayer ParfumPalace2FRoom3MaidText
	
ParfumPalace2FRoom3MaidText:
	text "It's said that"
	line "kings of ancient"
	cont "times would use"
	cont "#MON as their"
	cont "sentries!"
	
	para "A #MON with the"
	line "INSOMNIA ability"
	cont "would be good"
	cont "since they never"
	cont "have to sleep!"
	done
	
ParfumPalace2FRoom3_MapEvents:
	db 0, 0 ; filler
	
	def_warp_events
	warp_event  4, 11, PARFUM_PALACE_2F, 9
	warp_event  5, 11, PARFUM_PALACE_2F, 10
	
	def_coord_events
	
	def_bg_events
	
	def_object_events
	object_event  2,  7, SPRITE_LINK_RECEPTIONIST, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ParfumPalace2FRoom3MaidScript, -1