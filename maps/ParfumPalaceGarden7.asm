	object_const_def
	
ParfumPalaceGarden7_MapScripts:
	def_scene_scripts
	
	def_callbacks
	
ParfumPalaceGarden7GuardSpec:
	itemball GUARD_SPEC
	
ParfumPalaceGarden7CooltrainermScript:
	jumptextfaceplayer ParfumPalaceGarden7CooltrainermText
	
ParfumPalaceGarden7CooltrainermText:
	text "The KALOS and"
	line "UNOVA regions"
	cont "must have been in"
	cont "contact…"
	done
	
ParfumPalaceGarden7BeautyScript:
	jumptextfaceplayer ParfumPalaceGarden7BeautyText
	
ParfumPalaceGarden7BeautyText:
	text "The #MON statue"
	line "near the entrance"
	cont "is RESHIRAM,"
	
	para "and this one here"
	line "is ZEKROM."
	
	para "I wonder what"
	line "significance they"
	cont "had to the king."
	done
	
ParfumPalaceGarden7_MapEvents:
	db 0, 0 ; filler
	
	def_warp_events
	
	def_coord_events
	
	def_bg_events
	
	def_object_events
	object_event  0,  0, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, ParfumPalaceGarden7GuardSpec, EVENT_PARFUM_PALACE_GARDEN_7_GUARD_SPEC
	object_event 69,  3, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ParfumPalaceGarden7CooltrainermScript, -1
	object_event 70,  3, SPRITE_BEAUTY,  SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ParfumPalaceGarden7BeautyScript, -1