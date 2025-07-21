	object_const_def
	
LumioseSouthOfficeGround1_MapScripts:
	def_scene_scripts
	
	def_callbacks
	
LumioseSouthOffice1ReceptionistScript:
	jumptextfaceplayer LumioseSouthOffice1ReceptionistText
	
LumioseSouthOffice1ReceptionistText:
	text "Hello! Welcome to"
	line "the LUMIOSE"
	cont "Transport Office."
	done
	
LumioseSouthOffice1GentlemanScript:
	jumptextfaceplayer LumioseSouthOffice1GentlemanText
	
LumioseSouthOffice1GentlemanText:
	text "I'm a cab driver."

	para "I'm on my break,"
	line "so I'm just"
	cont "relaxing…"
	done
	
LumioseSouthOfficeGround1_MapEvents:
	db 0, 0 ; filler
	
	def_warp_events
	warp_event  3,  0, LUMIOSE_SOUTHEAST, 7
	warp_event  4,  0, LUMIOSE_SOUTHEAST, 8
	warp_event  7,  0, LUMIOSE_SOUTH_OFFICE_UPSTAIRS_1, 1
	
	def_coord_events
	
	def_bg_events
	
	def_object_events
	object_event  2,  5, SPRITE_BEAUTY, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, LumioseSouthOffice1ReceptionistScript, -1
	object_event  5,  4, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, LumioseSouthOffice1GentlemanScript, -1