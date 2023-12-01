	object_const_def
	const ROUTE1_KAREN
	
Route1_MapScripts:
	def_scene_scripts
	scene_script Route1Noop1Scene, SCENE_ROUTE1_SHAUNA
	scene_script Route1Noop2Scene, SCENE_ROUTE1_NOOP
	
	def_callbacks

Route1Noop1Scene:
	end

Route1Noop2Scene:
	end

Route1ShaunaLeft:
	moveobject ROUTE1_KAREN, 6, 32
Route1ShaunaRight:
	turnobject PLAYER, DOWN
	showemote EMOTE_SHOCK, PLAYER, 15
	special FadeOutMusic
	pause 15
	appear ROUTE1_KAREN
	applymovement ROUTE1_KAREN, Route1_ShaunaWalksToYou
	turnobject PLAYER, DOWN
	playmusic MUSIC_RIVAL_ENCOUNTER
	opentext
	writetext Route1ShaunaText_Seen
	waitbutton
	closetext
	checkevent EVENT_CHOSE_FROAKIE
	iftrue .Froakie
	checkevent EVENT_CHOSE_CHESPIN
	iftrue .Chespin
	winlosstext Route1ShaunaWinText, Route1ShaunaLossText
	setlasttalked ROUTE1_KAREN
	loadtrainer SHAUNA, SHAUNA_1_CHESPIN
	loadvar VAR_BATTLETYPE, BATTLETYPE_CANLOSE
	startbattle
	dontrestartmapmusic
	reloadmap
	iftrue .AfterVictorious
	sjump .AfterYourDefeat

.Froakie:
	winlosstext Route1ShaunaWinText, Route1ShaunaLossText
	setlasttalked ROUTE1_KAREN
	loadtrainer SHAUNA, SHAUNA_1_FENNEKIN
	loadvar VAR_BATTLETYPE, BATTLETYPE_CANLOSE
	startbattle
	dontrestartmapmusic
	reloadmap
	iftrue .AfterVictorious
	sjump .AfterYourDefeat

.Chespin:
	winlosstext Route1ShaunaWinText, Route1ShaunaLossText
	setlasttalked ROUTE1_KAREN
	loadtrainer SHAUNA, SHAUNA_1_FROAKIE
	loadvar VAR_BATTLETYPE, BATTLETYPE_CANLOSE
	startbattle
	dontrestartmapmusic
	reloadmap
	iftrue .AfterVictorious
	sjump .AfterYourDefeat

.AfterVictorious:
	playmusic MUSIC_RIVAL_AFTER
	opentext
	writetext Route1ShaunaText_YouWon
	waitbutton
	closetext
	sjump .FinishRival

.AfterYourDefeat:
	playmusic MUSIC_RIVAL_AFTER
	opentext
	writetext Route1ShaunaText_YouLost
	waitbutton
	closetext
.FinishRival:
	playsound SFX_TACKLE
	applymovement PLAYER, Route1_ShaunaPushesYouOutOfTheWay
	turnobject PLAYER, UP
	applymovement ROUTE1_KAREN, Route1_ShaunaExits
	disappear ROUTE1_KAREN
	setscene SCENE_ROUTE1_NOOP
	setmapscene ROUTE_22, SCENE_ROUTE22_SERENA
	special HealParty
	playmapmusic
	end

Route1_ShaunaPushesYouOutOfTheWay:
	big_step RIGHT
	turn_head LEFT
	step_end

Route1_ShaunaWalksToYou:
	step UP
	step UP
	step UP
	step UP
	step_end
	
Route1_ShaunaExits:
	step UP
	step LEFT
	step LEFT
	step UP
	step UP
	step UP
	step UP
	step UP
	step_end

Route1ShaunaText_Seen:
	text "<PLAYER>, wait!"

	para "You didn't think"
	line "I'd let you go that"
	cont "easily, did you?"
	
	para "You're gonna be"
	line "the opponent of"
	
	para "my #MON"
	line "battling debut!"
	
	para "Time to win in"
	line "style!"
	done

Route1ShaunaWinText:
	text "Hey! I wasn't"
	line "done yet!"
	done

Route1ShaunaText_YouWon:
	text "Pretty good -"
	line "Right, <PLAYER>?"
	
	para "Catch you later!"
	done

Route1ShaunaLossText:
	text "What can I say?"
	line "I'm a natural!"
	done

Route1ShaunaText_YouLost:
	text "You're amazing,"
	line "<PLAYER>!"

	para "That was so fun!"
	
	para "You watch out,"
	line "next time I'll"
	cont "beat you for sure!"
	done

Route1Sign:
	jumptext Route1SignText
	
Route1SignText:
	text "ROUTE 1:"
	line "Vaniville Path"
	done

Route1_MapEvents:
	db 0, 0 ; filler

	def_warp_events

	def_coord_events
	coord_event  6, 27, SCENE_ROUTE1_SHAUNA, Route1ShaunaLeft
	coord_event  7, 26, SCENE_ROUTE1_SHAUNA, Route1ShaunaRight

	def_bg_events
	bg_event  9, 27, BGEVENT_READ, Route1Sign

	def_object_events
	object_event  7, 31, SPRITE_KAREN, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_ROUTE_1_SHAUNA
