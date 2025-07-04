	object_const_def
	const ROUTE7EAST_GRAMPS
	const ROUTE7EAST_DAY_CARE_MON_1
	const ROUTE7EAST_DAY_CARE_MON_2
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
	callback MAPCALLBACK_OBJECTS, Route7EggCheckCallback
	
Route7EastNoop1Scene:
	end
	
Route7EastNoop2Scene:
	end
	
; Route7EastNoop3Scene:
	; end
	
Route7EggCheckCallback:
	checkflag ENGINE_DAY_CARE_MAN_HAS_EGG
	iftrue .PutDayCareManOutside
	clearevent EVENT_DAY_CARE_MAN_IN_DAY_CARE
	setevent EVENT_DAY_CARE_MAN_ON_ROUTE_7
	sjump .CheckMon1

.PutDayCareManOutside:
	setevent EVENT_DAY_CARE_MAN_IN_DAY_CARE
	clearevent EVENT_DAY_CARE_MAN_ON_ROUTE_7
	sjump .CheckMon1

.CheckMon1:
	checkflag ENGINE_DAY_CARE_MAN_HAS_MON
	iffalse .HideMon1
	clearevent EVENT_DAY_CARE_MON_1
	sjump .CheckMon2

.HideMon1:
	setevent EVENT_DAY_CARE_MON_1
	sjump .CheckMon2

.CheckMon2:
	checkflag ENGINE_DAY_CARE_LADY_HAS_MON
	iffalse .HideMon2
	clearevent EVENT_DAY_CARE_MON_2
	endcallback

.HideMon2:
	setevent EVENT_DAY_CARE_MON_2
	endcallback
	
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
	setevent EVENT_ROUTE_7_SHAUNA
	setevent EVENT_ROUTE_7_FURFROU
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
	
DayCareManScript_Outside:
	faceplayer
	opentext
	special DayCareManOutside
	waitbutton
	closetext
	ifequal TRUE, .end_fail
	clearflag ENGINE_DAY_CARE_MAN_HAS_EGG
	readvar VAR_FACING
	ifequal LEFT, .walk_around_player
	applymovement ROUTE7EAST_GRAMPS, Route7EastMovementData_DayCareManWalksBackInside
	playsound SFX_ENTER_DOOR
	disappear ROUTE7EAST_GRAMPS
.end_fail
	end

.walk_around_player
	applymovement ROUTE7EAST_GRAMPS, Route7EastMovementData_DayCareManWalksBackInside_WalkAroundPlayer
	playsound SFX_ENTER_DOOR
	disappear ROUTE7EAST_GRAMPS
	end
	
Route7EastMovementData_DayCareManWalksBackInside:
	step RIGHT
	step RIGHT
	step UP
	step_end
	
Route7EastMovementData_DayCareManWalksBackInside_WalkAroundPlayer:
	step DOWN
	step RIGHT
	step RIGHT
	step UP	
	step UP
	step_end
	
Route7SnorlaxSleepingText:
	text "SNORLAX is snoring"
	line "peacefully…"
	done
	
Route7BlackBeltScript:
	jumptext Route7EastBlackBeltText

Route7YoungsterScript:
	jumptext Route7EastYoungsterText
	
TrainerArtistGeorgia:
	trainer ARTISTF, GEORGIA, EVENT_BEAT_ARTIST_GEORGIA, ArtistGeorgiaSeenText, ArtistGeorgiaBeatenText, 0, .Script
	
.Script:
	endifjustbattled
	opentext
	writetext ArtistGeorgiaAfterText
	waitbutton
	closetext
	end
	
ArtistGeorgiaSeenText:
	text "A heated battle"
	line "will provide me"
	cont "with just the"
	cont "inspiration that"
	cont "I need!"
	done

ArtistGeorgiaBeatenText:
	text "Excellent! Thank"
	line "you! It's been"
	cont "ages since I've"
	cont "had such a good"
	cont "battle!"
	done
	
ArtistGeorgiaAfterText:
	text "The passion of"
	line "our battle will"
	cont "inspire me to"
	cont "paint something"
	cont "astonishing!"
	done
	
TrainerArtistPierre:
	trainer ARTISTM, PIERRE, EVENT_BEAT_ARTIST_PIERRE, ArtistPierreSeenText, ArtistPierreBeatenText, 0, .Script
	
.Script:
	endifjustbattled
	opentext
	writetext ArtistPierreAfterText
	waitbutton
	closetext
	end
	
ArtistPierreSeenText:
	text "A blank canvas"
	line "before me and"
	cont "no inspiration"
	cont "from which to"
	cont "paint!"
	done	
	
ArtistPierreBeatenText:
	text "I've got it!"
	done
	
