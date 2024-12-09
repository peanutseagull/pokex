	object_const_def
	const ROUTE7EAST_BIGSNORLAX
	const ROUTE7EAST_BLACK_BELT
	const ROUTE7EAST_YOUNGSTER
	const ROUTE7EAST_SHAUNA
	
Route7East_MapScripts:
	def_scene_scripts
	scene_script Route7EastNoop1Scene, SCENE_ROUTE7EAST_SNORLAX
	; scene_script Route7EastNoop2Scene, SCENE_ROUTE7EAST_POKEFLUTE
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
	applymovement ROUTE7EAST_SHAUNA, Route7EastShaunaLeaves
	disappear ROUTE7EAST_SHAUNA
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
	applymovement ROUTE7EAST_SHAUNA, Route7EastShaunaLeaves
	disappear ROUTE7EAST_SHAUNA
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
	applymovement ROUTE7EAST_SHAUNA, Route7EastShaunaLeaves
	disappear ROUTE7EAST_SHAUNA
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
	applymovement ROUTE7EAST_SHAUNA, Route7EastShaunaLeaves
	disappear ROUTE7EAST_SHAUNA
	setscene SCENE_ROUTE7EAST_NOOP
	end
	
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
	
Route7EastShaunaLeaves:
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step_end
	
Route7Sign:
	jumptext Route7SignText
	
Route7SignText:
	text "ROUTE 7:"
	line "Riviere Walk"
	done
	
Route7SnorlaxScript:
	opentext
	; special SnorlaxAwake
	; iftrue .Awake
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
	
	def_bg_events
	bg_event 71, 17, BGEVENT_READ, Route7Sign
	
	def_object_events
	object_event 47, 19, SPRITE_BIG_SNORLAX, SPRITEMOVEDATA_BIGDOLLSYM, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route7SnorlaxScript, EVENT_ROUTE_7_SNORLAX
	object_event 48, 18, SPRITE_BLACK_BELT, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route7BlackBeltScript, EVENT_ROUTE_7_BLACK_BELT
	object_event 48, 21, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route7YoungsterScript, EVENT_ROUTE_7_YOUNGSTER
	object_event 50, 19, SPRITE_KAREN, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_ROUTE_7_SHAUNA