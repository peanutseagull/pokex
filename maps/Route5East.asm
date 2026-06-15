	object_const_def
	const ROUTE5EAST_KORRINA
	const ROUTE5EAST_LUCARIO1
	const ROUTE5EAST_LUCARIO2
	const ROUTE5EAST_SUPER_NERD
	const ROUTE5EAST_FISHER
	
Route5East_MapScripts:
	def_scene_scripts
	scene_script Route5EastNoop1Scene, SCENE_ROUTE5EAST_KORRINA
	scene_script Route5EastNoop2Scene, SCENE_ROUTE5EAST_TIERNO
	scene_script Route5EastNoop3Scene, SCENE_ROUTE5EAST_NOOP
	
	def_callbacks
	
Route5EastNoop1Scene:
	end
	
Route5EastNoop2Scene:
	end
	
Route5EastNoop3Scene:
	end
	
Route5KorrinaScene1:
	clearevent EVENT_ROUTE_5_EAST_KORRINA
	appear ROUTE5EAST_LUCARIO1
	showemote PLAYER, EMOTE_SHOCK, 15
	applymovement ROUTE5EAST_LUCARIO1, Route5EastLucarioApproachesYouMovement1
	opentext
	writetext Route5EastLucarioText
	cry MACHAMP ; LUCARIO
	waitsfx
	promptbutton
	writetext Route5EastKorrinaYellsText
	waitbutton
	closetext
	moveobject ROUTE5EAST_KORRINA, 41, 10
	moveobject ROUTE5EAST_LUCARIO2, 41, 11
	appear ROUTE5EAST_KORRINA
	appear ROUTE5EAST_LUCARIO2 
	follow ROUTE5EAST_KORRINA, ROUTE5EAST_LUCARIO2
	applymovement ROUTE5EAST_KORRINA, Route5EastKorrinaApproachesYouMovement
	stopfollow
	applymovement ROUTE5EAST_LUCARIO2, Route5EastLucario2Movement1
	opentext
	writetext Route5EastKorrinaText1
	waitbutton
	closetext
	turnobject ROUTE5EAST_LUCARIO1, LEFT
	cry MACHAMP
	waitsfx
	opentext
	writetext Route5EastLucarioText
	waitbutton
	closetext
	turnobject ROUTE5EAST_LUCARIO1, RIGHT
	opentext
	writetext Route5EastKorrinaText2
	; loadmenu .MenuHeader
	; verticalmenu
	; closewindow
	promptbutton
	writetext Route5EastSaidThanksText
	waitbutton
	closetext
	follow ROUTE5EAST_KORRINA, ROUTE5EAST_LUCARIO2
	applymovement ROUTE5EAST_KORRINA, Route5EastLeavingMovement
	disappear ROUTE5EAST_KORRINA
	disappear ROUTE5EAST_LUCARIO2
	applymovement ROUTE5EAST_LUCARIO1, Route5EastLeavingMovement
	disappear ROUTE5EAST_LUCARIO1
	setevent EVENT_ROUTE_5_EAST_KORRINA
	setscene SCENE_ROUTE5EAST_TIERNO
	end
	
; .MenuHeader:
	; db MENU_BACKUP_TILES ; flags
	; menu_coords 8, 10, SCREEN_WIDTH - 1, TEXTBOX_Y - 1
	; dw .MenuData
	; db 1 ; default option

; .MenuData:
	; db STATICMENU_CURSOR | STATICMENU_DISABLE_B ; flags
	; db 2 ; items
	; db "Thanks!@"
	; db "You think so?@"
	
