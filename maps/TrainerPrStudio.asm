	object_const_def
	
TrainerPrStudio_MapScripts:
	def_scene_scripts
	
	def_callbacks
	
TrainerPrStudioReceptionistMScript:
	jumptextfaceplayer TrainerPrStudioReceptionistMText
	
TrainerPrStudioReceptionistMText:
	text "Welcome, Trainer!"
	line "This is the PR"
	cont "VIDEO STUDIO!"
	done
	
TrainerPrStudioReceptionistFScript:
	jumptextfaceplayer TrainerPrStudioReceptionistFText
	
TrainerPrStudioReceptionistFText:
	text "Hello there! You"
	line "want that desk on"
	cont "the left there."
	
	para "Me? My job is to"
	line "wait here every"
	cont "day for the"
	cont "coolest Trainers!"
	done
	
TrainerPrStudioPunkGirlScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_LENS_CASE
	iftrue .AlreadyGotItem
	writetext TrainerPrStudioPunkGirlText
	promptbutton
	verbosegiveitem LENS_CASE
	writetext TrainerPrStudioPunkGirlGotText
	waitbutton
	closetext
	setevent EVENT_GOT_LENS_CASE
	end
	
.AlreadyGotItem:
	writetext TrainerPrStudioPunkGirlGotText
	waitbutton
	closetext
	end
	
TrainerPrStudioPunkGirlText:
	text "Wow! You really"
	line "might just be"
	cont "something!"
	
	para "I thought my"
	line "eyes might fall"
	cont "outta my head"
	cont "watching you!"
	
	para "Here! You can"
	line "have this!"
	
	para "Try 'em on to"
	line "change up your"
	cont "look!"
	done
	
TrainerPrStudioPunkGirlGotText:
	text "This LENS CASE"
	line "contact lenses in"
	cont "different colours!"
	done
	
TrainerPrStudioHairdresserScript:
	jumptextfaceplayer TrainerPrStudioHairdresserText
	
TrainerPrStudioHairdresserText:
	text "Oh! Well, aren't"
	line "you a lovely"
	cont "little Trainer!"
	
	para "Have you shot a"
	line "Trainer PR Video"
	cont "yet?"
	done
	
TrainerPrStudioPsychicScript:
	jumptextfaceplayer TrainerPrStudioPsychicText
	
TrainerPrStudioPsychicText:
	text "You there! If you"
	line "have confidence in"
	cont "your coolness as"
	cont "the coolest of"
	cont "cool Trainers,"
	
	para "then go talk to"
	line "the lady there at"
	cont "the desk!"
	done
	
TrainerPrStudioTeacherScript:
	jumptextfaceplayer TrainerPrStudioTeacherText
	
TrainerPrStudioTeacherText:
	text "Beyond here is an"
	line "exclusive green"
	cont "room used for"
	cont "Trainer PR Videos!"
	done
	
TrainerPrStudioLassScript:
	jumptextfaceplayer TrainerPrStudioLassText
	
TrainerPrStudioLassText:
	text "Hmm, since I'm"
	line "bothering to do"
	cont "a video,"
	
	para "I guess I should"
	line "put on a bit of"
	cont "makeup!"
	done
	
TrainerPrStudioHikerScript:
	jumptextfaceplayer TrainerPrStudioHikerText
	
TrainerPrStudioHikerText:
	text "Can you believe"
	line "it? That you can"
	cont "make a PIKACHU-"
	cont "only PR Video?"
	done

TrainerPrStudio_MapEvents:
	db 0, 0 ; filler
	
	def_warp_events
	warp_event 11, 19, LUMIOSE_SOUTHEAST, 13
	warp_event 12, 19, LUMIOSE_SOUTHEAST, 14
	
	def_coord_events
	
	def_bg_events
	
	def_object_events
	object_event  8,  9, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, TrainerPrStudioReceptionistMScript, -1
	object_event 15,  9, SPRITE_LINK_RECEPTIONIST, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, TrainerPrStudioReceptionistFScript, -1
	object_event 12,  4, SPRITE_BEAUTY, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, TrainerPrStudioPunkGirlScript, -1
	object_event  2, 14, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, TrainerPrStudioHairdresserScript, -1
	object_event 10, 12, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, TrainerPrStudioPsychicScript, -1
	object_event  8, 14, SPRITE_TEACHER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, TrainerPrStudioTeacherScript, -1
	object_event 12, 15, SPRITE_LASS, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, TrainerPrStudioLassScript, -1
	object_event 19, 13, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, TrainerPrStudioHikerScript, -1