	object_const_def
	const GEOSENGETOWN_FLARE1
	const GEOSENGETOWN_FLARE2
	const GEOSENGETOWN_SERENA
	const GEOSENGETOWN_GUIDE
	const GEOSENGETOWN_KORRINA
	const GEOSENGETOWN_INTHEWAY1
	const GEOSENGETOWN_INTHEWAY2
	const GEOSENGETOWN_INTHEWAY3
	const GEOSENGETOWN_INTHEWAY4
	
GeosengeTown_MapScripts:
	def_scene_scripts
	scene_script GeosengeTownNoop1Scene, SCENE_GEOSENGETOWN_NOOP
	scene_script GeosengeTownNoop2Scene, SCENE_GEOSENGETOWN_FLARES_1
	scene_script GeosengeTownNoop3Scene, SCENE_GEOSENGETOWN_FLARES_2
	scene_script GeosengeTownNoop4Scene, SCENE_GEOSENGETOWN_KORRINA
	
	def_callbacks
	
GeosengeTownNoop1Scene:
	end
	
GeosengeTownNoop2Scene:
	end
	
GeosengeTownNoop3Scene:
	end
	
GeosengeTownNoop4Scene:
	end
	
GeosengeTownFlareStandsAround1:
	showemote PLAYER, EMOTE_SHOCK, 15
	opentext
	writetext GeosengeTownFlareAdmiresGeosengeText
	waitbutton
	closetext
	applymovement GEOSENGETOWN_FLARE1, GeosengeTownFlareWalksAwayMovement1
	setevent EVENT_GEOSENGE_TOWN_FLARE1
	disappear GEOSENGETOWN_FLARE1
	clearevent EVENT_GEOSENGE_TOWN_FLARE2
	appear GEOSENGETOWN_FLARE2
	setscene SCENE_GEOSENGETOWN_FLARES_2
	end
	
GeosengeTownFlareStandsAround2:
	showemote PLAYER, EMOTE_SHOCK, 15
	opentext
	writetext GeosengeTownFlareAdmiresGeosengeText
	waitbutton
	closetext
	applymovement GEOSENGETOWN_FLARE1, GeosengeTownFlareWalksAwayMovement1
	setevent EVENT_GEOSENGE_TOWN_FLARE1
	disappear GEOSENGETOWN_FLARE1
	clearevent EVENT_GEOSENGE_TOWN_FLARE2
	appear GEOSENGETOWN_FLARE2
	setscene SCENE_GEOSENGETOWN_FLARES_2
	end	
	
GeosengeTownFlareAdmiresGeosengeText:
	text "GEOSENGE TOWN is"
	line "the town of"
	cont "stones!" ; ♪
	done
	
GeosengeTownFlareWalksAwayMovement1:
	step UP
	step UP
	step UP
	step_end
	
GeosengeTownFlareHarassesYou:
	turnobject GEOSENGETOWN_FLARE2, DOWN
	turnobject PLAYER, UP
	opentext
	writetext GeosengeTownFlareHarassesYouText
	waitbutton
	closetext
	applymovement GEOSENGETOWN_FLARE2, GeosengeTownFlareWalksAwayMovement2
	disappear GEOSENGETOWN_FLARE2
	setevent EVENT_GEOSENGE_TOWN_FLARE2
	setevent EVENT_GEOSENGE_TOWN_FLARE1
	setevent EVENT_ROUTE_10_FLARES
	clearevent EVENT_GEOSENGE_TOWN_SERENA
	appear GEOSENGETOWN_SERENA
	applymovement GEOSENGETOWN_SERENA, GeosengeTownSerenaApproachesYouMovement
	turnobject PLAYER, DOWN
	opentext
	writetext GeosengeTownSerenaAsksYouAboutFlareText
	yesorno ; yes or no...
	iffalse .saidno
	writetext GeosengeTownSaidYesText
	sjump .Continue	
.saidno
	writetext GeosengeTownSaidNoText
.Continue
	writetext GeosengeTownSerenaContinuesText
	; Add Serena battle here?
	waitbutton
	closetext
	applymovement GEOSENGETOWN_SERENA, GeosengeTownSerenaLeavesMovement
	disappear GEOSENGETOWN_SERENA
	setevent EVENT_GEOSENGE_TOWN_SERENA
	setevent EVENT_GEOSENGE_TOWN_IN_THE_WAY
	disappear GEOSENGETOWN_INTHEWAY1
	disappear GEOSENGETOWN_INTHEWAY2
	disappear GEOSENGETOWN_INTHEWAY3
	disappear GEOSENGETOWN_INTHEWAY4
	clearevent EVENT_GEOSENGE_TOWN_GUIDE
	appear GEOSENGETOWN_GUIDE
	setscene SCENE_GEOSENGETOWN_KORRINA
	reloadmap
	end

