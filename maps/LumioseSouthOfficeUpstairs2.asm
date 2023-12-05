	object_const_def
	
LumioseSouthOfficeUpstairs2_MapScripts:
	def_scene_scripts
	
	def_callbacks
	
LumioseSouthOffice2RockerScript:
	jumptextfaceplayer LumioseSouthOffice2RockerText
	
LumioseSouthOffice2RockerText:
	text "If you catch a"
	line "#MON,"
	
	para "your #MON"
	line "will gain"
	cont "experience!"
	
	para "It's a win-win"
	line "for real!"
	done
	
LumioseSouthOffice2YoungsterScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_LUMIOSE_OFFICE_QUICK_BALLS
	iftrue .AlreadyGotItem
	writetext YoungsterGivesQuickBalls
	promptbutton
	verbosegiveitem QUICK_BALL, $5
	writetext LumioseSouthOffice2YoungsterText
	waitbutton
	closetext
	setevent EVENT_GOT_LUMIOSE_OFFICE_QUICK_BALLS
	end
	
.AlreadyGotItem:
	writetext LumioseSouthOffice2YoungsterText
	waitbutton
	closetext
	end
	
YoungsterGivesQuickBalls:
	text "My personal"
	line "recommendation"
	cont "is the QUICK BALL."
	done
	
LumioseSouthOffice2YoungsterText:
	text "If you run into"
	line "a #MON you"
	cont "really want,"
	
	para "try throwing"
	line "a QUICK BALL"
	cont "right away!"
	done
	
LumioseSouthOffice2PokefanfScript:
	jumptextfaceplayer LumioseSouthOffice2PokefanfText
	
LumioseSouthOffice2PokefanfText:
	text "The development"
	line "of the #ball"
	cont "brought #MON"
	
	para "and humans"
	line "closer together!"
	done
	
LumioseSouthOfficeUpstairs2_MapEvents:
	db 0, 0 ; filler
	
	def_warp_events
	warp_event  7,  0, LUMIOSE_SOUTH_OFFICE_GROUND_2, 3
	
	def_coord_events
	
	def_bg_events
	
	def_object_events
	object_event  1,  2, SPRITE_ROCKER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, LumioseSouthOffice2RockerScript, -1
	object_event  6,  7, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, LumioseSouthOffice2YoungsterScript, -1
	object_event  0,  5, SPRITE_POKEFAN_F, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, LumioseSouthOffice2PokefanfScript, -1