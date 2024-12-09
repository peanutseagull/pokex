	object_const_def
	
ParfumPalace2FRoom2_MapScripts:
	def_scene_scripts
	
	def_callbacks
	
ParfumPalace2FRoom2MaidScript:
	jumptextfaceplayer ParfumPalace2FRoom2MaidText
	
ParfumPalace2FRoom2MaidText:
	text "Long ago, the"
	line "king and his"
	cont "#MON would enjoy"
	cont "their meals at"
	cont "this table."
	done	
	
ParfumPalace2FRoom2_MapEvents:
	db 0, 0 ; filler
	
	def_warp_events
	warp_event  4, 11, PARFUM_PALACE_2F, 7
	warp_event  5, 11, PARFUM_PALACE_2F, 8
	
	def_coord_events
	
	def_bg_events
	
	def_object_events
	object_event  2,  7, SPRITE_LINK_RECEPTIONIST, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ParfumPalace2FRoom2MaidScript, -1
	