	object_const_def
	
AmbretteAquarium_MapScripts:
	def_scene_scripts
	
	def_callbacks
	
AmbretteAquariumFisherScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_OLD_ROD
	iftrue .GotOldRod
	writetext AmbretteAquariumFisherIntroText
	yesorno
	iffalse .SaidNo
.ChangedMind:
	verbosegiveitem OLD_ROD
	setevent EVENT_GOT_OLD_ROD
.GotOldRod:
	writetext AmbretteAquariumFisherAfterText
	waitbutton
	closetext
	end
	
.SaidNo:
	writetext AmbretteAquariumFisherRefusedText
	yesorno
	iftrue .ChangedMind
	writetext AmbretteAquariumFisherRefusedAgainText
	waitbutton
	closetext
	end
	
AmbretteAquariumFisherIntroText:
	text "A wandering young"
	line "Trainer, are you?"
	
	para "Let me guess-- you"
	line "wish to fish for"
	cont "all the #MON"
	cont "in the sea, right?"
	
	para "I'm sure you do!"
	line "Shall I lend you"
	cont "a rod?"
	
	para "I'm a fishing"
	line "fanatic, and I've"
	cont "collected more OLD"
	cont "RODs than I could"
	cont "ever use!"
	done
	
AmbretteAquariumFisherAfterText:
	text "There you are: one"
	line "fishing rod!"
	
	para "Here's a tip -"
	line "if you're an avid"
	cont "fisher like me,"
	cont "then register this"
	cont "rod and you can"
	cont "fish all day using"
	cont "just the SELECT"
	cont "button!"
	done
	
AmbretteAquariumFisherRefusedText:
	text "Ah hm! There's no"
	line "need to be modest."
	
	para "Here, take it. I"
	line "insist!"
	done
	
AmbretteAquariumFisherRefusedAgainText:
	text "You're stubborn"
	line "as a mule, aren't"
	cont "you!"

	para "Well if you change"
	line "your mind, I'll be"
	cont "here!"
	done
	
AmbretteAquariumGuy1Script:
	jumptextfaceplayer AmbretteAquariumGuy1Text
	
AmbretteAquariumGuy1Text:
	text "ROUTE 8 continues"
	line "on out that door"
	cont "there."
	
	para "That's right!"
	line "ROUTE 8 sure is a"
	cont "long one!"
	
	para "It runs down the"
	line "cliffs, through"
	cont "AMBRETTE, along"
	cont "the sea, and all"
	cont "the way to the"
	cont "next town!"
	done
	
AmbretteAquariumBoyScript:
	jumptext AmbretteAquariumBoyText
	
AmbretteAquariumBoyText:
	text "Wowzers! I just"
	line "saw a fish #MON"
	cont "hiding behind"
	cont "that rock!"
	done
	
AmbretteAquariumGirlScript:
	jumptextfaceplayer AmbretteAquariumGirlText
	
AmbretteAquariumGirlText:
	text "Aw, I wanna swim"
	line "in the sea with"
	cont "the #MON!"
	done
	
AmbretteAquariumEspurrScript:
	jumptextfaceplayer AmbretteAquariumEspurrText

AmbretteAquariumEspurrText:
	text "ESPURR: Mrrraowr!"
	done
	
AmbretteAquariumReceptionistScript:
	jumptextfaceplayer AmbretteAquariumReceptionistText
	
AmbretteAquariumReceptionistText:
	text "Thanks for"
	line "visiting our"
	cont "aquarium!"
	
	para "Your interest"
	line "marines so much"
	cont "to us!"
	
	para "That line never"
	line "gets old."
	done
	
AmbretteAquariumGuy2Script:
	jumptextfaceplayer AmbretteAquariumGuy2Text
	
AmbretteAquariumGuy2Text:
	text "Have you heard of"
	line "STORM DRAIN?"
	
	para "Not only does it"
	line "draw all WATER-"
	cont "type moves to a"
	cont "#MON-- it even"
	cont "raises their SP."
	cont "ATK!"
	done

AmbretteAquariumBeautyScript:
	jumptextfaceplayer AmbretteAquariumBeautyText
	
AmbretteAquariumBeautyText:
	text "There are many"
	line "types of #MON"
	cont "in the wider"
	cont "world."
	
	para "Solely WATER-types"
	line "are most populous…"
	
	para "After NORMAL-types"
	line "of course!"
	done
	
AmbretteAquariumTeacherScript:
	jumptextfaceplayer AmbretteAquariumTeacherText
	
AmbretteAquariumTeacherText:
	text "Do you think there"
	line "are still #MON"
	cont "that've never been"
	cont "seen down there?"
	
	para "Deep, deep in the"
	line "depths of the sea…"
	done
	
AmbretteAquariumGuy3Script:
	jumptextfaceplayer AmbretteAquariumGuy3Text
	
AmbretteAquariumGuy3Text:
	text "The #MON on the"
	line "far side of the"
	cont "glass…"
	
	para "All they see every"
	line "day is the strange"
	cont "faces of the"
	cont "humans who have"
	cont "come to see them."
	done

AmbretteAquarium_MapEvents:
	db 0, 0 ; filler
	
	def_warp_events
	warp_event 14, 17, AMBRETTE_TOWN, 7
	warp_event 15, 17, AMBRETTE_TOWN, 7
	warp_event  0,  6, ROUTE_8_LOWER, 1
	warp_event  0,  7, ROUTE_8_LOWER, 2
	
	def_coord_events
	
	def_bg_events
	
	def_object_events
	object_event 17, 14, SPRITE_RECEPTIONIST, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, AmbretteAquariumReceptionistScript, -1
	object_event  5,  7, SPRITE_FISHER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, AmbretteAquariumFisherScript, -1
	object_event  3,  4, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, AmbretteAquariumGuy1Script, -1
	object_event 12,  2, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, AmbretteAquariumBoyScript, -1
	object_event 14,  2, SPRITE_TWIN, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, AmbretteAquariumGirlScript, -1
	object_event 15,  2, SPRITE_FAIRY, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, AmbretteAquariumEspurrScript, -1
	object_event 17,  5, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, AmbretteAquariumGuy2Script, -1
	object_event 17,  6, SPRITE_BEAUTY, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, AmbretteAquariumBeautyScript, -1
	object_event 11,  6, SPRITE_TEACHER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, AmbretteAquariumTeacherScript, -1
	object_event 15, 10, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, AmbretteAquariumGuy3Script, -1