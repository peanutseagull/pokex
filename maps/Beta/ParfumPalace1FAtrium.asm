	object_const_def
	
ParfumPalace1FAtrium_MapScripts:
	def_scene_scripts
	
	def_callbacks
	
ParfumPalace1FAtriumGentlemanScript:
	jumptextfaceplayer ParfumPalace1FAtriumGentlemanText
	
ParfumPalace1FAtriumGentlemanText:
	text "Past this door is"
	line "the pride and joy"
	cont "of the palace--"
	
	para "the too-vast"
	line "courtyard."
	
	para "You can see the"
	line "whole garden from"
	cont "the balcony on"
	cont "the second floor."
	done
	
ParfumPalace1FAtrium_MapEvents:
	db 0, 0 ; filler
	
	def_warp_events
	warp_event  4, 11, PARFUM_PALACE_OUTSIDE, 1
	warp_event  5, 11, PARFUM_PALACE_OUTSIDE, 1
	warp_event  4,  0, PARFUM_PALACE_GARDEN_1, 1
	warp_event  5,  0, PARFUM_PALACE_GARDEN_1, 2
	
	def_coord_events
	
	def_bg_events
	
	def_object_events
	object_event  3,  1, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ParfumPalace1FAtriumGentlemanScript, -1
	; object_event  4,  7, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ParfumPalace1FAtriumPokefanmScript, -1