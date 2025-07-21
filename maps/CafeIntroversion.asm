	object_const_def
	const CAFEINTROVERSION_YOUNGSTER
	
CafeIntroversion_MapScripts:
	def_scene_scripts
	
	def_callbacks
	
CafeIntroversionCooltrainermScript:
	jumptextfaceplayer CafeIntroversionCooltrainermText
	
CafeIntroversionCooltrainermText:
	text "This is a café"
	line "where shy people"
	cont "who still love"
	
	para "to communicate"
	line "with others"
	cont "gather."
	done
	
CafeIntroversionFisherScript:
	jumptextfaceplayer CafeIntroversionFisherText
	
CafeIntroversionFisherText:
	text "I love playing"
	line "#MON-Amie!"
	
	para "My GEODUDE is"
	line "so cute!"
	done
	
CafeIntroversionYoungsterScript:
	faceplayer
	opentext
	writetext CafeIntroversionYoungsterText
	waitbutton
	closetext
	turnobject CAFEINTROVERSION_YOUNGSTER, RIGHT
	end
	
CafeIntroversionYoungsterText:
	text "Scram! I'm on a"
	line "date!"
	done
	
CafeIntroversionLassScript:
	jumptextfaceplayer CafeIntroversionLassText
	
CafeIntroversionLassText:
	text "Isn't he such"
	line "a dreamboat?"
	done
	
CafeIntroversion_MapEvents:
	db 0, 0 ; filler
	
	def_warp_events
	warp_event  6,  7, LUMIOSE_SOUTHEAST, 6
	warp_event  7,  7, LUMIOSE_SOUTHEAST, 6
	
	def_coord_events
	
	def_bg_events
	
	def_object_events
	object_event  7,  2, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CafeIntroversionYoungsterScript, -1
	object_event 10,  2, SPRITE_LASS, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CafeIntroversionLassScript, -1
	object_event  5,  3, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CafeIntroversionCooltrainermScript, -1
	object_event  2,  6, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CafeIntroversionFisherScript, -1