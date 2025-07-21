	object_const_def
	
CoiffureClips_MapScripts:
	def_scene_scripts
	
	def_callbacks
	
CoiffureClipsReceptionistScript:
	jumptextfaceplayer CoiffureClipsReceptionistText
	
CoiffureClipsReceptionistText:
	text "Welcome to"
	line "COIFFURE CLIPS."
	
	para "The best salon in"
	line "LUMIOSE, and -"
	cont "dare I say -"
	cont "all of KALOS!"
	
	para "We can style and"
	line "colour your hair"
	cont "however you like."
	
	para "You look like you"
	line "could use one!"
	done
	
CoiffureClipsBarberScript:
	jumptextfaceplayer CoiffureClipsBarberText
	
CoiffureClipsBarberText:
	text "It's a dream of"
	line "mine to express"
	cont "all #MON by"
	cont "hairstyle."
	done
	
CoiffureClipsLassScript:
	jumptextfaceplayer CoiffureClipsLassText
	
CoiffureClipsLassText:
	text "No! No matter how"
	line "many times I"
	cont "change my look,"
	
	para "it all looks so"
	line "good!"
	done
	
CoiffureClips_MapEvents:
	db 0, 0 ; filler
	
	def_warp_events
	warp_event  1,  7, LUMIOSE_SOUTHWEST, 10
	warp_event  2,  7, LUMIOSE_SOUTHWEST, 10
	
	def_coord_events
	
	def_bg_events
	
	def_object_events
	object_event  1,  4, SPRITE_BEAUTY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CoiffureClipsReceptionistScript, -1
	object_event 11,  3, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CoiffureClipsBarberScript, -1
	object_event 12,  3, SPRITE_LASS, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CoiffureClipsLassScript, -1
