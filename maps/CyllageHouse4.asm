	object_const_def
	
CyllageHouse4_MapScripts:
	def_scene_scripts
	
	def_callbacks
	
CyllageHouse4LassScript:
	jumptextfaceplayer CyllageHouse4LassText
	
CyllageHouse4LassText:
	text "The KALOS region"
	line "is so big it has"
	cont "three different"
	cont "#DEXes!"
	
	para "I wonder just how"
	line "many #MON there"
	cont "are!"
	done
	
CyllageHouse4PokefanfScript:
	jumptextfaceplayer CyllageHouse4PokefanfText
	
CyllageHouse4PokefanfText:
	text "#MON are good"
	line "at some things,"
	cont "and humans are"
	cont "good at others."
	
	para "If we combine our"
	line "strengths, we can"
	cont "achieve great"
	cont "things!"
	done
	
CyllageHouse4QuizScript:
	faceplayer
	opentext
	checkevent EVENT_CYLLAGE_CITY_BERRIES
	iftrue .AlreadyGotBerries
	writetext OfferBerryQuizText
	yesorno
	iffalse .RefusedQuiz
	writetext BerryQuizQuestion1Text
	loadmenu .BerryQuizQuestion1MenuHeader
	verticalmenu
	closewindow
	ifequal 1, .correct1
	ifequal 2, .incorrect
	ifequal 3, .incorrect	
	
.AlreadyGotBerries
	writetext BerryQuizAfterText
	waitbutton
	closetext
	end
	
.RefusedQuiz
	writetext BerryQuizRefusedText
	waitbutton
	closetext
	end
	
.correct1
	playsound SFX_1ST_PLACE
	writetext BerryQuizCorrectText
	loadmenu .BerryQuizQuestion2MenuHeader
	verticalmenu
	closewindow
	ifequal 1, .incorrect
	ifequal 2, .incorrect
	ifequal 3, .correct2

.correct2
	playsound SFX_1ST_PLACE
	writetext BerryQuizWinText
	promptbutton
	verbosegiveitem BITTER_BERRY, $3
	writetext BerryQuizAfterText
	waitbutton
	closetext
	setevent EVENT_CYLLAGE_CITY_BERRIES
	end
		
.incorrect
	playsound SFX_WRONG
	writetext BerryQuizWrongText
	waitbutton
	closetext
	end	
	
.BerryQuizQuestion1MenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 0, 2, 17, TEXTBOX_Y - 2
	dw .MenuData
	db 1 ; default option

.MenuData:
	db STATICMENU_CURSOR | STATICMENU_DISABLE_B ; flags
	db 3 ; items
	db "PERSIM@"
	db "ASPEAR@"
	db "PECHA@"

.BerryQuizQuestion2MenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 0, 2, 17, TEXTBOX_Y - 2
	dw .MenuData2
	db 1 ; default option

.MenuData2:
	db STATICMENU_CURSOR | STATICMENU_DISABLE_B ; flags
	db 3 ; items
	db "SLEEP@"
	db "FLINCH@"
	db "CONFUSED@"
	
OfferBerryQuizText:
	text "Would you like to"
	line "take a simple"
	cont "quiz?"
	done
	
BerryQuizRefusedText:
	text "Come talk to me"
	line "if you want to"
	cont "take a quiz."
	done
	
BerryQuizQuestion1Text:
	text "So here is the"
	line "question:"
	
	para "Which of the"
	line "following Berries"
	cont "cures confusion?"
	done
	
BerryQuizWrongText:
	text "Bzzzzz!"
	
	para "Too bad… That's"
	line "incorrect. Please"
	cont "try again later!"
	done
	
BerryQuizCorrectText:
	text "Ding ding ding!"
	
	para "Right answer!"
	line "Now for the next"
	cont "question."
	
	para "OK! The move"
	line "SWAGGER raises the"
	cont "target's ATTACK,"
	cont "but it also causes"
	cont "which status"
	cont "condition?"
	done
	
BerryQuizWinText:
	text "Ding ding ding!"
	line "We have a winner!"
	
	para "Fantastic answer!"
	line "Here's a prize for"
	cont "you!"
	done

BerryQuizAfterText:
	text "Here's a combo you"
	line "can use in a"
	cont "DOUBLE BATTLE!"
	
	para "Have one of your"
	line "#MON hold a"
	cont "PERSIM BERRY."
	
	para "Have its ally use"
	line "SWAGGER on the"
	cont "first #MON."
	
	para "Its ATTACK will go"
	line "up, and the BERRY"
	cont "will heal its"
	cont "confusion!"
	
	para "Then it can hit"
	line "the opponent"
	cont "harder!"
	
	para "There are lots of"
	line "combinations in"
	cont "a DOUBLE BATTLE."
	
	para "If only they were"
	line "in this game!"
	done

CyllageHouse4FletchlingScript:
	jumptextfaceplayer CyllageHouse4FletchlingText
	
CyllageHouse4FletchlingText:
	text "FLETCHLING: Chi-"
	line "chirp!"
	done
	
CyllageHouse4_MapEvents:
	db 0, 0 ; filler
	
	def_warp_events
	warp_event  2,  7, CYLLAGE_CITY, 6
	warp_event  3,  7, CYLLAGE_CITY, 6
	
	def_coord_events
	
	def_bg_events
	
	def_object_events
	object_event  0,  2, SPRITE_LASS, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CyllageHouse4LassScript, -1
	object_event  6,  2, SPRITE_POKEFAN_F, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CyllageHouse4PokefanfScript, -1
	object_event  5,  4, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CyllageHouse4QuizScript, -1
	object_event  1,  5, SPRITE_BIRD, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, CyllageHouse4FletchlingScript, -1
	object_event  6,  5, SPRITE_BIRD, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, CyllageHouse4FletchlingScript, -1