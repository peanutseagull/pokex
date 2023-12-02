	object_const_def
	const ROUTE22_LASS1
	const ROUTE22_LASS2
	const ROUTE22_YOUNGSTER
	const ROUTE22_BUG_CATCHER
	const ROUTE22_LASS3
	const ROUTE22_COOLTRAINER_F
	
Route22_MapScripts:
	def_scene_scripts
	scene_script Route22Noop1Scene, SCENE_ROUTE22_SERENA
	scene_script Route22Noop2Scene, SCENE_ROUTE22_NOOP
	
	def_callbacks
	
Route22Noop1Scene:
	end

Route22Noop2Scene:
	disappear ROUTE22_COOLTRAINER_F 
	end
	
Route22SerenaLeft:
	moveobject ROUTE22_COOLTRAINER_F, 2, 11
Route22SerenaRight:
	turnobject PLAYER, UP
	showemote EMOTE_SHOCK, PLAYER, 15
	special FadeOutMusic
	pause 15
	appear ROUTE22_COOLTRAINER_F
	applymovement ROUTE22_COOLTRAINER_F, Route22_SerenaWalksToYou
	playmusic MUSIC_RIVAL_ENCOUNTER
	opentext
	writetext Route22SerenaText_Seen
	waitbutton
	closetext
	checkevent EVENT_CHOSE_FROAKIE
	iftrue .Froakie
	checkevent EVENT_CHOSE_CHESPIN
	iftrue .Chespin
	winlosstext Route22SerenaWinText, Route22SerenaLossText
	setlasttalked ROUTE22_COOLTRAINER_F
	loadtrainer SERENA, SERENA_1_FROAKIE
	loadvar VAR_BATTLETYPE, BATTLETYPE_CANLOSE
	startbattle
	dontrestartmapmusic
	reloadmap
	iftrue .AfterVictorious
	sjump .AfterYourDefeat
	
.Froakie:
	winlosstext Route22SerenaWinText, Route22SerenaLossText
	setlasttalked ROUTE22_COOLTRAINER_F
	loadtrainer SERENA, SERENA_1_CHESPIN
	loadvar VAR_BATTLETYPE, BATTLETYPE_CANLOSE
	startbattle
	dontrestartmapmusic
	reloadmap
	iftrue .AfterVictorious
	sjump .AfterYourDefeat

.Chespin:
	winlosstext Route22SerenaWinText, Route22SerenaLossText
	setlasttalked ROUTE22_COOLTRAINER_F
	loadtrainer SERENA, SERENA_1_FENNEKIN
	loadvar VAR_BATTLETYPE, BATTLETYPE_CANLOSE
	startbattle
	dontrestartmapmusic
	reloadmap
	iftrue .AfterVictorious
	sjump .AfterYourDefeat

.AfterVictorious:
	playmusic MUSIC_RIVAL_AFTER
	opentext
	writetext Route22SerenaText_YouWon
	waitbutton
	closetext
	sjump .FinishRival

.AfterYourDefeat:
	playmusic MUSIC_RIVAL_AFTER
	opentext
	writetext Route22SerenaText_YouLost
	waitbutton
	closetext
.FinishRival:
	applymovement ROUTE22_COOLTRAINER_F, Route22_SerenaExits
	disappear ROUTE22_COOLTRAINER_F
	setscene SCENE_ROUTE22_NOOP
	special HealParty
	playmapmusic
	end
	
Route22SerenaText_Seen:
	text "Oh, <PLAYER>!"
	
	para "Fancy seeing you"
	line "here..."
	
	para "So you finally"
	line "caught up, huh?"
	
	para "Have you caught"
	line "any #MON yet?"
	
	para "I've been catching"
	line "tons! Wanna see?"
	
	para "Let's have a"
	line "battle!"
	done
	
Route22SerenaWinText:
	text "Huh, you're better"
	line "than I thought!"
	done

Route22SerenaText_YouWon:
	text "That was a great"
	line "battle!"
	
	para "Don't worry,"
	line "I'm sure you'll"
	cont "win next time!"
	
	para "Well, I've gotta"
	line "go - I'm gonna"
	cont "go see SHAUNA."
	
	para "Let's battle"
	line "again soon!"
	
	para "Catch you later!"
	done

Route22SerenaLossText:
	text "So? What did you"
	line "think?"
	done

Route22SerenaText_YouLost:
	text "So you beat me..."
	
	para "I was so sure"
	line "I would win!"
	
	para "Oh well..."
	
	para "I guess I'll just"
	line "have to train"
	cont "harder then!"
	
	para "I'm gonna go"
	line "catch up with"
	cont "SHAUNA."
	
	para "Catch you later!"
	done
	
Route22_SerenaWalksToYou:
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step_end
	
Route22_SerenaExits:
	step UP
	step UP
	step UP
	step UP
	step UP
	step_end
	
Route22Sign:
	jumptext Route22SignText
	
Route22SignText:
	text "ROUTE 22:"
	line "Détourner Way"
	done
	