Route5KorrinaScene2:
	clearevent EVENT_ROUTE_5_EAST_KORRINA
	moveobject ROUTE5EAST_LUCARIO1, 41, 11
	appear ROUTE5EAST_LUCARIO1
	showemote PLAYER, EMOTE_SHOCK, 15
	applymovement ROUTE5EAST_LUCARIO1, Route5EastLucarioApproachesYouMovement2
	opentext
	writetext Route5EastLucarioText
	cry MACHAMP ; LUCARIO
	waitsfx
	promptbutton
	writetext Route5EastKorrinaYellsText
	waitbutton
	closetext
	moveobject ROUTE5EAST_KORRINA, 41, 11
	moveobject ROUTE5EAST_LUCARIO2, 41, 10
	appear ROUTE5EAST_KORRINA
	appear ROUTE5EAST_LUCARIO2 
	follow ROUTE5EAST_KORRINA, ROUTE5EAST_LUCARIO2
	applymovement ROUTE5EAST_KORRINA, Route5EastKorrinaApproachesYouMovement
	stopfollow
	applymovement ROUTE5EAST_LUCARIO2, Route5EastLucario2Movement2
	opentext
	writetext Route5EastKorrinaText1
	waitbutton
	closetext
	turnobject ROUTE5EAST_LUCARIO1, LEFT
	cry MACHAMP
	waitsfx
	opentext
	writetext Route5EastLucarioText
	waitbutton
	closetext
	turnobject ROUTE5EAST_LUCARIO1, RIGHT
	opentext
	; writetext Route5EastKorrinaText2
	; loadmenu .MenuHeader
	; verticalmenu
	; closewindow
	promptbutton
	writetext Route5EastSaidThanksText
	waitbutton
	closetext
	follow ROUTE5EAST_KORRINA, ROUTE5EAST_LUCARIO2
	applymovement ROUTE5EAST_KORRINA, Route5EastLeavingMovement
	disappear ROUTE5EAST_KORRINA
	disappear ROUTE5EAST_LUCARIO2
	applymovement ROUTE5EAST_LUCARIO1, Route5EastLeavingMovement
	disappear ROUTE5EAST_LUCARIO1
	setevent EVENT_ROUTE_5_EAST_KORRINA
	setscene SCENE_ROUTE5EAST_TIERNO
	end		
	
; .MenuHeader:
	; db MENU_BACKUP_TILES ; flags
	; menu_coords 8, 10, SCREEN_WIDTH - 1, TEXTBOX_Y - 1
	; dw .MenuData
	; db 1 ; default option

; .MenuData:
	; db STATICMENU_CURSOR | STATICMENU_DISABLE_B ; flags
	; db 2 ; items
	; db "Thanks!@"
	; db "You think so?@"
	
Route5EastLucarioText:
	text "LUCARIO: Carrrr!"
	done
	
Route5EastKorrinaYellsText:
	text "???: Wait!"
	line "LUCARIO!!!"
	done

Route5EastKorrinaText1:
	text "Sorry about that!"
	line "Are you OK?"
	
	para "I was just doing"
	line "some special"
	cont "training with my"
	cont "LUCARIO when all"
	cont "of a sudden it"
	cont "dashed off…"
	
	para "Hey, LUCARIO!"
	line "What's going on"
	cont "with you?"
	
	para "Did you get drawn"
	line "by this Trainer's"
	cont "aura or something?"
	done
	
Route5EastKorrinaText2:
	text "Huh. Well, it"
	line "seems LUCARIO"
	cont "likes you!"
	done
	
Route5EastSaidThanksText:
	text "See, LUCARIO can"
	line "read people's"
	cont "auras."
	
	para "I guess something"
	line "in your aura has"
	cont "made this one take"
	cont "a liking to a"
	cont "stranger!"
	
	para "This LUCARIO is"
	line "always getting"
	cont "worked up in"
	cont "battle with my"
	cont "other one."
	
	para "Maybe it's just"
	line "been waiting for a"
	cont "strong enough"
	cont "Trainer to"
	cont "challenge it…"
	
	para "Oops, sorry!"
	line "I was on such a"
	cont "roll, I forgot to"
	cont "even introduce"
	cont "myself!"
	
	para "I'm KORRINA, the"
	line "SHALOUR CITY Gym"
	cont "Leader."
	
	para "If you're"
	line "collecting Gym"
	cont "Badges, I'm sure"
	cont "we'll be battling"
	cont "sooner or later!"
	
	para "I'll be looking"
	line "forward to it."
	cont "I hope you know"
	cont "how to roll with"
	cont "the punches."
	done
	
Route5EastLucarioApproachesYouMovement1:
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step DOWN
	step RIGHT
	step RIGHT
	step UP
	turn_head LEFT
	step DOWN
	step LEFT
	step LEFT
	step UP
	turn_head RIGHT
	step_end
	
