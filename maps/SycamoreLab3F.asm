	object_const_def
	const SYCAMORELAB3F_ELM1
	const SYCAMORELAB3F_KAREN
	const SYCAMORELAB3F_COOLTRAINER_F
	const SYCAMORELAB3F_FISHER
	const SYCAMORELAB3F_SUPER_NERD
	const SYCAMORELAB3F_ELM2

SycamoreLab3F_MapScripts:
	def_scene_scripts
	scene_script SycamoreLab3FNoop1Scene, SCENE_SYCAMORELAB3F_FIRST
	scene_script SycamoreLab3FNoop2Scene, SCENE_SYCAMORELAB3F_NOOP
	
	def_callbacks
	
SycamoreLab3FNoop1Scene:
	disappear SYCAMORELAB3F_ELM2
	end
	
SycamoreLab3FNoop2Scene:
	end
	
SycamoreRivalsScene:
	special FadeOutMusic
	playmusic MUSIC_PROF_ELM
	showemote EMOTE_SHOCK, SYCAMORELAB3F_ELM1, 15
	opentext
	writetext SycamoreLabText1
	waitbutton
	closetext
	follow SYCAMORELAB3F_ELM1, PLAYER
	applymovement SYCAMORELAB3F_ELM1, SycamoreLeadsYou
	stopfollow
	turnobject PLAYER, UP
	clearevent EVENT_RIVALS_IN_SYCAMORE_LAB
	appear SYCAMORELAB3F_FISHER
	appear SYCAMORELAB3F_KAREN
	appear SYCAMORELAB3F_COOLTRAINER_F
	appear SYCAMORELAB3F_SUPER_NERD
	opentext
	writetext SycamoreLabText2
	waitbutton
	closetext
	showemote EMOTE_SHOCK, PLAYER, 15
	showemote EMOTE_SHOCK, SYCAMORELAB3F_ELM1, 15
	follow SYCAMORELAB3F_KAREN, SYCAMORELAB3F_COOLTRAINER_F
	applymovement SYCAMORELAB3F_KAREN, SycamoreLabShaunaEnters
	stopfollow
	turnobject SYCAMORELAB3F_KAREN, LEFT
	turnobject SYCAMORELAB3F_COOLTRAINER_F, LEFT
	opentext
	writetext SycamoreLabText3
	waitbutton
	closetext
	winlosstext SycamoreLabSycamoreWinText, SycamoreLabSycamoreLossText
	setlasttalked SYCAMORELAB3F_ELM1
	loadtrainer POKEMON_PROF, SYCAMORE1
	loadvar VAR_BATTLETYPE, BATTLETYPE_CANLOSE
	startbattle
	dontrestartmapmusic
	reloadmap
	playmusic MUSIC_PROF_ELM
	special HealParty
	opentext
	writetext SycamoreLabText4
	loadmenu .MenuHeader
	verticalmenu
	closewindow
	ifequal 1, .bulbasaur
	ifequal 2, .charmander
	ifequal 3, .squirtle

.bulbasaur
	writetext Text_SycamoreThisPokemon
	yesorno
	iffalse .loop
	pokenamemem BULBASAUR, MEM_BUFFER_0
	givepoke BULBASAUR, 5
	playsound SFX_CAUGHT_MON
	waitsfx
	closetext
	jump .ContinueScene

.charmander
	writetext Text_SycamoreThisPokemon
	yesorno
	iffalse .loop
	pokenamemem CHARMANDER, MEM_BUFFER_0
	givepoke CHARMANDER, 5
	playsound SFX_CAUGHT_MON
	waitsfx
	closetext
	jump .ContinueScene
	
.squirtle
	writetext Text_SycamoreThisPokemon
	yesorno
	iffalse .loop
	pokenamemem SQUIRTLE, MEM_BUFFER_0
	givepoke SQUIRTLE, 5
	playsound SFX_CAUGHT_MON
	waitsfx
	closetext
	jump .ContinueScene

.MenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 0, 2, 17, TEXTBOX_Y - 1
	dw .MenuData
	db 1 ; default option

.MenuData:
	db STATICMENU_CURSOR | STATICMENU_DISABLE_B ; flags
	db 3 ; items
	db "BULBASAUR@"
	db "CHARMANDER@"
	db "SQUIRTLE@"

.loop
	writetext Text_SycamoreWhichOne
	loadmenu .MenuHeader
	verticalmenu
	closewindow
	ifequal 1, .bulbasaur
	ifequal 2, .charmander
	ifequal 3, .squirtle
	waitbutton
	closetext
	
.ContinueScene:
	opentext
	writetext SycamoreLabText5
	waitbutton
	closetext
	follow SYCAMORELAB3F_FISHER, SYCAMORELAB3F_SUPER_NERD
	applymovement SYCAMORELAB3F_FISHER, SycamoreLabTiernoEnters
	stopfollow
	turnobject SYCAMORELAB3F_FISHER, RIGHT
	turnobject SYCAMORELAB3F_SUPER_NERD, RIGHT
	opentext
	writetext SycamoreLabText6
	waitbutton
	closetext
	setevent EVENT_RIVALS_IN_SYCAMORE_LAB
	clearevent EVENT_LYSANDRE_IN_SYCAMORE_LAB
	disappear SYCAMORELAB3F_COOLTRAINER_F
	disappear SYCAMORELAB3F_FISHER
	disappear SYCAMORELAB3F_KAREN
	disappear SYCAMORELAB3F_SUPER_NERD
	disappear SYCAMORELAB3F_ELM1
	appear SYCAMORELAB3F_ELM2
	reloadmap
	setscene SCENE_SYCAMORELAB3F_NOOP
	setmapscene SYCAMORE_LAB_1F, SCENE_SYCAMORELAB1F_LYSANDRE
	setmapscene ROUTE_22, SCENE_ROUTE22_NOOP
	playmapmusic
	end
	