TrainerPicnickerLouise:
	trainer PICNICKER, LOUISE, EVENT_BEAT_PICNICKER_LOUISE, PicnickerLouiseSeenText, PicnickerLouiseBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext PinickerLouiseAfterText
	waitbutton
	closetext
	end
	
TrainerYoungsterLoic:
	trainer YOUNGSTER, LOIC, EVENT_BEAT_YOUNGSTER_LOIC, YoungsterLoicSeenText, YoungsterLoicBeatenText, 0, .Script
	
.Script
	endifjustbattled
	opentext
	writetext YoungsterLoicAfterText
	waitbutton
	closetext
	end
	
TrainerLassElin:
	trainer LASS, ELIN, EVENT_BEAT_LASS_ELIN, LassElinSeenText, LassElinBeatenText, 0, .Script
	
.Script
	endifjustbattled
	opentext
	writetext LassElinAfterText
	waitbutton
	closetext
	end
	
TrainerSchoolboyRabbie:
	trainer SCHOOLBOY, RABBIE, EVENT_BEAT_SCHOOLBOY_RABBIE, SchoolboyRabbieSeenText, SchoolboyRabbieBeatenText, 0, .Script
	
.Script
	endifjustbattled
	opentext
	writetext SchoolboyRabbieAfterText
	waitbutton
	closetext
	end
	
TrainerLassElsa:
	trainer LASS, ELSA, EVENT_BEAT_LASS_ELSA, LassElsaSeenText, LassElsaBeatenText, 0, .Script
	
.Script
	endifjustbattled
	opentext
	writetext LassElsaAfterText
	waitbutton
	closetext
	end

PicnickerLouiseSeenText:
	text "I learnt all of my"
	line "#MON battling"
	cont "techniques from"
	
	para "VIOLA -- the GYM"
	line "leader!"
	done
	
PicnickerLouiseBeatenText:
	text "Whoa! You might be"
	line "even stronger than"
	cont "VIOLA!"
	done
	
PinickerLouiseAfterText:
	text "VIOLA only raises"
	line "the types of"
	cont "#MON she likes."
	
	para "But you know what?"
	line "It's probably"
	cont "better to train"
	
	para "lots of different"
	line "types of #MON."
	done
	
LassElinSeenText:
	text "C'mon GOLDEEN!"
	line "Let's show em what"
	cont "we're made of!"
	done
	
LassElinBeatenText:
	text "GOLDEEN, MARILL,"
	line "I'm so sorry!"
	
	para "I'll get you both"
	line "back to the"
	cont "#MON Centre!"
	done
	
LassElinAfterText:
	text "I just love WATER-"
	line "type #MON!"
	
	para "Some GRASS- and"
	line "FIRE-types are"
	cont "cute, too!"
	done	
	
YoungsterLoicSeenText:
	text "Is #MON"
	line "battling just a"
	cont "hobby to you?"
	
	para "Or do you wanna"
	line "become a pro?"
	done
	
YoungsterLoicBeatenText:
	text "I'll be sure to"
	line "learn from this"
	cont "and improve!"
	done
	
YoungsterLoicAfterText:
	text "The #MON League"
	line "is close, yet"
	cont "so far away!"
	done
	
SchoolboyRabbieSeenText:
	text "You know what"
	line "this is, right?"
	
	para "It's the start"
	line "of a #MON"
	cont "battle!"
	done
	
SchoolboyRabbieBeatenText:
	text "I may have lost,"
	line "but my #MON put"
	cont "in a big effort!"
	done
	
SchoolboyRabbieAfterText:
	text "Maybe I should"
	line "work on evolving"
	cont "my #MON..."
	done
	
LassElsaSeenText:
	text "I care less about"
	line "battling than"
	cont "showing off my"
	 
	para "awesome #MON to"
	line "everyone!"
	done
	
LassElsaBeatenText:
	text "FLABEBE! Are you"
	line "okay?"
	done
	
LassElsaAfterText:
	text "Isn't my FLABEBE"
	line "just the cutest"
	cont "thing ever?"
	done
	
Route22Elixer:
	itemball ELIXER
	
Route22_MapEvents:
	db 0, 0 ; filler

	def_warp_events

	def_coord_events
	coord_event  2, 16, SCENE_ROUTE22_SERENA, Route22SerenaLeft
	coord_event  3, 16, SCENE_ROUTE22_SERENA, Route22SerenaRight

	def_bg_events
	bg_event  3,  9, BGEVENT_READ, Route22Sign
	
	def_object_events
	object_event  6,  9, SPRITE_LASS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 4, TrainerPicnickerLouise, -1
	object_event 11,  9, SPRITE_LASS, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 4, TrainerLassElin, -1
	object_event 29,  6, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 4, TrainerYoungsterLoic, -1
	object_event 29, 13, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerSchoolboyRabbie, -1
	object_event 35, 18, SPRITE_LASS, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerLassElsa, -1
	object_event  3, 11, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_ROUTE_22_SERENA
	object_event  2,  5, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Route22Elixer, EVENT_ROUTE_22_ELIXER