Route5EastLucarioApproachesYouMovement2:
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step UP
	step RIGHT
	step RIGHT
	step DOWN
	turn_head LEFT
	step UP
	step LEFT
	step LEFT
	step DOWN
	turn_head RIGHT
	step_end
	
Route5EastKorrinaApproachesYouMovement:
	step RIGHT
	step RIGHT
	step RIGHT
	step_end

Route5EastLucario2Movement1:
	step DOWN
	step RIGHT
	step_end
	
Route5EastLucario2Movement2:
	step UP
	step RIGHT
	step_end
	
Route5EastLeavingMovement:
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step_end
	
Route5TiernoSceneDown:
	showemote EMOTE_SHOCK, PLAYER, 15
	special FadeOutMusic
	pause 15
	playmusic MUSIC_RIVAL_ENCOUNTER
	opentext
	writetext Route5TiernoText1
	waitbutton
	closetext
	showemote EMOTE_SHOCK, ROUTE5EAST_FISHER, 15
	showemote EMOTE_SHOCK, ROUTE5EAST_SUPER_NERD, 15
	applymovement PLAYER, Route5StepForwardAlt
	opentext
	writetext Route5TiernoText2
	waitbutton
	closetext
	winlosstext Route5TiernoWinText, Route5TiernoLossText
	setlasttalked ROUTE5EAST_FISHER
	loadtrainer TIERNO, TIERNO_1
	loadvar VAR_BATTLETYPE, BATTLETYPE_CANLOSE
	startbattle
	dontrestartmapmusic
	reloadmap
	special HealParty
	playmusic MUSIC_RIVAL_AFTER
	showemote EMOTE_HAPPY, ROUTE5EAST_FISHER, 15
	opentext
	writetext Route5TiernoText3
	waitbutton
	closetext
	applymovement ROUTE5EAST_SUPER_NERD, Route5TrevorMoves
	winlosstext Route5TrevorWinText, Route5TrevorLossText
	setlasttalked ROUTE5EAST_SUPER_NERD
	loadtrainer TREVOR, TREVOR_1
	loadvar VAR_BATTLETYPE, BATTLETYPE_CANLOSE
	startbattle
	dontrestartmapmusic
	reloadmap
	special HealParty
	playmusic MUSIC_RIVAL_AFTER
	applymovement ROUTE5EAST_SUPER_NERD, Route5TrevorMovesBack
	opentext
	writetext Route5TiernoText4
	waitbutton
	closetext
	applymovement ROUTE5EAST_FISHER, Route5Exits
	disappear ROUTE5EAST_FISHER
	opentext
	writetext Route5TiernoText5
	waitbutton
	closetext
	applymovement ROUTE5EAST_SUPER_NERD, Route5Exits
	disappear ROUTE5EAST_SUPER_NERD
	setscene SCENE_ROUTE5EAST_NOOP
	setevent EVENT_TIERNO_ROUTE_5
	playmapmusic
	end
	
Route5TiernoSceneUp:
	showemote EMOTE_SHOCK, PLAYER, 15
	special FadeOutMusic
	pause 15
	playmusic MUSIC_RIVAL_ENCOUNTER
	opentext
	writetext Route5TiernoText1
	waitbutton
	closetext
	showemote EMOTE_SHOCK, ROUTE5EAST_FISHER, 15
	showemote EMOTE_SHOCK, ROUTE5EAST_SUPER_NERD, 15
	applymovement PLAYER, Route5StepForward
	opentext
	writetext Route5TiernoText2
	waitbutton
	closetext
	winlosstext Route5TiernoWinText, Route5TiernoLossText
	setlasttalked ROUTE5EAST_FISHER
	loadtrainer TIERNO, TIERNO_1
	loadvar VAR_BATTLETYPE, BATTLETYPE_CANLOSE
	startbattle
	dontrestartmapmusic
	reloadmap
	special HealParty
	playmusic MUSIC_RIVAL_AFTER
	showemote EMOTE_HAPPY, ROUTE5EAST_FISHER, 15
	opentext
	writetext Route5TiernoText3
	waitbutton
	closetext
	applymovement ROUTE5EAST_SUPER_NERD, Route5TrevorMoves
	winlosstext Route5TrevorWinText, Route5TrevorLossText
	setlasttalked ROUTE5EAST_SUPER_NERD
	loadtrainer TREVOR, TREVOR_1
	loadvar VAR_BATTLETYPE, BATTLETYPE_CANLOSE
	startbattle
	dontrestartmapmusic
	reloadmap
	special HealParty
	playmusic MUSIC_RIVAL_AFTER
	applymovement ROUTE5EAST_SUPER_NERD, Route5TrevorMovesBack
	opentext
	writetext Route5TiernoText4
	waitbutton
	closetext
	applymovement ROUTE5EAST_FISHER, Route5Exits
	disappear ROUTE5EAST_FISHER
	turnobject ROUTE5EAST_SUPER_NERD, UP
	turnobject ROUTE5EAST_SUPER_NERD, DOWN
	opentext
	writetext Route5TiernoText5
	waitbutton
	closetext
	applymovement ROUTE5EAST_SUPER_NERD, Route5Exits
	disappear ROUTE5EAST_SUPER_NERD
	setscene SCENE_ROUTE5EAST_NOOP
	setevent EVENT_TIERNO_ROUTE_5
	playmapmusic
	end
	
