	object_const_def
	const PARFUMPALACE2FBALCONY_SHAUNA
	const PARFUMPALACE2FBALCONY_MAN
	const PARFUMPALACE2FBALCONY_BUTLER
	
ParfumPalace2FBalcony_MapScripts:
	def_scene_scripts
	scene_script ParfumPalace2FBalconyNoop1, SCENE_PARFUMPALACE2FBALCONY_NOOP
	scene_script ParfumPalace2FBalconyNoop2, SCENE_PARFUMPALACE2FBALCONY_SHAUNA
	
	def_callbacks

ParfumPalace2FBalconyNoop1:
	end
	
ParfumPalace2FBalconyNoop2:
	end

; Is there a way to set the time to night?

ParfumPalace2FBalconyShaunaScene:
	applymovement PLAYER, ParfumPalace2FBalconyPlayerJoinsShaunaMovement
	appear PARFUMPALACE2FBALCONY_MAN
	appear PARFUMPALACE2FBALCONY_BUTLER
	opentext
	writetext ParfumPalace2FBalconyShaunaText1
	waitbutton
	closetext
	reloadmap
	opentext
	writetext ParfumPalace2FBalconyShaunaText2
	waitbutton
	closetext
	turnobject PLAYER, LEFT
	turnobject PARFUMPALACE2FBALCONY_SHAUNA, RIGHT
	opentext
	writetext ParfumPalace2FBalconyShaunaText3
	waitbutton
	closetext
	checkevent EVENT_CHOSE_FROAKIE
	iftrue .Froakie
	checkevent EVENT_CHOSE_CHESPIN
	iftrue .Chespin
	winlosstext ParfumPalace2FBalconyShaunaWinText, ParfumPalace2FBalconyShaunaLossText
	setlasttalked PARFUMPALACE2FBALCONY_SHAUNA
	loadtrainer SHAUNA, SHAUNA_2_CHESPIN
	loadvar VAR_BATTLETYPE, BATTLETYPE_CANLOSE
	startbattle
	dontrestartmapmusic
	reloadmap
	sjump .FinishScene

.Froakie:
	winlosstext ParfumPalace2FBalconyShaunaWinText, ParfumPalace2FBalconyShaunaLossText
	setlasttalked PARFUMPALACE2FBALCONY_SHAUNA
	loadtrainer SHAUNA, SHAUNA_2_FENNEKIN
	loadvar VAR_BATTLETYPE, BATTLETYPE_CANLOSE
	startbattle
	dontrestartmapmusic
	reloadmap
	sjump .FinishScene

.Chespin:
	winlosstext ParfumPalace2FBalconyShaunaWinText, ParfumPalace2FBalconyShaunaLossText
	setlasttalked PARFUMPALACE2FBALCONY_SHAUNA
	loadtrainer SHAUNA, SHAUNA_2_FROAKIE
	loadvar VAR_BATTLETYPE, BATTLETYPE_CANLOSE
	startbattle
	dontrestartmapmusic
	reloadmap
