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
	
SantaluneCitySign:
	jumptext SantaluneCitySignText
	
SantaluneCitySignText:
	text "SANTALUNE CITY"
	line "A traditional"
	cont "city."
	done
	
SantaluneCity_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 23, 27, SANTALUNE_POKECENTER_1F, 1
	warp_event 24,  5, SANTALUNE_GYM, 1
	warp_event  3, 17, SANTALUNE_MART, 2
	
	def_coord_events

	def_bg_events
	bg_event 21, 27, BGEVENT_READ, SantaluneCitySign

	def_object_events
	object_event  8,  7, SPRITE_CLAIR, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, AlexaSantaluneScript, -1