GeosengeTownFlareHarassesYouText:
	text "Hear this, pip-"
	line "squeak!"
	
	para "TEAM FLARE is"
	line "gonna use the"
	cont "stones on ROUTE 10"
	cont "and a fantastic"
	cont "treasure to make"
	cont "everyone on our"
	cont "team happy!"
	
	para "In this world,"
	line "the ones who have"
	cont "power are the ones"
	cont "who win with"
	cont "flair!"
	done
	
GeosengeTownSerenaAsksYouAboutFlareText:
	text "<PLAYER>, was"
	line "someone from TEAM"
	cont "FLARE here just"
	cont "now?"
	done
	
GeosengeTownSaidYesText:
	text "He was here…"
	line "But he isn't"
	cont "anymore, is he?"
	done
	
GeosengeTownSaidNoText:
	text "You don't need to"
	line "protect me!"
	
	para "I chased a TEAM"
	line "FLARE GRUNT here."
	done
	
GeosengeTownSerenaContinuesText:
	text "The only thing"
	line "past here is a"
	cont "dead end…"
	
	para "There's something"
	line "very weird about"
	cont "TEAM FLARE…"
	done
	
GeosengeTownFlareWalksAwayMovement2:
	step LEFT
	step UP
	step LEFT
	step UP
	step UP
	step_end
	
GeosengeTownSerenaApproachesYouMovement:
	step UP
	step UP
	step UP
	step UP
	step_end
	
GeosengeTownSerenaLeavesMovement:
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step_end
	
GeosengeTownKorrina1:
	clearevent EVENT_GEOSENGE_TOWN_KORRINA
	appear GEOSENGETOWN_KORRINA
	; LUCARIO! What are you doing?
	showemote PLAYER, EMOTE_SHOCK, 15
	turnobject PLAYER, LEFT
	applymovement GEOSENGETOWN_KORRINA, GeosengeTownApproachesYouMovement
	opentext
	writetext GeosengeTownKorrinaText1
	waitbutton
	closetext
	winlosstext GeosengeTownKorrinaWinText, 0
	setlasttalked GEOSENGETOWN_KORRINA
	loadtrainer KORRINA, KORRINA1
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	opentext
	writetext GeosengeTownKorrinaAfterText
	waitbutton
	closetext
	applymovement GEOSENGETOWN_KORRINA, GeosengeTownKorrinaLeavesMovement1
	disappear GEOSENGETOWN_KORRINA
	setevent EVENT_GEOSENGE_TOWN_KORRINA
	setscene SCENE_GEOSENGETOWN_NOOP
	end
	
GeosengeTownKorrina2:
	clearevent EVENT_GEOSENGE_TOWN_KORRINA
	moveobject GEOSENGETOWN_KORRINA, 25, 26
	appear GEOSENGETOWN_KORRINA
	; LUCARIO! What are you doing?
	showemote PLAYER, EMOTE_SHOCK, 15
	turnobject PLAYER, LEFT
	applymovement GEOSENGETOWN_KORRINA, GeosengeTownApproachesYouMovement
	opentext
	writetext GeosengeTownKorrinaText1
	waitbutton
	closetext
	winlosstext GeosengeTownKorrinaWinText, 0
	setlasttalked GEOSENGETOWN_KORRINA
	loadtrainer KORRINA, KORRINA1
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	opentext
	writetext GeosengeTownKorrinaAfterText
	waitbutton
	closetext
	applymovement GEOSENGETOWN_KORRINA, GeosengeTownKorrinaLeavesMovement1
	disappear GEOSENGETOWN_KORRINA
	setevent EVENT_GEOSENGE_TOWN_KORRINA
	setscene SCENE_GEOSENGETOWN_NOOP
	end

GeosengeTownKorrina3:
	clearevent EVENT_GEOSENGE_TOWN_KORRINA
	moveobject GEOSENGETOWN_KORRINA, 25, 27
	appear GEOSENGETOWN_KORRINA
	; LUCARIO! What are you doing?
	showemote PLAYER, EMOTE_SHOCK, 15
	turnobject PLAYER, LEFT
	applymovement GEOSENGETOWN_KORRINA, GeosengeTownApproachesYouMovement
	opentext
	writetext GeosengeTownKorrinaText1
	waitbutton
	closetext
	winlosstext GeosengeTownKorrinaWinText, 0
	setlasttalked GEOSENGETOWN_KORRINA
	loadtrainer KORRINA, KORRINA1
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	opentext
	writetext GeosengeTownKorrinaAfterText
	waitbutton
	closetext
	applymovement GEOSENGETOWN_KORRINA, GeosengeTownKorrinaLeavesMovement2
	disappear GEOSENGETOWN_KORRINA
	setevent EVENT_GEOSENGE_TOWN_KORRINA
	setscene SCENE_GEOSENGETOWN_NOOP
	end


