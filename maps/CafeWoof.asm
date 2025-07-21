	object_const_def

CafeWoof_MapScripts:
	def_scene_scripts

	def_callbacks
	
CafeWoofClerkScript:
	jumptextfaceplayer CafeWoofClerkText
	
CafeWoofGentlemanScript:
	jumptextfaceplayer CafeWoofGentlemanText
	
CafeWoofBeautyScript:
	jumptextfaceplayer CafeWoofBeautyText
	
CafeWoofWaitressScript:
	jumptextfaceplayer CafeWoofWaitressText
	
CafeWoofTeacherScript:
	jumptextfaceplayer CafeWoofTeacherText
	
CafeWoofYoungsterScript:
	jumptextfaceplayer CafeWoofYoungsterText
	
CafeWoofYoungsterText:
	text "…What? You want"
	line "to know why I'm"
	cont "here?"
	
	para "Shhh… I wanna"
	line "know how the"
	cont "other half lives!"
	
	para "You can just"
	line "taste the"
	cont "bourgeoisie in"
	cont "the air!"
	done
	
CafeWoofTeacherText:
	text "That's right! I"
	line "keep my precious"
	cont "FURFROU trimmed"
	cont "in the prized"
	cont "Pharaoh style!"
	
	para "It shows that"
	line "I'm a prized"
	cont "customer!"
	done
	
CafeWoofWaitressText:
	text "Feel it! Feel the"
	line "admiration of"
	cont "FURFROU gathering"
	cont "here from all"
	cont "across KALOS!"
	
	para "We are FURFROU"
	line "admirers!"
	
	para "Or, FURFROUMERS!"
	
	para "Do you like the"
	line "name? I came up"
	cont "with it myself!"
	done
	
CafeWoofBeautyText:
	text "I like natural"
	line "FURFROU the best."
	
	; para "Sacrilege, I"
	; line "know."
	done
	
CafeWoofGentlemanText:
	text "You know, when I"
	line "leave home every"
	cont "morning,"
	
	para "I kiss every one"
	line "of my 101 FURFROU"
	cont "good-bye."
	done
	
CafeWoofClerkText:
	text "This café was set"
	line "up by FURFROU"
	cont "admirers,"
	
	para "for FURFROU"
	line "admirers and"
	cont "their beloved"
	cont "FURFROU!"
	done
	
CafeWoof_MapEvents:	
	db 0, 0 ; filler
	
	def_warp_events
	warp_event  6,  7, VERNAL_AVENUE, 13
	warp_event  7,  7, VERNAL_AVENUE, 14

	def_coord_events

	def_bg_events

	def_object_events
	object_event  2,  2, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CafeWoofClerkScript, -1
	object_event  2,  6, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CafeWoofGentlemanScript, -1
	object_event  4,  4, SPRITE_BEAUTY, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CafeWoofBeautyScript, -1
	object_event  7,  5, SPRITE_BEAUTY, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CafeWoofWaitressScript, -1
	object_event 10,  3, SPRITE_TEACHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CafeWoofTeacherScript, -1
	object_event  7,  2, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CafeWoofYoungsterScript, -1