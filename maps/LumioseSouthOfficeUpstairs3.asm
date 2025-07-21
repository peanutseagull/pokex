	object_const_def
	
LumioseSouthOfficeUpstairs3_MapScripts:
	def_scene_scripts
	
	def_callbacks
	
LumioseSouthOffice3YoungsterScript:
	jumptextfaceplayer LumioseSouthOffice3YoungsterText
	
LumioseSouthOffice3YoungsterText:
	text "I want my #MON"
	line "to learn moves"
	cont "quickly,"
	
	para "so I'm raising my"
	line "#MON without"
	cont "them evolving."
	done
	
LumioseSouthOffice3LassScript:
	jumptextfaceplayer LumioseSouthOffice3LassText
	
LumioseSouthOffice3LassText:
	text "When we live"
	line "aimlessly every"
	cont "day,"
	
	para "we sometimes feel"
	line "so empty…"
	
	para "that we can't even"
	line "stand the colour"
	cont "of the blue sky."
	
	para "I wonder if"
	line "#MON ever feel"
	cont "like that, too."
	done
	
LumioseSouthOfficeUpstairs3_MapEvents:
	db 0, 0 ; filler
	
	def_warp_events
	warp_event  7,  0, LUMIOSE_SOUTH_OFFICE_GROUND_3, 3
	
	def_coord_events
	
	def_bg_events
	
	def_object_events
	object_event  2,  7, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, LumioseSouthOffice3YoungsterScript, -1
	object_event  0,  5, SPRITE_LASS, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, LumioseSouthOffice3LassScript, -1