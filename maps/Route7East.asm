	object_const_def
	const ROUTE7EAST_BIGSNORLAX
	const ROUTE7EAST_BLACK_BELT
	const ROUTE7EAST_YOUNGSTER
	const ROUTE7EAST_SHAUNA
	const ROUTE7EAST_MAN
	const ROUTE7EAST_FURFROU
	
Route7East_MapScripts:
	def_scene_scripts
	scene_script Route7EastNoop1Scene, SCENE_ROUTE7EAST_SNORLAX
	scene_script Route7EastNoop2Scene, SCENE_ROUTE7EAST_POKEFLUTE
	scene_script Route7EastNoop2Scene, SCENE_ROUTE7EAST_NOOP
	
	def_callbacks
	
Route7EastNoop1Scene:
	end
	
Route7EastNoop2Scene:
	end
	
; Route7EastNoop3Scene:
	; end
	
Route7East_SnorlaxScene1:
	opentext
	writetext Route7EastShaunaOverHereText
	waitbutton
	closetext
	showemote EMOTE_SHOCK, PLAYER, 15
	applymovement PLAYER, Route7EastPlayerWalksOverMovement1
	opentext
	writetext Route7EastBlackBeltText
	promptbutton
	writetext Route7EastYoungsterText
	waitbutton
	closetext
	turnobject ROUTE7EAST_SHAUNA, DOWN
	turnobject PLAYER, UP
	opentext
	writetext Route7EastShaunaFinalText
	waitbutton
	closetext
	applymovement ROUTE7EAST_SHAUNA, Route7EastExitsMovement
	disappear ROUTE7EAST_SHAUNA
	setevent EVENT_ROUTE_7_SHAUNA
	setscene SCENE_ROUTE7EAST_NOOP
	end
	
Route7East_SnorlaxScene2:
	opentext
	writetext Route7EastShaunaOverHereText
	waitbutton
	closetext
	showemote EMOTE_SHOCK, PLAYER, 15
	applymovement PLAYER, Route7EastPlayerWalksOverMovement2
	opentext
	writetext Route7EastBlackBeltText
	promptbutton
	writetext Route7EastYoungsterText
	waitbutton
	closetext
	turnobject ROUTE7EAST_SHAUNA, DOWN
	turnobject PLAYER, UP
	opentext
	writetext Route7EastShaunaFinalText
	waitbutton
	closetext
	applymovement ROUTE7EAST_SHAUNA, Route7EastExitsMovement
	disappear ROUTE7EAST_SHAUNA
	setevent EVENT_ROUTE_7_SHAUNA
	setscene SCENE_ROUTE7EAST_NOOP
	end
	
Route7East_SnorlaxScene3:
	opentext
	writetext Route7EastShaunaOverHereText
	waitbutton
	closetext
	showemote EMOTE_SHOCK, PLAYER, 15
	applymovement PLAYER, Route7EastPlayerWalksOverMovement3
	opentext
	writetext Route7EastBlackBeltText
	promptbutton
	writetext Route7EastYoungsterText
	waitbutton
	closetext
	turnobject ROUTE7EAST_SHAUNA, DOWN
	turnobject PLAYER, UP
	opentext
	writetext Route7EastShaunaFinalText
	waitbutton
	closetext
	applymovement ROUTE7EAST_SHAUNA, Route7EastExitsMovement
	disappear ROUTE7EAST_SHAUNA
	setevent EVENT_ROUTE_7_SHAUNA
	setscene SCENE_ROUTE7EAST_NOOP
	end
	
Route7East_SnorlaxScene4:
	opentext
	writetext Route7EastShaunaOverHereText
	waitbutton
	closetext
	showemote EMOTE_SHOCK, PLAYER, 15
	applymovement PLAYER, Route7EastPlayerWalksOverMovement4
	opentext
	writetext Route7EastBlackBeltText
	promptbutton
	writetext Route7EastYoungsterText
	waitbutton
	closetext
	turnobject ROUTE7EAST_SHAUNA, DOWN
	turnobject PLAYER, UP
	opentext
	writetext Route7EastShaunaFinalText
	waitbutton
	closetext
	applymovement ROUTE7EAST_SHAUNA, Route7EastExitsMovement
	disappear ROUTE7EAST_SHAUNA
	setevent EVENT_ROUTE_7_SHAUNA
	setscene SCENE_ROUTE7EAST_NOOP
	end
	
