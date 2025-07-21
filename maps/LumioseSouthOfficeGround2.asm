	object_const_def
	
LumioseSouthOfficeGround2_MapScripts:
	def_scene_scripts
	
	def_callbacks
	
LumioseSouthOffice2CooltrainerfScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_QUICK_CLAW
	iftrue .AlreadyGotItem
	writetext CooltrainerGivesQuickClaw
	promptbutton
	verbosegiveitem QUICK_CLAW
	writetext LumioseSouthOffice2CooltrainerfText
	waitbutton
	closetext
	setevent EVENT_GOT_QUICK_CLAW
	end
	
.AlreadyGotItem:
	writetext LumioseSouthOffice2CooltrainerfText
	waitbutton
	closetext
	end
	
LumioseSouthOffice2CooltrainerfText:
	text "In #MON"
	line "battles, speed is"
	cont "very important!"
	done
	
CooltrainerGivesQuickClaw:
	text "Hey, Trainer!"
	line "Do you want to"
	cont "try this?"
	done
	
LumioseSouthOffice2ReceptionistScript:
	jumptextfaceplayer LumioseSouthOffice2ReceptionistText
	
LumioseSouthOffice2ReceptionistText:
	text "Upstairs, they"
	line "study how to"
	cont "catch #MON."
	done
	
LumioseSouthOfficeGround2_MapEvents:
	db 0, 0 ; filler
	
	def_warp_events
	warp_event  3,  0, LUMIOSE_SOUTHWEST, 6
	warp_event  4,  0, LUMIOSE_SOUTHWEST, 7
	warp_event  7,  0, LUMIOSE_SOUTH_OFFICE_UPSTAIRS_2, 1
	
	def_coord_events
	
	def_bg_events
	
	def_object_events
	object_event  2,  5, SPRITE_RECEPTIONIST, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, LumioseSouthOffice2ReceptionistScript, -1
	object_event  6,  5, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, LumioseSouthOffice2CooltrainerfScript, -1