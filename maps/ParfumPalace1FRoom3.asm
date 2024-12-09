	object_const_def
	
ParfumPalace1FRoom3_MapScripts:
	def_scene_scripts
	
	def_callbacks
	
ParfumPalace1FRoom3TwinScript:
	jumptextfaceplayer ParfumPalace1FRoom3TwinText
	
ParfumPalace1FRoom3PokefanmScript:
	jumptextfaceplayer ParfumPalace1FRoom3PokefanmText
	
ParfumPalace1FRoom3PokefanmText:
	text "This room used to"
	line "be a waiting room"
	cont "for #MON before"
	cont "they were brought"
	cont "out for a battle."
	done
	
ParfumPalace1FRoom3TwinText:
	text "You mean #MON"
	line "just waited her"
	cont "calmly?"
	
	para "#MON are so"
	line "funny!"
	done
	
ParfumPalace1FRoom3_MapEvents:
	db 0, 0 ; filler
	
	def_warp_events
	warp_event  4, 11, PARFUM_PALACE_1F, 11
	warp_event  5, 11, PARFUM_PALACE_1F, 12
	
	def_coord_events
	
	def_bg_events
	
	def_object_events
	object_event  3,  4, SPRITE_TWIN, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ParfumPalace1FRoom3TwinScript, -1
	object_event  3,  5, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ParfumPalace1FRoom3PokefanmScript, -1