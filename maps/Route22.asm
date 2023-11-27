	object_const_def
	
Route22_MapScripts:
	def_scene_scripts

	def_callbacks
	
Route22Sign:
	jumptext Route22SignText
	
Route22SignText:
	text "ROUTE 22:"
	line "Detourner Way"
	done
	
TrainerPicnickerLouise:
	trainer PICNICKER, LOUISE, EVENT_BEAT_PICNICKER_LOUISE, PicnickerLouiseSeenText, PicnickerLouiseBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext PinickerLouiseAfterText
	waitbutton
	closetext
	end
	
TrainerYoungsterLoic:
	trainer YOUNGSTER, LOIC, EVENT_BEAT_YOUNGSTER_LOIC, YoungsterLoicSeenText, YoungsterLoicBeatenText, 0, .Script
	
.Script
	endifjustbattled
	opentext
	writetext YoungsterLoicAfterText
	waitbutton
	closetext
	end
	
TrainerLassElin:
	trainer LASS, ELIN, EVENT_BEAT_LASS_ELIN, LassElinSeenText, LassElinBeatenText, 0, .Script
	
.Script
	endifjustbattled
	opentext
	writetext LassElinAfterText
	waitbutton
	closetext
	end
	
TrainerSchoolboyRabbie:
	trainer SCHOOLBOY, RABBIE, EVENT_BEAT_SCHOOLBOY_RABBIE, SchoolboyRabbieSeenText, SchoolboyRabbieBeatenText, 0, .Script
	
.Script
	endifjustbattled
	opentext
	writetext SchoolboyRabbieAfterText
	waitbutton
	closetext
	end
	
TrainerLassElsa:
	trainer LASS, ELSA, EVENT_BEAT_LASS_ELSA, LassElsaSeenText, LassElsaBeatenText, 0, .Script
	
.Script
	endifjustbattled
	opentext
	writetext LassElsaAfterText
	waitbutton
	closetext
	end

PicnickerLouiseSeenText:
	text "I learnt all of my"
	line "#MON battling"
	cont "techniques from"
	
	para "VIOLA -- the GYM"
	line "leader!"
	done
	
PicnickerLouiseBeatenText:
	text "Whoa! You might be"
	line "even stronger than"
	cont "VIOLA!"
	done
	
PinickerLouiseAfterText:
	text "VIOLA only raises"
	line "the types of"
	cont "#MON she likes."
	
	para "But you know what?"
	line "It's probably"
	cont "better to train"
	
	para "lots of different"
	line "types of #MON."
	done
	
LassElinSeenText:
	text "C'mon GOLDEEN!"
	line "Let's show em what"
	cont "we're made of!"
	done
	
LassElinBeatenText:
	text "GOLDEEN, MARILL,"
	line "I'm so sorry!"
	
	para "I'll get you both"
	line "back to the"
	cont "#MON Centre!"
	done
	
LassElinAfterText:
	text "I just love WATER-"
	line "type #MON!"
	
	para "Some GRASS- and"
	line "FIRE-types are"
	cont "cute, too!"
	done	
	
YoungsterLoicSeenText:
	text "Is #MON"
	line "battling just a"
	cont "hobby to you?"
	
	para "Or do you wanna"
	line "become a pro?"
	done
	
YoungsterLoicBeatenText:
	text "I'll be sure to"
	line "learn from this"
	cont "and improve!"
	done
	
YoungsterLoicAfterText:
	text "The #MON League"
	line "is close, yet"
	cont "so far away!"
	done
	
SchoolboyRabbieSeenText:
	text "You know what"
	line "this is, right?"
	
	para "It's the start"
	line "of a #MON"
	cont "battle!"
	done
	
SchoolboyRabbieBeatenText:
	text "I may have lost,"
	line "but my #MON put"
	cont "in a big effort!"
	done
	
SchoolboyRabbieAfterText:
	text "Maybe I should"
	line "work on evolving"
	cont "my #MON..."
	done
	
LassElsaSeenText:
	text "I care less about"
	line "battling than"
	cont "showing off my"
	 
	para "awesome #MON to"
	line "everyone!"
	done
	
LassElsaBeatenText:
	text "FLABEBE! Are you"
	line "okay?"
	done
	
LassElsaAfterText:
	text "Isn't my FLABEBE"
	line "just the cutest"
	cont "thing ever?"
	done
	
Route22_MapEvents:
	db 0, 0 ; filler

	def_warp_events

	def_coord_events

	def_bg_events
	bg_event  3,  9, BGEVENT_READ, Route22Sign
	
	def_object_events
	object_event  6,  9, SPRITE_LASS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 4, TrainerPicnickerLouise, -1
	object_event 11,  9, SPRITE_LASS, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 4, TrainerLassElin, -1
	object_event 29,  6, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 4, TrainerYoungsterLoic, -1
	object_event 29, 13, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerSchoolboyRabbie, -1
	object_event 35, 18, SPRITE_LASS, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerLassElsa, -1