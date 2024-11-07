	object_const_def
	
CamphrierHouse2_MapScripts:
	def_scene_scripts
	
	def_callbacks
	
CamphrierHouse2Beauty1Script:
	jumptextfaceplayer CamphrierHouse2Beauty1Text
	
CamphrierHouse2Beauty1Text:
	text "They got PCs in"
	line "every #MON"
	cont "centre, right?"
	
	para "Apparently you can"
	line "edit your Trainer"
	cont "PR Videos there."
	
	para "No, seriously!"
	done

CamphrierThiefGirl:
	faceplayer
	opentext
	checkevent EVENT_GOT_TM46_THIEF
	iftrue .AlreadyGotItem
	writetext CamphrierThiefGirlText
	promptbutton
	verbosegiveitem TM_THIEF
	writetext CamphrierThiefGirlGotText
	waitbutton
	closetext
	setevent EVENT_GOT_TM46_THIEF
	end
	
.AlreadyGotItem:
	writetext CamphrierThiefGirlGotText
	waitbutton
	closetext
	end
	
CamphrierThiefGirlText:
	text "Take this, thief!"
	done
	
CamphrierThiefGirlGotText:
	text "With the THIEF"
	line "move,"
	
	para "you can take the"
	line "target's held item"
	cont "and deal damage!"
	
	para "Pretty metal,"
	line "right?"
	
	para "But the user can't"
	line "be holding an item"
	cont "already, though."
	done
	
CamphrierHouse2CassiusScript:
	jumptextfaceplayer CamphrierHouse2CassiusText
	
CamphrierHouse2CassiusText:
	text "Yo, I'm CASSIUS."
	done
	
CamphrierHouse2_MapEvents:
	db 0, 0 ; filler
	
	def_warp_events
	warp_event  4,  7, CAMPHRIER_TOWN, 4
	warp_event  5,  7, CAMPHRIER_TOWN, 4
	
	def_coord_events
	
	def_bg_events
	
	def_object_events
	object_event  0,  2, SPRITE_BEAUTY, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CamphrierHouse2Beauty1Script, -1
	object_event  4,  1, SPRITE_BEAUTY, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CamphrierThiefGirl, -1
	object_event  8,  4, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CamphrierHouse2CassiusScript, -1