Route7East_PokeFluteScene1:
	turnobject PLAYER, LEFT
	moveobject ROUTE7EAST_SHAUNA, 55, 20
	appear ROUTE7EAST_SHAUNA
	applymovement ROUTE7EAST_SHAUNA, Route7EastEntersMovement
	showemote EMOTE_SHOCK, ROUTE7EAST_BLACK_BELT, 15
	showemote EMOTE_SHOCK, ROUTE7EAST_YOUNGSTER, 15
	turnobject ROUTE7EAST_BLACK_BELT, RIGHT
	turnobject ROUTE7EAST_YOUNGSTER, RIGHT
	opentext
	writetext Route7EastBlackBeltPokefluteText
	waitbutton
	closetext
	turnobject ROUTE7EAST_BLACK_BELT, DOWN
	turnobject ROUTE7EAST_YOUNGSTER, UP
	special FadeOutMusic
	playmusic MUSIC_POKE_FLUTE_CHANNEL
	pause 15
	cry SNORLAX
	closetext
	loadvar VAR_BATTLETYPE, BATTLETYPE_FORCEITEM
	loadwildmon SNORLAX, 20
	startbattle
	disappear ROUTE7EAST_BIGSNORLAX
	setevent EVENT_ROUTE_7_SNORLAX
	reloadmapafterbattle
	opentext
	writetext Route7EastAfterSnorlaxText1
	waitbutton
	closetext
	showemote EMOTE_SHOCK, PLAYER, 15
	turnobject PLAYER, UP
	showemote EMOTE_SHOCK, ROUTE7EAST_SHAUNA, 15
	turnobject ROUTE7EAST_SHAUNA, UP
	showemote EMOTE_SHOCK, ROUTE7EAST_BLACK_BELT, 15
	turnobject ROUTE7EAST_BLACK_BELT, RIGHT
	showemote EMOTE_SHOCK, ROUTE7EAST_YOUNGSTER, 15
	turnobject ROUTE7EAST_YOUNGSTER, UP
	appear ROUTE7EAST_MAN
	appear ROUTE7EAST_FURFROU
	follow ROUTE7EAST_MAN, ROUTE7EAST_FURFROU
	applymovement ROUTE7EAST_MAN, Route7EastEntersMovement
	stopfollow
	opentext
	writetext Route7EastAfterSnorlaxText2
	waitbutton
	closetext
	turnobject ROUTE7EAST_MAN, RIGHT
	opentext
	writetext Route7EastAfterSnorlaxText3
	waitbutton
	closetext
	turnobject ROUTE7EAST_MAN, LEFT
	opentext
	writetext Route7EastAfterSnorlaxText4
	waitbutton
	closetext
	follow ROUTE7EAST_FURFROU, ROUTE7EAST_MAN
	applymovement ROUTE7EAST_FURFROU, Route7EastExitsMovement
	disappear ROUTE7EAST_FURFROU
	disappear ROUTE7EAST_MAN
	applymovement ROUTE7EAST_BLACK_BELT, Route7EastExitsMovement
	disappear ROUTE7EAST_BLACK_BELT
	turnobject PLAYER, RIGHT
	turnobject ROUTE7EAST_SHAUNA, RIGHT
	applymovement ROUTE7EAST_YOUNGSTER, Route7EastExitsMovement
	disappear ROUTE7EAST_YOUNGSTER
	opentext
	writetext Route7EastAfterSnorlaxText5
	waitbutton
	closetext
	turnobject ROUTE7EAST_SHAUNA, UP
	turnobject PLAYER, DOWN
	opentext
	writetext Route7EastAfterSnorlaxText6
	waitbutton
	closetext
	applymovement ROUTE7EAST_SHAUNA, Route7EastEntersMovement
	disappear ROUTE7EAST_SHAUNA
	turnobject PLAYER, LEFT
	setscene SCENE_ROUTE7EAST_NOOP
	end
	
