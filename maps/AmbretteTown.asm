	object_const_def
	
AmbretteTown_MapScripts:
	def_scene_scripts
	
	def_callbacks
	
AmbretteTownRockSmashGirlScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_TM08_ROCK_SMASH ; TM_94
	iftrue .AlreadyHaveRockSmash
	writetext GetRockSmashText
	promptbutton
	verbosegiveitem TM_ROCK_SMASH
	setevent EVENT_GOT_TM08_ROCK_SMASH
.AlreadyHaveRockSmash:
	writetext GetRockSmashAfterText
	waitbutton
	closetext
	end
	
GetRockSmashText:
	text "Here, Trainer!"
	line "Use this TM!"
	done
	
GetRockSmashAfterText:
	text "It's rather…"
	line "smashing, don't"
	cont "you think? Hehe!"
	
	para "ROCK SMASH may"
	line "also lower the"
	cont "other #MON's"
	cont "ability to defend"
	cont "itself."
	
	para "That makes up for"
	line "what it lacks in"
	cont "power."
	done
	
AmbretteTownPunkGuyScript:
	faceplayer
	opentext
	checkflag ENGINE_TRADED_DIVE_BALL_TODAY
	iftrue .AlreadyTradedToday
	writetext AmbretteTownPunkGuyOfferText
	yesorno
	iffalse .SaidNo
	checkitem POKE_BALL
	iffalse .NoPokeballs
	takeitem POKE_BALL
	writetext AmbretteTownPunkGuyThanksText
	promptbutton
	verbosegiveitem DIVE_BALL
	setflag ENGINE_TRADED_DIVE_BALL_TODAY
.AlreadyTradedToday:
	writetext AmbretteTownPunkGuyAlreadyTradedText
	waitbutton
	closetext
	end
	
.SaidNo:
	writetext AmbretteTownPunkGuyRefusedText
	waitbutton
	closetext
	end
	
.NoPokeballs:
	writetext AmbretteTownPunkGuyNoBallsText
	waitbutton
	closetext
	end
	
AmbretteTownPunkGuyOfferText:
	text "Yo! This is a"
	line "good deal."
	
	para "Why don't you"
	line "trade a # BALL"
	cont "for my DIVE BALL."
	done
	
AmbretteTownPunkGuyRefusedText:
	text "Oh! Seriously? You"
	line "must be kidding!"
	
	para "Usually people are"
	line "happy to trade!"
	done
	
AmbretteTownPunkGuyNoBallsText:
	text "Oh! Seriously? You"
	line "must be kidding!"
	
	para "Don't you have a"
	line "# BALL?!"
	done
	
AmbretteTownPunkGuyThanksText:
	text "Heh, thanks! Enjoy"
	line "the DIVE BALL!"
	done
	
AmbretteTownPunkGuyAlreadyTradedText:
	text "See? It's a good"
	line "deal, innit?"
	
	para "We can trade again"
	line "tomorrow if you"
	cont "want!"
	done
	
AmbretteTownBeautyScript:
	jumptextfaceplayer AmbretteTownBeautyText
	
AmbretteTownBeautyText:
	text "I wonder how"
	line "strong my SMEARGLE"
	cont "has become since"
	cont "I left her at the"
	cont "DAY CARE."
	
	para "Do you know about"
	line "SMEARGLE's move"
	cont "SKETCH?"
	
	para "It takes the move"
	line "the other #MON"
	cont "used and makes it"
	cont "into its own!"
	done
	
AmbretteAquariumSign:
	jumptext AmbretteAquariumSignText
	
AmbretteAquariumSignText:
	text "AMBRETTE AQUARIUM"
	done
	
AmbretteTownSign:
	jumptext AmbretteTownSignText
	
AmbretteTownSignText:
	text "AMBRETTE TOWN:"
	line "Where amber dust"
	cont "dances."
	done
	
FossilLabSign:
	jumptext FossilLabSignText
	
FossilLabSignText:
	text "FOSSIL LAB"
	line "We restore #MON"
	cont "fossils."
	done
	
AmbretteTownRock:
	jumpstd SmashRockScript	
	
AmbretteTownPearl:
	itemball PEARL
	
AmbretteTownHiddenXAttack:
	hiddenitem X_ATTACK, EVENT_AMBRETTE_TOWN_HIDDEN_X_ATTACK
	
AmbretteTownHiddenRareCandy:
	hiddenitem RARE_CANDY, EVENT_AMBRETTE_TOWN_HIDDEN_RARE_CANDY
	
AmbretteTown_MapEvents:
	db 0, 0 ; filler
	
	def_warp_events
	warp_event 19,  5, AMBRETTE_POKECENTER_1F, 1
	warp_event 27,  5, AMBRETTE_MART, 2
	warp_event 13, 11, AMBRETTE_HOUSE, 1
	warp_event 13, 17, HOTEL_AMBRETTE_1F, 1
	warp_event 27, 14, ROUTE_9_GATE, 1
	warp_event 27, 15, ROUTE_9_GATE, 2
	warp_event 14,  5, AMBRETTE_AQUARIUM, 1
	warp_event 25, 13, FOSSIL_LAB, 1
	
	def_coord_events
	
	def_bg_events
	bg_event 13,  6, BGEVENT_READ, AmbretteAquariumSign
	bg_event 16, 10, BGEVENT_READ, AmbretteTownSign
	bg_event 23, 13, BGEVENT_READ, FossilLabSign
	bg_event 13, 20, BGEVENT_ITEM, AmbretteTownHiddenXAttack
	bg_event  9, 14, BGEVENT_ITEM, AmbretteTownHiddenRareCandy
	
	def_object_events
	object_event 17,  8, SPRITE_BEAUTY, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, AmbretteTownRockSmashGirlScript, -1
	object_event 20, 14, SPRITE_ROCKER, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, AmbretteTownPunkGuyScript, -1
	object_event 16, 20, SPRITE_LASS, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, AmbretteTownBeautyScript, -1
	object_event 15, 22, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, AmbretteTownPearl, EVENT_AMBRETTE_TOWN_PEARL
	object_event 11, 12, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, AmbretteTownRock, -1
	object_event 10, 10, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, AmbretteTownRock, -1
	object_event  9,  8, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, AmbretteTownRock, -1
	object_event 12, 22, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, AmbretteTownRock, -1
