	object_const_def
	
LumioseSouthOfficeGround3_MapScripts:
	def_scene_scripts
	
	def_callbacks
	
LumioseSouthOffice3ReceptionistScript:
	jumptextfaceplayer LumioseSouthOffice3ReceptionistText
	
LumioseSouthOffice3ReceptionistText:
	text "Hello. How are"
	line "you and your"
	cont "#MON?"
	done
	
LumioseSouthOffice3Cooltrainerf1Script:
	jumptextfaceplayer LumioseSouthOffice3Cooltrainerf1Text
	
LumioseSouthOffice3Cooltrainerf1Text:
	text "I'm trading"
	line "#MON by Link"
	cont "Trade now."
	done
	
LumioseSouthOffice3Cooltrainerf2Script:
	jumptextfaceplayer LumioseSouthOffice3Cooltrainerf2Text
	
LumioseSouthOffice3Cooltrainerf2Text:
	text "A #MON has"
	line "arrived! Wow! It's"
	cont "holding an item!"
	done
	
LumioseSouthOffice3CooltrainermScript:
	jumptextfaceplayer LumioseSouthOffice3CooltrainermText
	
LumioseSouthOffice3CooltrainermText:
	text "If people raise"
	line "#MON,"
	
	para "they will get"
	line "stronger than"
	cont "wild #MON."
	done
	
LumioseSouthOffice3BeautyScript:
	jumptextfaceplayer LumioseSouthOffice3BeautyText
	
LumioseSouthOffice3BeautyText:
	text "Even if #MON"
	line "are of the same"
	cont "species,"
	
	para "each #MON"
	line "has different"
	cont "strengths."
	done
	
LumioseSouthOfficeGround3_MapEvents:
	db 0, 0 ; filler
	
	def_warp_events
	warp_event  3,  0, LUMIOSE_SOUTHWEST, 8
	warp_event  4,  0, LUMIOSE_SOUTHWEST, 9
	warp_event  7,  0, LUMIOSE_SOUTH_OFFICE_UPSTAIRS_3, 1
	
	def_coord_events
	
	def_bg_events
	
	def_object_events
	object_event  2,  5, SPRITE_RECEPTIONIST, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, LumioseSouthOffice3ReceptionistScript, -1
	object_event  5,  5, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, LumioseSouthOffice3Cooltrainerf1Script, -1
	object_event  6,  5, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, LumioseSouthOffice3Cooltrainerf2Script, -1
	object_event  2,  1, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, LumioseSouthOffice3CooltrainermScript, -1
	object_event  7,  3, SPRITE_BEAUTY, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, LumioseSouthOffice3BeautyScript, -1