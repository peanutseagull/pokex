	object_const_def
	const SANTALUNECITY_CLAIR

SantaluneCity_MapScripts:
	def_scene_scripts
	scene_script SantaluneCityNoop1Scene, SCENE_SANTALUNECITY_ALEXA_STOPS_YOU
	scene_script SantaluneCityNoop2Scene, SCENE_SANTALUNECITY_EXPSHARE
	scene_script SantaluneCityNoop3Scene, SCENE_SANTALUNECITY_NOOP

	def_callbacks
	
SantaluneCityNoop1Scene:
	end
	
SantaluneCityNoop2Scene:
	end
	
SantaluneCityNoop3Scene:
	end
	
SantaluneCity_AlexaStopsYouScene1:
	showemote EMOTE_SHOCK, SANTALUNECITY_CLAIR, 15
	turnobject SANTALUNECITY_CLAIR, LEFT
	turnobject PLAYER, RIGHT
	opentext
	writetext Text_SantaluneDontLeave
	waitbutton
	closetext
	applymovement PLAYER, SantaluneCity_CantLeaveMovement
	turnobject SANTALUNECITY_CLAIR, DOWN
	end
	
SantaluneCity_AlexaStopsYouScene2:
	showemote EMOTE_SHOCK, SANTALUNECITY_CLAIR, 15
	turnobject SANTALUNECITY_CLAIR, RIGHT
	turnobject PLAYER, LEFT
	opentext
	writetext Text_SantaluneDontLeave
	waitbutton
	closetext
	applymovement PLAYER, SantaluneCity_CantLeaveMovement
	turnobject SANTALUNECITY_CLAIR, DOWN
	end
	
SantaluneCity_AlexaStopsYouScene3:
	showemote EMOTE_SHOCK, SANTALUNECITY_CLAIR, 15
	applymovement SANTALUNECITY_CLAIR, SantaluneCity_AlexaStopsYou
	turnobject PLAYER, LEFT
	opentext
	writetext Text_SantaluneDontLeave
	waitbutton
	closetext
	applymovement SANTALUNECITY_CLAIR, SantaluneCity_AlexaGoesBack
	applymovement PLAYER, SantaluneCity_CantLeaveMovement
	turnobject SANTALUNECITY_CLAIR, DOWN
	end	
	
SantaluneCity_AlexaExpShare1:
	showemote EMOTE_SHOCK, SANTALUNECITY_CLAIR, 15
	turnobject SANTALUNECITY_CLAIR, LEFT
	turnobject PLAYER, RIGHT
	opentext
	writetext Text_ExpShare
	promptbutton
	verbosegiveitem EXP_SHARE
	writetext Text_AlexaSeeYou
	waitbutton
	closetext
	applymovement SANTALUNECITY_CLAIR, SantaluneCity_AlexaLeaves
	setscene SCENE_SANTALUNECITY_NOOP
	setevent EVENT_GOT_EXP_SHARE
	reloadmap
	end	
	
SantaluneCity_AlexaExpShare2:
	showemote EMOTE_SHOCK, SANTALUNECITY_CLAIR, 15
	turnobject SANTALUNECITY_CLAIR, RIGHT
	turnobject PLAYER, LEFT
	opentext
	writetext Text_ExpShare
	promptbutton
	verbosegiveitem EXP_SHARE
	writetext Text_AlexaSeeYou
	waitbutton
	closetext
	applymovement SANTALUNECITY_CLAIR, SantaluneCity_AlexaLeaves
	setscene SCENE_SANTALUNECITY_NOOP
	setevent EVENT_GOT_EXP_SHARE	
	reloadmap
	end	
	
SantaluneCity_AlexaExpShare3:
	showemote EMOTE_SHOCK, SANTALUNECITY_CLAIR, 15
	applymovement SANTALUNECITY_CLAIR, SantaluneCity_AlexaStopsYou
	turnobject PLAYER, LEFT
	opentext
	writetext Text_ExpShare
	promptbutton
	verbosegiveitem EXP_SHARE
	writetext Text_AlexaSeeYou
	waitbutton
	closetext
	applymovement SANTALUNECITY_CLAIR, SantaluneCity_AlexaLeaves
	setscene SCENE_SANTALUNECITY_NOOP
	setevent EVENT_GOT_EXP_SHARE
	reloadmap
	end	
	