Route5TiernoText1:
	text "TIERNO: Wow…"
	line "a #MON horde,"
	cont "you say?"
	done
	
Route5TiernoText2:
	text "Oh hey, <PLAYER>!"
	line "Funny seeing you"
	cont "here!"
	
	para "Do your #MON"
	line "know any sweet"
	cont "moves?"
	
	para "Show me in a"
	line "battle!"
	done
	
Route5TiernoText3:
	text "Wow that was fun!"
	
	para "Hey Trevs! You"
	line "should battle"
	cont "<PLAYER> too!"
	
	para "TREVOR: W..what?"
	line "I'm not sure…"
	
	para "TIERNO: Come on,"
	line "it's a blast!"
	
	para "TREVOR: Okay…"
	done
	
Route5TiernoText4:
	text "You're right,"
	line "that was kinda"
	cont "fun…"
	
	para "TIERNO: What did"
	line "I say? I knew"
	cont "you'd love it."
	
	para "Battling with"
	line "<PLAYER> is a"
	cont "blast!"
	
	para "Anyway, Trevs,"
	line "what were we"
	cont "talking about?"
	
	para "TREVOR: Hordes,"
	line "remember?"
	
	para "TIERNO: Oh yeah!"
	
	para "A bunch of"
	line "#MON ambushed"
	cont "us before!"
	
	para "I don't know"
	line "how it happened…"
	
	para "TREVOR: Yeah it"
	line "was strange…"
	
	para "TIERNO: Luckily I"
	line "was able to dance"
	cont "my way out of it!"
	
	para "TREVOR: Anyway.. "
	
	para "Maybe we should"
	line "let <PLAYER> get"
	cont "going…"
	
	para "TIERNO: You're"
	line "right, Trevs!"
	
	para "I'll race you"
	line "to CAMPHRIER TOWN!"
	
	para "Catch ya, <PLAYER>!"
	done
	
Route5TiernoText5:
	text "Hey, wait up!"
	
	para "Bye…"
	done
	
Route5TiernoWinText:
	text "Wow! How did you"
	line "do that?!?!"
	done
	
Route5TiernoLossText:
	text "Hey! That's a"
	line "first!"
	done
	
Route5TrevorWinText:
	text "Saw that coming…"
	done
	
Route5TrevorLossText:
	text "Huh? How did I"
	line "do that?"
	done
	
Route5StepForward:
	step LEFT
	step LEFT
	step_end
	
Route5StepForwardAlt:
	step LEFT
	step LEFT
	step UP
	turn_head LEFT
	step_end
	
Route5AlignMovement:
	step UP
	turn_head LEFT
	step_end
	
Route5TrevorMoves:
	step DOWN
	turn_head RIGHT
	step_end
	
Route5TrevorMovesBack:
	step UP
	turn_head DOWN
	step_end
	
Route5Exits:
	step UP
	step UP
	step UP
	step UP
	step UP
	step UP
	step UP
	step_end
	
TrainerTwinsMayandjoy1:
	trainer TWINS, MAYANDJOY1, EVENT_BEAT_TWINS_MAY_AND_JOY, TwinsMayandjoySeenText, TwinsMayandjoyBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext TwinsMayandjoyAfterText
	waitbutton
	closetext
	end