GeosengeTownKorrinaText1:
	text "Hey! You're that"
	line "Trainer from ROUTE"
	cont "5!"
	
	; para "LUCARIO: Awwof!" Not enough object events to show the LUCARIO
	
	; para "I'm not exactly"
	; line "sure, but I think"
	; cont "LUCARIO is saying"
	; cont "it wants to battle"
	; cont "with you."
	
	para "My #MON have"
	line "been itching to"
	cont "battle with you!"
	
	para "Would you battle"
	line "with us?"
	
	; para "So, I have two" ; Lucario is not in the game
	; line "LUCARIO…"
	
	; para "But do you know"
	; line "which is the one"
	; cont "that has taken a"
	; cont "shine to you?"
	done
	
GeosengeTownKorrinaWinText:
	text "Wh-what?! Not even"
	line "my ultra-powerful"
	cont "#MON could" ; LUCARIO duo
	cont "stand up to you?!"
	done
	
GeosengeTownKorrinaAfterText:
	text "OK! Now I get it!"
	line "I see why LUCARIO"
	cont "likes you so much!"
	
	; TOO MUCH EXPLAINING:
	; so do you remember that I'm the Gym Leader in Shalour City?
	; Once you get past the cave just beyond here, you'll be there, so stop by and say hello
	
	para "Until we meet"
	line "again, Trainer!"
	done

GeosengeTownApproachesYouMovement:
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step_end
	
GeosengeTownKorrinaLeavesMovement1:
	step DOWN
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step_end
	
GeosengeTownKorrinaLeavesMovement2:
	step UP
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step_end
	
GeosengeTownGuideScript:
	faceplayer
	opentext
	writetext GeosengeTownGuideText
	waitbutton
	closetext
	setevent EVENT_GEOSENGE_TOWN_GUIDE
	clearevent EVENT_HOTEL_MARINE_SNOW_GUIDE
	disappear GEOSENGETOWN_GUIDE
	reloadmap
	end
	
GeosengeTownGuideText:
	text "Hey, you!"
	line "If you want to"
	cont "know more about"
	cont "the stones,"
	cont "come to the HOTEL!"
	done

GeosengeTownBeautyScript:
	jumptextfaceplayer GeosengeTownBeautyText
	
GeosengeTownBeautyText:
	text "You're a pretty"
	line "sophisticated"
	cont "traveller if you"
	line "are here to check"
	cont "out the monument."
	done
	
GeosengeTownRockerScript:
	jumptextfaceplayer GeosengeTownRockerText
	
GeosengeTownRockerText:
	text "Nothing but rocks"
	line "here, you say?"
	
	para "Non, non! You"
	line "don't get it."
	
	para "This town has"
	line "nothing else, so"
	cont "it's obvious how"
	cont "amazing the stones"
	cont "are!"
	done
	
GeosengeTownCooltrainerFInTheWay:
	jumptext GeosengeTownCooltrainerFInTheWayText
	
GeosengeTownCooltrainerFInTheWayText:
	text "And in conclusion…"
	
	para "The stones on"
	line "ROUTE 10 are lined"
	cont "up so they connect"
	cont "to GEOSENGE TOWN."
	
	para "CYLLAGE CITY's Gym"
	line "Leader, GRANT, is"
	cont "researching them,"
	cont "but much about"
	cont "these stones"
	cont "remains unknown."
	done
	
GeosengeTownFisherInTheWay1:
	jumptextfaceplayer GeosengeTownFisherInTheWay1Text
	
GeosengeTownFisherInTheWay1Text:
	text "So in the end"
	line "nobody really"
	cont "knows…"
	
	para "The world is full"
	line "of things like"
	cont "that."
	done
	
GeosengeTownFisherInTheWay2:
	jumptextfaceplayer GeosengeTownFisherInTheWay2Text
	
GeosengeTownFisherInTheWay2Text:
	text "This has to be the"
	line "workd of extra-"
	cont "terrestrials!"
	
	para "There's no other"
	line "explanation!"
	done
	
