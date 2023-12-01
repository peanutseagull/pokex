	object_const_def
	const SANTALUNECITY_CLAIR

SantaluneCity_MapScripts:
	def_scene_scripts

	def_callbacks

AlexaSantaluneScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_VIOLA
	iftrue .ExpShare
	writetext Text_AlexaGymLeader
	waitbutton
	closetext
	end
	
.ExpShare
	writetext Text_ExpShare
	promptbutton
	verbosegiveitem EXP_SHARE
	writetext Text_SeeYou
	waitbutton
	closetext
	disappear SANTALUNECITY_CLAIR
	reloadmap
	end
	
Text_ExpShare:
	text "Would you look at"
	line "that! You got the"
	cont "BUGBADGE!"
	
	para "Looks like I have"
	line "a new scoop! To"
	cont "beat VIOLA at your"
	
	para "young age... You"
	line "really are"
	cont "something!"
	
	para "I'm ALEXA, by the"
	line "way. VIOLA is my"
	cont "little sister!"
	
	para "I work as a"
	line "journalist up in"
	cont "LUMIOSE CITY."
	
	para "Here, why don't"
	line "you take this?"
	done
	
Text_SeeYou:
	text "If you have an"
	line "EXP.SHARE and you"
	cont "turn it on,"
	
	para "All your #MON"
	line "will get EXP,"
	
	para "Even if they"
	line "don't appear in"
	cont "battle!"
	
	para "I hope it helps"
	line "in your training!"
	
	para "Feel free to stop"
	line "by my office any"
	cont "time! See you!"
	done
	
Text_AlexaGymLeader:
	text "You must be..."
	
	para "Ah! One of the"
	line "kids who got a"
	cont "#MON, right?"
	
	para "From PROF."
	line "SYCAMORE?"
	
	para "In that case,"
	line "you should head"
	cont "over to the GYM."
	
	para "I'm sure my sister"
	line "would be glad to"
	cont "face you!"
	done	
	
SantaluneCityPokefanmScript:
	jumptextfaceplayer SantaluneCityPokefanmText
	
SantaluneCityLassScript:
	jumptextfaceplayer SantaluneCityLassText
	
SantaluneCityPokefanfScript:
	jumptextfaceplayer SantaluneCityPokefanfText
	
SantaluneCityLass2Script:
	jumptextfaceplayer SantaluneCityLass2Text
	
SantaluneCityLass2Text:
	text "If you master"
	line "type matchups,"
	
	para "even strong"
	line "opponents will be"
	cont "a breeze!"
	done
	
SantaluneCityPokefanfText:
	text "SANTALUNE used to"
	line "have a boutique.."
	
	para "But they're so"
	line "unsustainable!"
	
	para "The dyes from the"
	line "factory leeched"
	cont "into the river,"
	
	para "I'm glad we got"
	line "rid of that thing!"
	done
	
SantaluneCityLassText:
	text "#MON love"
	line "yummy treats just"
	cont "like you or me!"
	done
	
SantaluneCityPokefanmText:
	text "Walking through"
	line "tall grass is"
	cont "great fun --"
	
	para "All kinds of"
	line "#MON can jump"
	cont "out at you!"
	done
	
SantaluneCitySign:
	jumptext SantaluneCitySignText
	
SantaluneCitySignText:
	text "SANTALUNE CITY"
	line "A traditional"
	cont "city."
	done

SantaluneCafeSign:
	jumptext SantaluneCafeSignText
	
SantaluneCafeSignText:
	text "Drinks:"
	
	para "Café au lait"
	line "Chocolat chaud"
	cont "Limonade"
	done
	
TrainersSchoolSign:
	jumptext TrainersSchoolSignText
	
TrainersSchoolSignText:
	text "TRAINERS SCHOOL"
	line "Brush up on the"
	cont "basics!"
	done
	
SantaluneCity_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 23, 27, SANTALUNE_POKECENTER_1F, 1
	warp_event 24,  5, SANTALUNE_GYM, 1
	warp_event 27, 17, SANTALUNE_MART, 2
	warp_event 14,  9, EARLS_POKEMON_ACADEMY, 2
	warp_event  3, 17, SANTALUNE_HOUSE_1, 2
	warp_event  7, 17, SANTALUNE_HOUSE_2, 2
	warp_event  4, 27, SANTALUNE_HOUSE_3, 2
	warp_event 27, 27, SANTALUNE_HOUSE_4, 2
	
	def_coord_events

	def_bg_events
	bg_event 21, 27, BGEVENT_READ, SantaluneCitySign
	bg_event 21, 17, BGEVENT_READ, SantaluneCafeSign
	bg_event 12, 10, BGEVENT_READ, TrainersSchoolSign

	def_object_events
	object_event  8,  7, SPRITE_CLAIR, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, AlexaSantaluneScript, -1
	object_event 10, 30, SPRITE_POKEFAN_M, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 2, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SantaluneCityPokefanmScript, -1
	object_event 23, 21, SPRITE_LASS, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SantaluneCityLassScript, -1
	object_event 18, 15, SPRITE_POKEFAN_F, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SantaluneCityPokefanfScript, -1
	object_event  4, 11, SPRITE_LASS, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SantaluneCityLass2Script, -1
