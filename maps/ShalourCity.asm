	object_const_def
	
ShalourCity_MapScripts:
	def_scene_scripts
	
	def_callbacks
	
ShalourCityGymGuideScript:
	jumptextfaceplayer ShalourCityGymGuideText

ShalourCityGymGuideText:
	text "The GYM LEADER,"
	line "KORRINA, is in the"
	cont "TOWER OF MASTERY"
	cont "training."
	done

ShalourCityWorker1Script:
	jumptextfaceplayer ShalourCityWorker1Text

ShalourCityWorker1Text:
	text "Traditionally,"
	line "#MON battles"
	cont "were a ritual that"
	cont "people and #MON"
	cont "used to learn"
	cont "about and accept"
	cont "one another."
	done

ShalourCityGirl1Script:
	jumptextfaceplayer ShalourCityGirl1Text

ShalourCityGirl1Text:
	text "Know how your hair"
	line "sticks out all"
	cont "over the place"
	cont "when you wake up?"
	
	para "Do you think that"
	line "MEGA EVOLUTION is"
	cont "like that?"
	done
	
ShalourCityBackpackerScript:
	jumptextfaceplayer ShalourCityBackpackerText

ShalourCityBackpackerText:
	text "Smooth stones" ; Smooth, flat
	line "reflect light"
	cont "consistently,"
	cont "so you can see"
	cont "reflections in"
	cont "them."
	done

ShalourCityPunkGuyScript:
	jumptextfaceplayer ShalourCityPunkGuyText
	
ShalourCityPunkGuyText:
	text "A team like you"
	line "and your #MON" ; first #MON in party
	cont "can accomplish"
	cont "anything!"
	
	para "I think in this"
	line "town, anyway…"
	cont "I haven't really"
	cont "been anywhere"
	cont "else."
	done
	
ShalourCityGirl2Script:
	jumptextfaceplayer ShalourCityGirl2Text
	
ShalourCityGirl2Text:
	text "There sure are a"
	line "lot of different"
	cont "items to make"
	cont "#MON's power"
	cont "bloom in full!"
	done
	
ShalourCityCooltrainermScript:
	jumptextfaceplayer ShalourCityCooltrainermText
	
ShalourCityCooltrainermText:
	text "When you act like"
	line "#MON exist only"
	cont "to battle, then"
	cont "winning becomes" ; or losing
	cont "the only thing"
	cont "that matters."
	
	para "That can make"
	line "everything a lot"
	cont "less fun."
	done
	
ShalourCityHikerScript:
	jumptextfaceplayer ShalourCityHikerText
	
ShalourCityHikerText:
	text "I'm really sorry,"
	line "but I'm looking"
	cont "for something."
	done
	
ShalourCityWorker2Script:
	jumptextfaceplayer ShalourCityWorker2Text
	
ShalourCityWorker2Text:
	text "So, I know this"
	line "HIKER who really"
	cont "likes Ferris"
	cont "wheels."
	
	para "It looks like he"
	line "finally found"
	cont "love…"
	done
	
ShalourCitySign:
	jumptext ShalourCitySignText

ShalourCitySignText:
	text "SHALOUR CITY:"
	line "A city of"
	cont "awakening."
	done

ShalourCityTrainerTipsSign:
	jumptext ShalourCityTrainerTipsSignText

ShalourCityTrainerTipsSignText:
	text "TRAINER TIPS:"
	line "In SUPER TRAINING,"
	cont "you can make your"
	cont "#MON strong by"
	cont "having them play"
	cont "sports in virtual"
	cont "space!"
	done

ShalourCityPokecenterSign:
	jumpstd PokecenterSignScript
	
ShalourCityMartSign:
	jumpstd MartSignScript
	
ShalourCityHiddenXSpecial: ; X_SP_ATK
	hiddenitem X_SPECIAL, EVENT_SHALOUR_CITY_HIDDEN_X_SPECIAL

ShalourCity_MapEvents:
	db 0, 0 ; filler
	
	def_warp_events
	warp_event 32, 37, REFLECTION_CAVE_1F, 4
	warp_event 37, 21, SHALOUR_POKECENTER_1F, 1
	warp_event 31, 21, SHALOUR_MART, 2
	warp_event 15, 21, SHALOUR_HOUSE_1, 1
	warp_event 19, 21, SHALOUR_HOUSE_2, 1
	warp_event 43, 21, SHALOUR_HOUSE_3, 1
	warp_event  9,  7, SHALOUR_HOUSE_4, 1
	warp_event 53,  9, SHALOUR_HOUSE_5, 1
	; warp_event  2,  7, SHALOUR_GYM, 1
	; warp_event 57, 23, ROUTE_12_GATE, 1
	; warp_event 57, 24, ROUTE_12_GATE, 2
	
	def_coord_events
	
	def_bg_events
	bg_event 29, 21, BGEVENT_READ, ShalourCitySign
	bg_event 53, 21, BGEVENT_READ, ShalourCityTrainerTipsSign
	bg_event 32, 21, BGEVENT_READ, ShalourCityMartSign
	bg_event 38, 21, BGEVENT_READ, ShalourCityPokecenterSign
	bg_event  0,  9, BGEVENT_ITEM, ShalourCityHiddenXSpecial
	
	def_object_events
	object_event  2,  8, SPRITE_GYM_GUIDE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ShalourCityGymGuideScript, -1
	object_event 15, 26, SPRITE_ROCKER, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, ShalourCityWorker1Script, -1
	object_event 23, 28, SPRITE_LASS, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ShalourCityGirl1Script, -1
	object_event 38, 32, SPRITE_FISHER, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, ShalourCityBackpackerScript, -1
	object_event 47, 24, SPRITE_ROCKER, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, ShalourCityWorker2Script, -1
	object_event 55, 19, SPRITE_FISHER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, ShalourCityHikerScript, -1
	object_event 44,  9, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ShalourCityCooltrainermScript, -1
	object_event 16, 15, SPRITE_LASS, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ShalourCityGirl2Script, -1
	object_event  7, 10, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ShalourCityPunkGuyScript, -1