GeosengeTownFisherInTheWay3:
	jumptextfaceplayer GeosengeTownFisherInTheWay3Text
	
GeosengeTownFisherInTheWay3Text:
	text "Arranging so many"
	line "stones like that"
	cont "is impressive."
	
	para "People 3,000 years"
	line "ago were amazing."
	done
	
GeosengeTownPokecenterSign:
	jumpstd PokecenterSignScript

GeosengeTownMartSign:
	jumpstd MartSignScript
	
GeosengeTownSign:
	jumptext GeosengeTownSignText
	
GeosengeTownSignText:
	text "GEOSENGE TOWN:"
	line "Quiet stones speak"
	cont "volumes."
	done
	
GeosengeTownRocksSign:
	jumptext GeosengeTownRocksSignText
	
GeosengeTownRocksSignText:
	text "These ancient"
	line "stones are said to"
	cont "emit a mysterious"
	cont "power."
	done
	
GeosengeTownSuspiciousRocks:
	jumptext GeosengeTownSuspiciousRocksText

GeosengeTownSuspiciousRocksText:
	text "It's an ancient"
	line "artifact?"
	done
	
GeosengeTownSoftSand:
	itemball SOFT_SAND
	
; GeosengeTownTimerBall:
	; itemball TIMER_BALL
	
GeosengeTown_MapEvents:
	db 0, 0 ; filler
	
	def_warp_events
	warp_event 15, 35, GEOSENGE_POKECENTER_1F, 1
	warp_event 11, 21, GEOSENGE_MART, 2
	warp_event  9, 29, GEOSENGE_HOUSE_1, 1
	warp_event 17, 11, GEOSENGE_HOUSE_2, 1
	warp_event 21, 35, HOTEL_MARINE_SNOW_1F, 1
	
	def_coord_events
	coord_event 18, 32, SCENE_GEOSENGETOWN_FLARES_1, GeosengeTownFlareStandsAround1
	coord_event 19, 32, SCENE_GEOSENGETOWN_FLARES_1, GeosengeTownFlareStandsAround2
	coord_event  6,  9, SCENE_GEOSENGETOWN_FLARES_2, GeosengeTownFlareHarassesYou
	coord_event 30, 25, SCENE_GEOSENGETOWN_KORRINA, GeosengeTownKorrina1
	coord_event 30, 26, SCENE_GEOSENGETOWN_KORRINA, GeosengeTownKorrina2
	coord_event 30, 27, SCENE_GEOSENGETOWN_KORRINA, GeosengeTownKorrina3
	
	def_bg_events
	bg_event 16, 35, BGEVENT_READ, GeosengeTownPokecenterSign
	bg_event 12, 21, BGEVENT_READ, GeosengeTownMartSign
	bg_event 17, 27, BGEVENT_READ, GeosengeTownSign
	bg_event 19, 21, BGEVENT_READ, GeosengeTownRocksSign
	bg_event  1,  1, BGEVENT_READ, GeosengeTownSuspiciousRocks
	bg_event  2,  1, BGEVENT_READ, GeosengeTownSuspiciousRocks
	
	def_object_events
	object_event 18, 30, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_GEOSENGE_TOWN_FLARE1
	object_event  5,  7, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_GEOSENGE_TOWN_FLARE2
	object_event  6, 14, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_GEOSENGE_TOWN_SERENA
	object_event 16, 29, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, GeosengeTownGuideScript, EVENT_GEOSENGE_TOWN_GUIDE
	object_event 25, 25, SPRITE_WHITNEY, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, ObjectEvent, EVENT_GEOSENGE_TOWN_KORRINA
	object_event 29, 26, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, GeosengeTownCooltrainerFInTheWay, EVENT_GEOSENGE_TOWN_IN_THE_WAY
	object_event 31, 25, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GeosengeTownFisherInTheWay1, EVENT_GEOSENGE_TOWN_IN_THE_WAY
	object_event 31, 26, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GeosengeTownFisherInTheWay2, EVENT_GEOSENGE_TOWN_IN_THE_WAY
	object_event 31, 27, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GeosengeTownFisherInTheWay3, EVENT_GEOSENGE_TOWN_IN_THE_WAY
	object_event  4, 39, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, GeosengeTownSoftSand, EVENT_GEOSENGE_TOWN_SOFT_SAND
	; object_event 23, 31, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, GeosengeTownTimerBall, EVENT_GEOSENGE_TOWN_TIMER_BALL
	object_event 13, 27, SPRITE_BEAUTY, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GeosengeTownBeautyScript, -1
	object_event 10, 24, SPRITE_ROCKER, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GeosengeTownRockerScript, -1