Route7East_PokeFluteScene2:
	applymovement PLAYER, Route7EastRepositionPlayerMovement
	turnobject PLAYER, LEFT
	moveobject ROUTE7EAST_SHAUNA, 55, 20
	appear ROUTE7EAST_SHAUNA
	applymovement ROUTE7EAST_SHAUNA, Route7EastEntersMovement
	showemote EMOTE_SHOCK, ROUTE7EAST_BLACK_BELT, 15
	showemote EMOTE_SHOCK, ROUTE7EAST_YOUNGSTER, 15
	turnobject ROUTE7EAST_BLACK_BELT, RIGHT
	turnobject ROUTE7EAST_YOUNGSTER, RIGHT
	opentext
	writetext Route7EastBlackBeltPokefluteText
	waitbutton
	closetext
	turnobject ROUTE7EAST_BLACK_BELT, DOWN
	turnobject ROUTE7EAST_YOUNGSTER, UP
	special FadeOutMusic
	playmusic MUSIC_POKE_FLUTE_CHANNEL
	pause 15
	cry SNORLAX
	closetext
	loadvar VAR_BATTLETYPE, BATTLETYPE_FORCEITEM
	loadwildmon SNORLAX, 20
	startbattle
	disappear ROUTE7EAST_BIGSNORLAX
	setevent EVENT_ROUTE_7_SNORLAX
	reloadmapafterbattle
	opentext
	writetext Route7EastAfterSnorlaxText1
	waitbutton
	closetext
	showemote EMOTE_SHOCK, PLAYER, 15
	turnobject PLAYER, UP
	showemote EMOTE_SHOCK, ROUTE7EAST_SHAUNA, 15
	turnobject ROUTE7EAST_SHAUNA, UP
	showemote EMOTE_SHOCK, ROUTE7EAST_BLACK_BELT, 15
	turnobject ROUTE7EAST_BLACK_BELT, RIGHT
	showemote EMOTE_SHOCK, ROUTE7EAST_YOUNGSTER, 15
	turnobject ROUTE7EAST_YOUNGSTER, UP
	appear ROUTE7EAST_MAN
	appear ROUTE7EAST_FURFROU
	follow ROUTE7EAST_MAN, ROUTE7EAST_FURFROU
	applymovement ROUTE7EAST_MAN, Route7EastEntersMovement
	stopfollow
	opentext
	writetext Route7EastAfterSnorlaxText2
	waitbutton
	closetext
	turnobject ROUTE7EAST_MAN, RIGHT
	opentext
	writetext Route7EastAfterSnorlaxText3
	waitbutton
	closetext
	turnobject ROUTE7EAST_MAN, LEFT
	opentext
	writetext Route7EastAfterSnorlaxText4
	waitbutton
	closetext
	follow ROUTE7EAST_FURFROU, ROUTE7EAST_MAN
	applymovement ROUTE7EAST_FURFROU, Route7EastExitsMovement
	disappear ROUTE7EAST_FURFROU
	disappear ROUTE7EAST_MAN
	applymovement ROUTE7EAST_BLACK_BELT, Route7EastExitsMovement
	disappear ROUTE7EAST_BLACK_BELT
	clearevent EVENT_SHABBONEAU_CASTLE_BLACK_BELT
	turnobject PLAYER, RIGHT
	turnobject ROUTE7EAST_SHAUNA, RIGHT
	applymovement ROUTE7EAST_YOUNGSTER, Route7EastExitsMovement
	disappear ROUTE7EAST_YOUNGSTER
	opentext
	writetext Route7EastAfterSnorlaxText5
	waitbutton
	closetext
	turnobject ROUTE7EAST_SHAUNA, UP
	turnobject PLAYER, DOWN
	opentext
	writetext Route7EastAfterSnorlaxText6
	waitbutton
	closetext
	applymovement ROUTE7EAST_SHAUNA, Route7EastEntersMovement
	disappear ROUTE7EAST_SHAUNA
	turnobject PLAYER, LEFT
	setscene SCENE_ROUTE7EAST_NOOP
	end
	
Route7EastAfterSnorlaxText1:
	text "SHAUNA: Wow! What"
	line "a battle!"
	
	para "FURFROU: Grrr!"
	line "Ouaf!"
	done
	
Route7EastAfterSnorlaxText2:
	text "SHAUNA: Oh…"
	
	para "PARFUM MAN: The"
	line "only thing I can"
	cont "do with that"
	cont "# FLUTE is"
	cont "display it."
	
	para "But you've been"
	line "playing since you"
	cont "were little,"
	cont "and the tone is"
	cont "lovely."
	done

Route7EastAfterSnorlaxText3:
	text "It seems like my"
	line "FURFROU also"
	cont "likes the sound"
	cont "of that flute."
	
	para "Not as much as it"
	line "likes my amazing,"
	cont "wonderfrou fire-"
	cont "works, of course."
	done
	
Route7EastAfterSnorlaxText4:
	text "SHABBONEAU MAN:"
	line "Uh… Yeah… I guess"
	cont "so…"
	
	para "PARFUM MAN: But"
	line "your playing"
	cont "sounded better"
	cont "back in the day."
	
	para "I'll let you take"
	line "care of my flute,"
	cont "so be sure to"
	cont "practise more."
	done
	
Route7EastAfterSnorlaxText5:
	text "Was THAT supposed"
	line "to be an attempt"
	cont "to patch things"
	cont "up???"
	done
	
Route7EastAfterSnorlaxText6:
	text "Well, whatever!"
	line "All's well that"
	cont "ends well."
	
	para "I wonder what"
	line "lies past where"
	cont "SNORLAX was…"
	
	para "I'm gonna go"
	line "investigate!"
	
	para "Catch ya later,"
	line "<PLAY_G>!"
	done