ArtistPierreAfterText:
	text "A blank canvas"
	line "means that the"
	cont "possibilities are"
	cont "endless!"
	
	para "I believe I'll"
	line "paint the comings"
	cont "and goings of"
	cont "Trainers like you"
	cont "along this fine"
	cont "Riviere Walk!"
	done
	
TrainerArtistFamilyMonaPaolo1:
	trainer ARTIST_FAMILY, MONAANDPAOLO, EVENT_BEAT_ARTIST_FAMILY_MONA_PAOLO, ArtistFamilyMonaPaoloSeenText, ArtistFamilyMonaPaoloBeatenText, 0, .Script
	
.Script:
	endifjustbattled
	opentext
	writetext ArtistFamilyPaoloAfterText
	waitbutton
	closetext
	end
	
TrainerArtistFamilyMonaPaolo2:
	trainer ARTIST_FAMILY, MONAANDPAOLO, EVENT_BEAT_ARTIST_FAMILY_MONA_PAOLO, ArtistFamilyMonaPaoloSeenText, ArtistFamilyMonaPaoloBeatenText, 0, .Script
	
.Script:
	endifjustbattled
	opentext
	writetext ArtistFamilyMonaAfterText
	waitbutton
	closetext
	end
	
ArtistFamilyMonaPaoloSeenText:
	text "You there! You're"
	line "the perfect model"
	cont "for our next"
	cont "painting!"

	para "Time for a magni-"
	line "ficent battle!"
	done
	
ArtistFamilyMonaPaoloBeatenText:
	text "MONA: Yahoo! This"
	line "is gonna be our"
	cont "best work yet!"
	
	para "PAOLO: I'll never"
	line "forget our battle"
	cont "together!"
	done
	
ArtistFamilyMonaAfterText:
	text "When a battle"
	line "inspires me, it's"
	cont "like the brush"
	cont "moves on its own!"
	done
	
ArtistFamilyPaoloAfterText:
	text "This canvas will"
	line "come alive with"
	cont "the excitement"
	cont "of our battle!"
	done
	
Route7ChateauManScript:
	jumptextfaceplayer Route7ChateauManText
	
Route7ChateauManText:
	text "Our precious"
	line "BATTLE CHATEAU"
	cont "is currently"
	cont "undergoing some"
	cont "renovations."
	
	para "Please be patient"
	line "and enjoy the"
	cont "rest of the demo!"
	done
	
Route7PPUp:
	itemball PP_UP

Route7XSpecial:
	itemball X_SPECIAL
	
Route7FriendBall:
	itemball FRIEND_BALL ; Heal ball?
	
Route7East_MapEvents:
	db 0, 0 ; filler
	
	def_warp_events
	warp_event 39, 15, DAY_CARE, 1
	
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
	object_event 37, 16, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, DayCareManScript_Outside, EVENT_DAY_CARE_MAN_ON_ROUTE_7
	object_event 34, 14, SPRITE_DAY_CARE_MON_1, SPRITEMOVEDATA_POKEMON, 2, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_DAY_CARE_MON_1
	object_event 36, 14, SPRITE_DAY_CARE_MON_2, SPRITEMOVEDATA_POKEMON, 2, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_DAY_CARE_MON_2 
	object_event 47, 19, SPRITE_BIG_SNORLAX, SPRITEMOVEDATA_BIGDOLLSYM, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route7SnorlaxScript, EVENT_ROUTE_7_SNORLAX
	object_event 48, 18, SPRITE_BLACK_BELT, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route7BlackBeltScript, EVENT_ROUTE_7_BLACK_BELT
	object_event 48, 21, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route7YoungsterScript, EVENT_ROUTE_7_YOUNGSTER
	object_event 50, 19, SPRITE_KAREN, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_ROUTE_7_SHAUNA
	object_event 55, 18, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_ROUTE_7_MAN
	object_event 55, 19, SPRITE_MONSTER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_ROUTE_7_FURFROU
	object_event 33, 22, SPRITE_TEACHER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerArtistGeorgia, -1
	object_event  4, 22, SPRITE_ROCKER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 4, TrainerArtistPierre, -1
	object_event 20, 22, SPRITE_ROCKER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 1, TrainerArtistFamilyMonaPaolo1, -1
	object_event 21, 22, SPRITE_TEACHER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 1, TrainerArtistFamilyMonaPaolo2, -1
	object_event  6, 16, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route7ChateauManScript, -1
	object_event  2, 25, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Route7PPUp, EVENT_ROUTE_7_PP_UP
	object_event 26, 25, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Route7XSpecial, EVENT_ROUTE_7_X_SPECIAL
	object_event 48,  6, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Route7FriendBall, EVENT_ROUTE_7_FRIEND_BALL