	object_const_def
	
CamphrierHouse1_MapScripts:
	def_scene_scripts
	
	def_callbacks
	
CamphrierHouse1TeacherScript:
	faceplayer
	opentext
	checkevent EVENT_CAMPHRIER_TOWN_MOOMOO_MILK
	iftrue .AlreadyGotItem
	writetext CamphrierHouse1TeacherMoomooMilkText
	promptbutton
	verbosegiveitem MOOMOO_MILK
	writetext CamphrierHouse1TeacherGotText
	waitbutton
	closetext
	setevent EVENT_CAMPHRIER_TOWN_MOOMOO_MILK
	end
	
.AlreadyGotItem:
	writetext CamphrierHouse1TeacherGotText
	waitbutton
	closetext
	end
	
CamphrierHouse1TeacherMoomooMilkText:
	text "Tee hee! Here,"
	line "take this!"
	done
	
CamphrierHouse1TeacherGotText:
	text "Come back again,"
	line "now!"
	done
	
CamphrierHouse1PokefanfScript:
	jumptextfaceplayer CamphrierHouse1PokefanfText
	
CamphrierHouse1PokefanfText:
	text "The old manor lord"
	line "was very generous."
	
	para "He was very"
	line "different from the"
	cont "king who lived in"
	cont "the palace."
	done
	
CamphrierHouse1EspurrScript:
	jumptextfaceplayer CamphrierHouse1EspurrText
	
CamphrierHouse1EspurrText:
	text "ESPURR: Meowha?"
	done
	
CamphrierHouse1_MapEvents:
	db 0, 0 ; filler
	
	def_warp_events
	warp_event  2,  7, CAMPHRIER_TOWN, 3
	warp_event  3,  7, CAMPHRIER_TOWN, 3
	
	def_coord_events
	
	def_bg_events
	
	def_object_events
	object_event  0,  2, SPRITE_TEACHER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CamphrierHouse1TeacherScript, -1
	object_event  5,  3, SPRITE_POKEFAN_F, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CamphrierHouse1PokefanfScript, -1
	object_event  1,  5, SPRITE_FAIRY, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 3, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CamphrierHouse1EspurrScript, -1