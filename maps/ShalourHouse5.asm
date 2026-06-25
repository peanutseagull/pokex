	object_const_def
	
ShalourHouse5_MapScripts:
	def_scene_scripts
	
	def_callbacks

ShalourHouse5SkyTrainerScript:
	jumptextfaceplayer ShalourHouse5SkyTrainerText

ShalourHouse5SkyTrainerText:
	text "All the time and"
	line "love and soul you"
	cont "pour into your"
	cont "#MON--"
	
	para "it's not for"
	line "nothing! You'll"
	cont "see!"
	done
	
ShalourHouse5PunkGirlScript:
	jumptextfaceplayer ShalourHouse5PunkGirlText

ShalourHouse5PunkGirlText:
	text "Eternal life, huh…"
	line "It probably seems"
	cont "nice at first," ; glance
	cont "but I'd definitely"
	cont "get bored with it!"
	done
	
ShalourHouse5GrampsScript:
	jumptextfaceplayer ShalourHouse5GrampsText

ShalourHouse5GrampsText:
	text "I want to see"
	line "every single move"
	cont "that can be used"
	cont "by #MON…"
	done
	
ShalourHouse5_MapEvents:
	db 0, 0 ; filler
	
	def_warp_events
	warp_event  2,  7, SHALOUR_CITY, 8
	warp_event  3,  7, SHALOUR_CITY, 8
	
	def_coord_events
	
	def_bg_events
	
	def_object_events
	object_event  2,  3, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ShalourHouse5SkyTrainerScript, -1
	object_event  5,  4, SPRITE_BEAUTY, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, ShalourHouse5PunkGirlScript, -1
	object_event  5,  6, SPRITE_GRAMPS, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ShalourHouse5GrampsScript, -1
	