	object_const_def
	const AQUACORDETOWN_FISHER
	const AQUACORDETOWN_GRAMPS
	
AquacordeTown_MapScripts:
	def_scene_scripts

	def_callbacks

AquacordeTownFisherScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_OLD_ROD
	iftrue .Fish
	writetext AquacordeTownFisherText
	waitbutton
	closetext
	end
	
.Fish
	writetext AquacordeTownFisherQwilfishText
	waitbutton
	closetext
	end
	
AquacordeTownGrampsScript:
	jumptextfaceplayer AquacordeTownGrampsText

AquacordeTownSign:
	jumptext AquacordeTownSignText
	
TrevorsHouseSign:
	jumptext TrevorsHouseSignText
	
ShaunasHouseSign:
	jumptext ShaunasHouseSignText
	
AquacordeTownPokecenterSign:
	jumpstd PokecenterSignScript

AquacordeTownMartSign:
	jumpstd MartSignScript
	
AquacordeTownFisherText:
	text "AQUACORDE is well-"
	line "known for fishing!"
	
	para "I've caught some"
	line "great #MON"
	cont "around here!"
	
	para "If you get a"
	line "fishing rod, you"
	cont "should stop by!"
	done
	
AquacordeTownFisherQwilfishText:
	text "Is that an OLD"
	line "ROD?"
	
	para "I see you're a"
	line "budding fisher!"
	
	para "Here's a tip -"
	line "QWILFISH can be"
	cont "found in this here"
	cont "river!"
	
	para "It's a pretty rare"
	line "#MON!"
	
	para "But sometimes they"
	line "are found in large"
	cont "numbers!"
	
	para "Keep a look out!"
	done
	
AquacordeTownGrampsText:
	text "You're going on"
	line "an adventure?"
	
	para "Well, did you say"
	line "goodbye to your"
	cont "mom?"
	
	para "You should!"
	
	para "Parents can be"
	line "more helpful than"
	cont "you think!"
	done
	
TrevorsHouseSignText:
	text "TREVOR's HOUSE"
	done
	
ShaunasHouseSignText:
	text "SHAUNA's HOUSE"
	done
	
AquacordeTownSignText:
	text "AQUACORDE TOWN"
	
	para "Water and"
	line "civilization in"
	cont "harmony."
	done
	
AquacordeTown_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3, 29, AQUACORDE_MART, 2
	warp_event 15, 29, AQUACORDE_POKECENTER_1F, 1
	warp_event 15, 19, TREVORS_HOUSE, 1
	warp_event  3, 19, SHAUNAS_HOUSE, 1

	def_coord_events

	def_bg_events
	bg_event  8, 26, BGEVENT_READ, AquacordeTownSign
	bg_event 15, 18, BGEVENT_READ, TrevorsHouseSign
	bg_event  4, 20, BGEVENT_READ, ShaunasHouseSign
	bg_event  4, 29, BGEVENT_READ, AquacordeTownMartSign
	bg_event 16, 29, BGEVENT_READ, AquacordeTownPokecenterSign
	
	def_object_events
	object_event  9, 21, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, AquacordeTownGrampsScript, -1
	object_event  7, 14, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, AquacordeTownFisherScript, -1