.FinishScene:
	special HealParty
	opentext
	writetext ParfumPalace2FBalconyShaunaText4
	waitbutton
	closetext
	follow PARFUMPALACE2FBALCONY_MAN, PARFUMPALACE2FBALCONY_BUTLER
	applymovement PARFUMPALACE2FBALCONY_MAN, ParfumPalace2FBalconyManWalksUpMovement
	stopfollow
	turnobject PARFUMPALACE2FBALCONY_MAN, LEFT
	turnobject PARFUMPALACE2FBALCONY_BUTLER, LEFT
	opentext
	writetext ParfumPalace2FBalconyManText1
	waitbutton
	closetext
	; show_emote EMOTE_SHOCK, PLAYER, 15
	; show_emote EMOTE_SHOCK, PARFUMPALACE2FBALCONY_SHAUNA, 15
	turnobject PLAYER, RIGHT
	turnobject PARFUMPALACE2FBALCONY_SHAUNA, RIGHT
	opentext
	writetext ParfumPalace2FBalconyManText2
	waitbutton
	closetext
	turnobject PARFUMPALACE2FBALCONY_BUTLER, UP
	turnobject PARFUMPALACE2FBALCONY_MAN, DOWN
	turnobject PARFUMPALACE2FBALCONY_MAN, LEFT
	turnobject PARFUMPALACE2FBALCONY_BUTLER, LEFT
	opentext
	writetext ParfumPalace2FBalconyManText3
	promptbutton
	verbosegiveitem POKE_FLUTE
	writetext ParfumPalace2FBalconyManText4
	waitbutton
	closetext
	applymovement PARFUMPALACE2FBALCONY_MAN, ParfumPalace2FBalconyManLeavesMovement
	disappear PARFUMPALACE2FBALCONY_MAN
	turnobject PLAYER, DOWN
	turnobject PARFUMPALACE2FBALCONY_SHAUNA, DOWN
	turnobject PARFUMPALACE2FBALCONY_BUTLER, DOWN
	opentext
	writetext ParfumPalace2FBalconyShaunaText5
	waitbutton
	closetext
	applymovement PARFUMPALACE2FBALCONY_BUTLER, ParfumPalace2FBalconyButlerMovesMovement
	opentext
	writetext ParfumPalace2FBalconyButlerText1
	waitbutton
	closetext
	turnobject PLAYER, RIGHT
	turnobject PARFUMPALACE2FBALCONY_SHAUNA, RIGHT
	opentext
	writetext ParfumPalace2FBalconyButlerConversationText
	promptbutton
	verbosegiveitem TM_PROTECT
	promptbutton
	writetext ParfumPalace2FBalconyButlerText2
	waitbutton
	closetext
	applymovement PARFUMPALACE2FBALCONY_BUTLER, ParfumPalace2FBalconyLeavesMovement
	disappear PARFUMPALACE2FBALCONY_BUTLER
	turnobject PLAYER, DOWN
	turnobject PARFUMPALACE2FBALCONY_SHAUNA, DOWN
	opentext
	writetext ParfumPalace2FBalconyShaunaText6
	waitbutton
	closetext
	applymovement PARFUMPALACE2FBALCONY_SHAUNA, ParfumPalace2FBalconyLeavesMovement
	disappear PARFUMPALACE2FBALCONY_SHAUNA
	setevent EVENT_PARFUM_PALACE_2F_BALCONY_SHAUNA
	setscene SCENE_PARFUMPALACE2FBALCONY_NOOP
	end
	
ParfumPalace2FBalconyShaunaText1:
	text "Um…"
	line "You know…"
	
	para "I've never seen"
	line "fireworks alone"
	cont "with a friend"
	cont "before…"
	
	para "We haven't even"
	line "seen them yet,"
	
	para "but I know I'll"
	line "never forget"
	cont "these fireworks!"
	
	para "'Cause I watched"
	line "them with you,"
	cont "<PLAY_G>."
	done
	
ParfumPalace2FBalconyShaunaText2:
	text "…"
	line "Wow…"
	
	para "It's so gorgeous…"
	done
	
ParfumPalace2FBalconyShaunaText3:
	text "You know what?"
	line "This would be the"
	cont "perfect backdrop"
	cont "to a battle!"
	
	para "Come on, <PLAY_G>!"
	line "Show me how much"
	cont "you've been"
	cont "training!"
	done
	
ParfumPalace2FBalconyShaunaWinText:
	text "You're a tough"
	line "battler, <PLAY_G>!"
	done
	
ParfumPalace2FBalconyShaunaLossText:
	text "Phew, that was a"
	line "close one."
	done
	
ParfumPalace2FBalconyShaunaText4:
	text "That. Was."
	line "INCREDIBLE!"
	
	para "Absolutely"
	line "exhilirating!"
	
	para "The fireworks"
	line "made that battle"
	cont "something else."

	para "I never ever want"
	line "to forget this,"
	
	para "I'll keep this"
	line "memory in my"
	cont "heart always!"
	done
	
ParfumPalace2FBalconyManText1:
	text "MAN: And that was"
	line "my wonderfrou"
	cont "fireworks show"
	cont "for my FURFROU!"
	done
	