SantaluneCity_AlexaStopsYou:
	turn_head RIGHT
	step RIGHT
	step_end

SantaluneCity_AlexaGoesBack:
	turn_head LEFT
	step LEFT
	step_end
	
SantaluneCity_CantLeaveMovement:
	turn_head DOWN
	step DOWN
	step_end
	
SantaluneCity_AlexaLeaves:
	turn_head UP
	step UP
	step UP
	step UP
	step UP
	step UP
	step UP
	step UP
	step UP
	step_end
	
Text_SantaluneDontLeave:
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

AlexaSantaluneScript:
	opentext
	checkevent EVENT_BEAT_VIOLA
	iftrue .ExpShare
	writetext Text_SantaluneDontLeave
	waitbutton
	closetext
	
.ExpShare:
	writetext Text_ExpShare
	promptbutton
	verbosegiveitem EXP_SHARE
	writetext Text_AlexaSeeYou
	waitbutton
	closetext
	applymovement SANTALUNECITY_CLAIR, SantaluneCity_AlexaLeaves
	setscene SCENE_SANTALUNECITY_NOOP
	setevent EVENT_GOT_EXP_SHARE
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
	
Text_AlexaSeeYou:
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

	
SantaluneCityPokefanmScript:
	jumptextfaceplayer SantaluneCityPokefanmText
	
SantaluneCityLassScript:
	jumptextfaceplayer SantaluneCityLassText
	
SantaluneCityPokefanfScript:
	jumptextfaceplayer SantaluneCityPokefanfText
	
SantaluneCityLass2Script:
	jumptextfaceplayer SantaluneCityLass2Text
	
SantaluneCityPokecenterSign:
	jumpstd PokecenterSignScript

SantaluneCityMartSign:
	jumpstd MartSignScript
	
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
	coord_event  4,  1, SCENE_SANTALUNECITY_ALEXA_STOPS_YOU, SantaluneCity_AlexaStopsYouScene1
	coord_event  6,  1, SCENE_SANTALUNECITY_ALEXA_STOPS_YOU, SantaluneCity_AlexaStopsYouScene2
	coord_event  7,  1, SCENE_SANTALUNECITY_ALEXA_STOPS_YOU, SantaluneCity_AlexaStopsYouScene3	
	coord_event  4,  1, SCENE_SANTALUNECITY_EXPSHARE, SantaluneCity_AlexaExpShare1
	coord_event  6,  1, SCENE_SANTALUNECITY_EXPSHARE, SantaluneCity_AlexaExpShare2
	coord_event  7,  1, SCENE_SANTALUNECITY_EXPSHARE, SantaluneCity_AlexaExpShare3

	def_bg_events
	bg_event 21, 27, BGEVENT_READ, SantaluneCitySign
	bg_event 21, 17, BGEVENT_READ, SantaluneCafeSign
	bg_event 12, 10, BGEVENT_READ, TrainersSchoolSign
	bg_event 28, 17, BGEVENT_READ, SantaluneCityMartSign
	bg_event 24, 27, BGEVENT_READ, SantaluneCityPokecenterSign

	def_object_events
	object_event  5,  1, SPRITE_CLAIR, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, AlexaSantaluneScript, EVENT_GOT_EXP_SHARE
	object_event 10, 30, SPRITE_POKEFAN_M, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 2, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SantaluneCityPokefanmScript, -1
	object_event 23, 21, SPRITE_LASS, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SantaluneCityLassScript, -1
	object_event 18, 15, SPRITE_POKEFAN_F, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SantaluneCityPokefanfScript, -1
	object_event  4, 11, SPRITE_LASS, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SantaluneCityLass2Script, -1