SycamoreLab3FSycamoreScript:
	jumptextfaceplayer SycamoreLab3FSycamoreText
	
SycamoreLab3FSycamoreText:
	text "Your adventure"
	line "will broaden your"
	cont "horizons."
	
	para "That's what's"
	line "important."
	
	para "Now go!"
	line "Experience your"
	cont "journey!"
	done
	
SycamoreLabSycamoreWinText:
	text "Ha ha! You're too"
	line "much for me!"
	done

SycamoreLabSycamoreLossText:
	text "Better luck next"
	line "time!"
	done
	
Text_SycamoreThisPokemon:
	text "You want this"
	line "#MON?"
	done 
	
Text_SycamoreWhichOne:
	text "Which one do"
	line "you want?"
	done

SycamoreLabText1:
	text "So, we finally"
	line "meet…"
	
	para "Fantastic! You're"
	line "here! Come this"
	cont "way, won't you?"
	done
	
SycamoreLabText2:
	text "Many thanks for"
	line "coming all the way"
	cont "from VANIVILLE!"
	
	para "I'm PROF SYCAMORE!"
	line "It's a pleasure to"
	cont "finally meet you!"
	
	para "How is your"
	line "journey so far?"
	
	para "Have you met"
	line "many different"
	cont "#MON?"
	
	para "Well now, you DO"
	line "have a certain"
	cont "je ne sais quoi!"
	
	para "I have a good"
	line "feeling about you!"
	
	para "Originally, I only"
	line "wanted to choose"
	cont "one trainer."
	
	para "It was going to"
	line "be the child of a"
	cont "Veteran Trainer."
	
	para "About then, I"
	line "learnt that the"
	cont "RHYHORN racer,"
	
	para "GRACE and her"
	line "child were moving"
	cont "here."
	
	para "You're far from"
	line "everything you"
	cont "used to know…"
	
	para "That really hit"
	line "me right here…"
	
	para "Then it hit me!"
	line "I should give"
	cont "you a #MON!"
	
	para "SHAUNA: Hi PROF!"
	line "It's SHAUNA!"
	done
	
SycamoreLabText3:
	text "SERENA: Sorry to"
	line "have kept you"
	cont "waiting."
	
	para "PROF: Fantastic!"
	
	para "Now let's all"
	line "have a #MON"
	cont "battle!"
	
	para "Your opponent"
	line "shall be me!"
	done
	
SycamoreLabText4:
	text "PROF: I think I've"
	line "about figured it"
	cont "out!"
	
	para "SHAUNA: Figured"
	line "what out?"
	
	para "PROF: <PLAYER>!"
	
	para "You're an"
	line "interesting"
	cont "trainer indeed!"
	
	para "You should take"
	line "another #MON"
	cont "with you!"
	
	para "Here!"
	line "Pick One!"
	done
	
SycamoreLabText5:
	text "What a wonderful"
	line "choice!"
	
	para "Now you two pick"
	line "yours!"
	
	para "SHAUNA: How can"
	line "I pick?!?!"
	
	para "SERENA: Calm down,"
	line "SHAUNA, you'll"
	cont "figure it out."
	
	para "PROF: I've got a"
	line "feeling the others"
	cont "will show up soon."
	done
	
SycamoreLabText6:
	text "TIERNO: Hi PROF"
	line "SYCAMORE."
	
	para "TREVOR: Oh…"
	line "We didn't know"
	cont "everyone was here."
	
	para "Sorry…"
	
	para "PROF: No worries!"
	line "Wonderful!"
	cont "Everyone's here!"
	
	para "Now I'd like to"
	line "say a few words."
	
	para "Be the best"
	line "trainer you can"
	cont "be!"
	
	para "At the same time,"
	line "remember to have"
	cont "fun!"
	
	para "If you seek out"
	line "completing your"
	cont "#dex,"
	
	para "You'll probably"
	line "see people with"
	cont "different lives,"
	
	para "with different"
	line "ways of thinking."
	
	para "They may even"
	line "conflict with"
	cont "your own."
	
	para "Your adventure"
	line "will broaden your"
	cont "horizons."
	
	para "That's what's"
	line "important."
	
	para "Now go!"
	line "Experience your"
	cont "journey!"
	done
	
	para "SERENA: Come"
	line "on SHAUNA!"
	
	
SycamoreLeadsYou:
	step DOWN
	step DOWN
	step DOWN
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step UP
	turn_head DOWN
	step_end

SycamoreLabShaunaEnters:
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step_end
	
SycamoreLabTiernoEnters:
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step UP
	step UP
	step_end
	
SycamoreLab3F_MapEvents:
	db 0, 0 ; filler
	
	def_warp_events
	warp_event  7,  0, SYCAMORE_LAB_2F, 1
	
	def_coord_events
	coord_event  7,  1, SCENE_SYCAMORELAB3F_FIRST, SycamoreRivalsScene
	
	def_bg_events
	
	def_object_events
	object_event  7,  2, SPRITE_ELM, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_MET_SYCAMORE
	object_event  7,  1, SPRITE_KAREN, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_RIVALS_IN_SYCAMORE_LAB
	object_event  7,  0, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_RIVALS_IN_SYCAMORE_LAB
	object_event  7,  1, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_RIVALS_IN_SYCAMORE_LAB
	object_event  7,  0, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_RIVALS_IN_SYCAMORE_LAB
	object_event  1,  4, SPRITE_ELM, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SycamoreLab3FSycamoreScript, -1
