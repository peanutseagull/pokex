	object_const_def

Route3_MapScripts:
	def_scene_scripts

	def_callbacks

Route3Sign:
	jumptext Route3SignText
	
Route3SignText:
	text "ROUTE 3:"
	line "Ouvert Way"
	done
	
Route3SuperPotion:
	itemball SUPER_POTION
	
TrainerBugCatcherOliver:
	trainer BUG_CATCHER, OLIVER, EVENT_BEAT_BUG_CATCHER_OLIVER, BugCatcherOliverSeenText, BugCatcherOliverBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BugCatcherOliverAfterText
	waitbutton
	closetext
	end
	
TrainerPicnickerElla:
	trainer PICNICKER, ELLA, EVENT_BEAT_PICNICKER_ELLA, PicnickerEllaSeenText, PicnickerEllaBeatenText, 0, .Script
	
.Script:
	endifjustbattled
	opentext
	writetext PicnickerEllaAfterText
	waitbutton
	closetext
	end
	
TrainerPicnickerBridget:
	trainer PICNICKER, BRIDGET, EVENT_BEAT_PICNICKER_BRIDGET, PicnickerBridgetSeenText, PicnickerBridgetBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext PicnickerBridgetAfterText
	waitbutton
	closetext
	end
	
TrainerSchoolboyBrighton:
	trainer SCHOOLBOY, BRIGHTON, EVENT_BEAT_SCHOOLBOY_BRIGHTON, SchoolboyBrightonSeenText, SchoolboyBrightonBeatenText, 0, .Script
	
.Script:
	endifjustbattled
	opentext
	writetext SchoolboyBrightonAfterText
	waitbutton
	closetext
	end
	
PicnickerBridgetSeenText:
	text "My #MON and"
	line "I are studying."
	
	para "Wanna join us?"
	done
	
PicnickerBridgetBeatenText:
	text "Just studying is"
	line "not enough!"
	done
	
PicnickerBridgetAfterText:
	text "I need more"
	line "practice in real"
	cont "#MON battles!"
	done
	
SchoolboyBrightonSeenText:
	text "The best way to"
	line "learn about a"
	cont "move is to use it!"
	done
	
SchoolboyBrightonBeatenText:
	text "Wow! Your #MON"
	line "are strong!"
	done
	
SchoolboyBrightonAfterText:
	text "A move's power"
	line "can change!"
	done
	
PicnickerEllaSeenText:
	text "#MON battles"
	line "are really hard!"
	
	para "I just let"
	line "PICHU do what"
	cont "it wants!"
	done
	
PicnickerEllaBeatenText:
	text "PICHU, did we"
	line "lose?"
	done
	
PicnickerEllaAfterText:
	text "I'm gonna ask my"
	line "big bro to teach"
	cont "me battling!"
	done
	
BugCatcherOliverSeenText:
	text "My mom told me"
	line "to challenge"
	cont "everyone I see!"
	done
	
BugCatcherOliverBeatenText:
	text "My mom told me"
	line "to be polite,"
	cont "even if I lose!"
	done
	
BugCatcherOliverAfterText:
	text "I'm gonna go play"
	line "with my #MON!"
	done

Route3_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 21, 29, SANTALUNE_FOREST, 1
	warp_event 22, 29, SANTALUNE_FOREST, 1
	
	def_coord_events

	def_bg_events
	bg_event 19, 19, BGEVENT_READ, Route3Sign

	def_object_events
	object_event 19, 15, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 4, TrainerBugCatcherOliver, -1
	object_event 23,  8, SPRITE_LASS, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 4, TrainerPicnickerElla, -1
	object_event 13, 12, SPRITE_LASS, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 4, TrainerPicnickerBridget, -1
	object_event  4, 16, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, TrainerSchoolboyBrighton, -1
	object_event 13, 16, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Route3SuperPotion, EVENT_ROUTE_3_SUPER_POTION
