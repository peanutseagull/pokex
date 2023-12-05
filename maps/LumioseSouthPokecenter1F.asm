	object_const_def
	const LUMIOSESOUTHPOKECENTER1F_NURSE

LumioseSouthPokecenter1F_MapScripts:
	def_scene_scripts
	scene_const SCENE_GOLDENRODPOKECENTER1F_GS_BALL

	def_callbacks

LumioseSouthPokecenter1FNurseScript:
	jumpstd PokecenterNurseScript

LumioseSouthPokecenterFisherScript:
	jumptextfaceplayer LumioseSouthPokecenterFisherText
	
LumioseSouthPokecenterFisherText:
	text "Apparently having"
	line "the EXP. SHARE"
	cont "turned ON will"
	
	para "give all #MON"
	line "in your team"
	cont "Exp. Points --"
	
	para "even if they"
	line "don't appear in"
	cont "battle!"
	done
	
LumioseSouthPokecenterGentlemanScript:
	jumptextfaceplayer LumioseSouthPokecenterGentlemanText
	
LumioseSouthPokecenterGentlemanText:
	text "Would you like"
	line "to trade #"
	cont "Miles for prizes?"
	
	para "If only! We don't"
	line "have the budget"
	cont "for that!"
	done
	
LumioseSouthPokecenterLassScript:
	jumptextfaceplayer LumioseSouthPokecenterLassText
	
LumioseSouthPokecenterLassText:
	text "If you have a"
	line "full team and you"
	cont "catch another,"
	
	para "that #MON will"
	line "automatically be"
	cont "sent to the PC!"
	
	para "The power of"
	line "science is"
	cont "incredible!"
	done
	
LumioseSouthPokecenter1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  7, LUMIOSE_SOUTHEAST, 5
	warp_event  4,  7, LUMIOSE_SOUTHEAST, 5
	warp_event  0,  7, POKECENTER_2F, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  3,  1, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, LumioseSouthPokecenter1FNurseScript, -1
	object_event  1,  6, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, LumioseSouthPokecenterFisherScript, -1
	object_event  8,  4, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, LumioseSouthPokecenterGentlemanScript, -1
	object_event  6,  1, SPRITE_LASS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, LumioseSouthPokecenterLassScript, -1