TrainerTwinsMayandjoy2:
	trainer TWINS, MAYANDJOY2, EVENT_BEAT_TWINS_MAY_AND_JOY, TwinsMayandjoySeenText, TwinsMayandjoyBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext TwinsMayandjoyAfterText
	waitbutton
	closetext
	end
	
TrainerRisingStarHamish:
	trainer RISINGSTARM, HAMISH, EVENT_BEAT_RISING_STAR_HAMISH, RisingStarHamishSeenText, RisingStarHamishBeatenText, 0, .Script
	
.Script:
	endifjustbattled
	opentext
	writetext RisingStarHamishAfterText
	waitbutton
	closetext
	end
	
RisingStarHamishSeenText:
	text "I haven't slept"
	line "well for days!"
	
	para "I don't know if"
	line "I'm up for a"
	cont "battle…"
	done
	
RisingStarHamishBeatenText:
	text "I knew it…"
	line "I really gotta"
	cont "get some sleep!"
	done
	
RisingStarHamishAfterText:
	text "Sleep is super"
	line "important!"
	done

TwinsMayandjoySeenText:
	text "People say we're"
	line "like two peas"
	cont "in a pod!"
	
	para "They say we're"
	line "two halves of"
	cont "a whole!"
	done
	
TwinsMayandjoyBeatenText:
	text "MAY: Ahh…"
	line "JOY: Umm…"
	done
	
TwinsMayandjoyAfterText:
	text "What's a"
	line "'dubbel-battel'?"
	
	para "Can you eat it?"
	line "Is it tasty?"
	done
	
Route5Sign:
	jumptext Route5SignText
	
Route5SignText:
	text "ROUTE 5:"
	line "Versant Road"
	done
	
Route5HiddenParlyzHeal:
	hiddenitem PARLYZ_HEAL, EVENT_ROUTE_5_HIDDEN_PARLYZ_HEAL
	
Route5SuperPotion1:
	itemball SUPER_POTION
	
Route5SuperPotion2:
	itemball SUPER_POTION
	
Route5GreatBall:
	itemball GREAT_BALL
	
Route5FruitTree:
	fruittree FRUITTREE_ROUTE_5
	
Route5East_MapEvents:
	db 0, 0 ; filler
	
	def_warp_events
	warp_event 47, 10, ROUTE_5_LUMIOSE_GATE, 3
	warp_event 47, 11, ROUTE_5_LUMIOSE_GATE, 4
	
	def_coord_events
	coord_event 46, 10, SCENE_ROUTE5EAST_KORRINA, Route5KorrinaScene1
	coord_event 46, 11, SCENE_ROUTE5EAST_KORRINA, Route5KorrinaScene2
	coord_event 24, 18, SCENE_ROUTE5EAST_TIERNO, Route5TiernoSceneUp
	coord_event 24, 19, SCENE_ROUTE5EAST_TIERNO, Route5TiernoSceneDown
	
	def_bg_events
	bg_event 31,  9, BGEVENT_READ, Route5Sign
	bg_event 37,  3, BGEVENT_ITEM, Route5HiddenParlyzHeal

	def_object_events
	object_event 40, 10, SPRITE_WHITNEY, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_ROUTE_5_EAST_KORRINA
	object_event 41, 10, SPRITE_MONSTER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_ROUTE_5_EAST_KORRINA
	object_event 39, 10, SPRITE_MONSTER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_ROUTE_5_EAST_KORRINA
	object_event 21, 17, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_TIERNO_ROUTE_5
	object_event 20, 18, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_TIERNO_ROUTE_5
	object_event 28, 10, SPRITE_TWIN, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 1, TrainerTwinsMayandjoy1, -1
	object_event 29, 10, SPRITE_TWIN, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 1, TrainerTwinsMayandjoy2, -1
	object_event 19,  7, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 3, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerRisingStarHamish, -1
	object_event 47,  2, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Route5SuperPotion1, EVENT_ROUTE_5_SUPER_POTION1
	object_event 27,  2, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Route5SuperPotion2, EVENT_ROUTE_5_SUPER_POTION2
	object_event 38, 23, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Route5GreatBall, EVENT_ROUTE_5_GREAT_BALL
	object_event 13, 20, SPRITE_FRUIT_TREE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route5FruitTree, -1