Route7EastBlackBeltPokefluteText:
	text "Oh, it's you two."
	
	para "Wait… that flute…"
	line "This is just what"
	cont "we need!"
	
	para "I haven't seen"
	line "this for years!"
	
	para "I'd completely"
	line "forgotten about"
	cont "it!"
	
	para "If I play this,"
	line "this #MON will"
	cont "wake up!"
	
	para "Although, it will"
	line "be grumpy when it"
	cont "wakes up-- it"
	cont "might attack."
	
	para "I'll play the"
	line "flute right now-"
	cont "be ready for a"
	cont "fight!"
	done
	
Route7EastShaunaOverHereText:
	text "SHAUNA: <PLAY_G>!"
	line "OVER HERE!!!"
	done
	
Route7EastBlackBeltText:
	text "MAN: Here we go"
	line "again."
	
	para "It's sleeping so"
	line "soundly, the end"
	cont "of the world"
	cont "wouldn't wake it."
	done
	
Route7EastYoungsterText:
	text "GUY: Look!"
	line "It's practically"
	cont "a mountain!"
	
	para "It's blocking the"
	line "road completely!"
	
	para "How are we gonna"
	line "wake this thing"
	cont "up?"
	done
	
Route7EastShaunaFinalText:
	text "Hmm… <PLAY_G>."
	line "How do you think"
	cont "we can help?"
	
	para "Let's go look for"
	line "something to wake"
	cont "up this thing!"
	
	para "I wonder what's"
	line "up that other"
	cont "route?"
	
	para "I'll race you!"
	done
	
Route7EastPlayerWalksOverMovement1:
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step DOWN
	step DOWN
	step LEFT
	step_end
	
Route7EastPlayerWalksOverMovement2:
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step DOWN
	step LEFT
	step_end
	
Route7EastPlayerWalksOverMovement3:
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step_end

Route7EastPlayerWalksOverMovement4:
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step UP
	step LEFT
	step_end
	
Route7EastExitsMovement:
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step_end
	
Route7EastEntersMovement:
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step_end
	
Route7EastRepositionPlayerMovement:
	step UP
	step_end
	
Route7Sign:
	jumptext Route7SignText
	
Route7SignText:
	text "ROUTE 7:"
	line "Riviere Walk"
	done
	
Route7SnorlaxScript:
	opentext
	writetext Route7SnorlaxSleepingText
	waitbutton
	closetext
	end

; .Awake:
	; writetext VermilionCityRadioNearSnorlaxText
	; pause 15
	; cry SNORLAX
	; closetext
	; loadvar VAR_BATTLETYPE, BATTLETYPE_FORCEITEM
	; loadwildmon SNORLAX, 50
	; startbattle
	; disappear VERMILIONCITY_BIG_SNORLAX
	; setevent EVENT_FOUGHT_SNORLAX
	; reloadmapafterbattle
	; end
	
Route7SnorlaxSleepingText:
	text "SNORLAX is snoring"
	line "peacefully…"
	done
	
Route7BlackBeltScript:
	jumptext Route7EastBlackBeltText

Route7YoungsterScript:
	jumptext Route7EastYoungsterText
	
Route7East_MapEvents:
	db 0, 0 ; filler
	
	def_warp_events
	
	def_coord_events
	coord_event 77, 18, SCENE_ROUTE7EAST_SNORLAX, Route7East_SnorlaxScene1
	coord_event 77, 19, SCENE_ROUTE7EAST_SNORLAX, Route7East_SnorlaxScene2
	coord_event 77, 20, SCENE_ROUTE7EAST_SNORLAX, Route7East_SnorlaxScene3
	coord_event 77, 21, SCENE_ROUTE7EAST_SNORLAX, Route7East_SnorlaxScene4
	coord_event 49, 19, SCENE_ROUTE7EAST_POKEFLUTE, Route7East_PokeFluteScene1
	coord_event 49, 20, SCENE_ROUTE7EAST_POKEFLUTE, Route7East_PokeFluteScene2
	
	def_bg_events
	bg_event 71, 17, BGEVENT_READ, Route7Sign
	
	def_object_events
	object_event 47, 19, SPRITE_BIG_SNORLAX, SPRITEMOVEDATA_BIGDOLLSYM, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route7SnorlaxScript, EVENT_ROUTE_7_SNORLAX
	object_event 48, 18, SPRITE_BLACK_BELT, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route7BlackBeltScript, EVENT_ROUTE_7_BLACK_BELT
	object_event 48, 21, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route7YoungsterScript, EVENT_ROUTE_7_YOUNGSTER
	object_event 50, 19, SPRITE_KAREN, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_ROUTE_7_SHAUNA
	object_event 55, 18, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_ROUTE_7_MAN
	object_event 55, 19, SPRITE_MONSTER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_ROUTE_7_FURFROU