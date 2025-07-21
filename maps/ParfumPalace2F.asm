	object_const_def
	
ParfumPalace2F_MapScripts:
	def_scene_scripts
	
	def_callbacks
	
ParfumPalace2FYoungster1Script:
	jumptextfaceplayer ParfumPalace2FYoungster1Text
	
ParfumPalace2FPokefanf1Script:
	jumptextfaceplayer ParfumPalace2FPokefanf1Text
	
ParfumPalace2FTwinScript:
	jumptextfaceplayer ParfumPalace2FTwinText
	
ParfumPalace2FMarillScript:
	jumptextfaceplayer ParfumPalace2FMarillText
	
ParfumPalace2FYoungster2Script:
	jumptextfaceplayer ParfumPalace2FYoungster2Text
	
ParfumPalace2FArtistfScript:
	jumptextfaceplayer ParfumPalace2FArtistfText
	
ParfumPalace2FBreedermScript:
	jumptextfaceplayer ParfumPalace2FBreedermText
	
ParfumPalace2FPokefanf2Script:
	jumptextfaceplayer ParfumPalace2FPokefanf2Text
	
ParfumPalace2FPokefanf3Script:
	jumptextfaceplayer ParfumPalace2FPokefanf3Text
	
ParfumPalace2FPokefanf4Script:
	jumptextfaceplayer ParfumPalace2FPokefanf4Text
	
ParfumPalace2FPokefanf2Text:
	text "Hmm… Well,"
	line "according to the"
	cont "guidebook…"
	done 
	
ParfumPalace2FPokefanf3Text:
	text "What room should"
	line "we look at next?"
	done
	
ParfumPalace2FPokefanf4Text:
	text "Where can I get"
	line "souvenirs in this"
	cont "place?"
	
	para "You know-- like"
	line "a LAVA COOKIE or"
	cont "something…"
	done

ParfumPalace2FBreedermText:
	text "Wow! Get a look"
	line "at these chairs!"
	
	para "They're totally"
	line "chairiffic!"
	cont "Get it?"
	
	para "They're simply"
	line "perfect in every"
	cont "way!"
	
	para "What a brilliant"
	line "design!"
	done
	
ParfumPalace2FArtistfText:
	text "Those mirrors in"
	line "the hallway…"
	
	para "They make it look"
	line "as if there's two"
	cont "balconies…"
	done
	
ParfumPalace2FYoungster2Text:
	text "The view from the"
	line "balcony is"
	cont "stunning!"
	done
	
ParfumPalace2FMarillText:
	text "Rrill! Rriiill!"
	done
	
ParfumPalace2FTwinText:
	text "Slow down,"
	line "MARILL!"
	
	para "I'm too tired to"
	line "play…"
	done
	
ParfumPalace2FPokefanf1Text:
	text "If you ask me, a"
	line "good bed is a bed"
	cont "in which you can"
	cont "get a good sleep."
	
	para "I don't care how"
	line "antique this bed"
	cont "might be,"
	
	para "I'd probably be"
	line "so uneasy in it"
	cont "that I wouldn't"
	cont "get a wink."
	done
	
ParfumPalace2FYoungster1Text:
	text "I wonder if #MON"
	line "slept in this"
	cont "bed…"
	done
	
ParfumPalace2F_MapEvents:
	db 0, 0 ; filler
	
	def_warp_events
	warp_event  1,  3, PARFUM_PALACE_1F, 5
	warp_event 49,  3, PARFUM_PALACE_1F, 6
	warp_event 24,  0, PARFUM_PALACE_2F_BALCONY, 1
	warp_event 25,  0, PARFUM_PALACE_2F_BALCONY, 1
	warp_event 10, 0, PARFUM_PALACE_2F_ROOM_1, 1
	warp_event 11, 0, PARFUM_PALACE_2F_ROOM_1, 2
	warp_event 14, 0, PARFUM_PALACE_2F_ROOM_2, 1
	warp_event 15, 0, PARFUM_PALACE_2F_ROOM_2, 2
	warp_event 34,  0, PARFUM_PALACE_2F_ROOM_3, 1
	warp_event 35,  0, PARFUM_PALACE_2F_ROOM_3, 2
	warp_event 38,  0, PARFUM_PALACE_2F_ROOM_4, 1
	warp_event 39,  0, PARFUM_PALACE_2F_ROOM_4, 2
	
	def_coord_events
	
	def_bg_events
	
	def_object_events
	object_event  3,  7, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ParfumPalace2FYoungster1Script, -1
	object_event  3,  8, SPRITE_POKEFAN_F, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ParfumPalace2FPokefanf1Script, -1
	object_event  9,  8, SPRITE_TWIN, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ParfumPalace2FTwinScript, -1
	object_event  9, 11, SPRITE_FAIRY, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ParfumPalace2FMarillScript, -1
	object_event 17,  3, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ParfumPalace2FYoungster2Script, -1
	object_event 31,  3, SPRITE_TEACHER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ParfumPalace2FArtistfScript, -1
	object_event 42,  9, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ParfumPalace2FBreedermScript, -1
	object_event 45,  8, SPRITE_POKEFAN_F, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ParfumPalace2FPokefanf2Script, -1
	object_event 46,  7, SPRITE_POKEFAN_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ParfumPalace2FPokefanf3Script, -1
	object_event 47,  8, SPRITE_POKEFAN_F, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ParfumPalace2FPokefanf4Script, -1