ParfumPalace2FBalconyManText2:
	text "I hope you two"
	line "enjoyed that!"
	
	para "SHAUNA: It was"
	line "AMAZING!"
	
	para "MAN: I have"
	line "something else"
	cont "for you…"
	done
	
ParfumPalace2FBalconyManText3:
	text "It was SHABBONEAU"
	line "CASTLE's treaure,"
	
	para "but I took it as"
	line "payment for a"
	cont "loan."
	
	para "But I don't have"
	line "much use for it."
	
	para "Maybe one of you"
	line "two will."
	done
	
ParfumPalace2FBalconyManText4:
	text "Listen well, you"
	line "two!"
	
	para "Always return"
	line "what you borrow."
	
	para "That's very"
	line "important."
	done
	
ParfumPalace2FBalconyShaunaText5:
	text "SHAUNA: I want to"
	line "make lots of"
	cont "memories on my"
	cont "journey…"
	
	para "But I think I'll"
	line "try and forget"
	cont "about that guy…"
	done
	
ParfumPalace2FBalconyButlerText1:
	text "BUTLER: You can't"
	line "imagine how"
	cont "stressful running"
	cont "this place is for"
	cont "him…"
	done
	
ParfumPalace2FBalconyButlerConversationText:
	text "SHAUNA: That may"
	line "be so, but…"
	
	para "Oh, that's right."
	
	para "Mr. Butler, do"
	line "you know anything"
	cont "about MEGA"
	cont "EVOLUTION?"
	
	para "BUTLER: I think I"
	line "remember a book"
	cont "on that topic"
	cont "being in the"
	cont "palace library."
	
	para "It had something"
	line "to do with what"
	cont "you'd now call a"
	cont "Trainer holding a"
	cont "mysterious stone"
	cont "high and making"
	cont "#MON evolve"
	cont "even further."
	
	para "Also, it's not"
	line "much, but I would"
	cont "like you to have"
	cont "this."
	done
	
ParfumPalace2FBalconyButlerText2:
	text "PROTECT blocks"
	line "opposing #MON's"
	cont "moves."
	
	para "But if you use it"
	line "many times in a"
	cont "row,"
	
	para "the chances of it"
	line "not working"
	cont "increase."
	
	para "If you will"
	line "excuse me,"
	
	para "I shall take my"
	line "leave."
	done
	
ParfumPalace2FBalconyShaunaText6:
	text "The owner of"
	line "SHABBONEAU CASTLE"
	cont "used to be"
	cont "friends with that"
	cont "guy!"
	
	para "Can you believe"
	line "it? Isn't that"
	cont "crazy?"
	
	para "Anyway, let's"
	line "see if we can"
	cont "do anything for"
	cont "that #MON on"
	cont "ROUTE 7."
	done
	
ParfumPalace2FBalconyPlayerJoinsShaunaMovement:
	step UP
	step UP
	step UP
	step UP
	step UP
	step UP
	step_end

ParfumPalace2FBalconyManWalksUpMovement:
	step UP
	step UP
	step UP
	step UP
	step UP
	step_end

ParfumPalace2FBalconyManLeavesMovement:
	step RIGHT
	step DOWN
	step DOWN
	step LEFT
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step_end
	
ParfumPalace2FBalconyButlerMovesMovement:
	step UP
	turn_head LEFT
	step_end
	
ParfumPalace2FBalconyLeavesMovement:
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step_end

ParfumPalace2FBalcony_MapEvents:
	db 0, 0 ; filler
	
	def_warp_events
	warp_event  8, 11, PARFUM_PALACE_2F, 3
	
	def_coord_events
	coord_event  8, 10, SCENE_PARFUMPALACE2FBALCONY_SHAUNA, ParfumPalace2FBalconyShaunaScene
	
	def_bg_events
	
	def_object_events
	object_event  7,  4, SPRITE_KAREN, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_PARFUM_PALACE_2F_BALCONY_SHAUNA
	object_event  9,  9, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_PARFUM_PALACE_2F_BALCONY_MAN
	object_event 10,  9, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_PARFUM_PALACE_2F_BALCONY_BUTLER
