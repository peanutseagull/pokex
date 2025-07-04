	object_const_def
	const SYCAMORELAB1F_LANCE
	const SYCAMORELAB1F_BEAUTY1
	const SYCAMORELAB1F_COOLTRAINER_F
	
SycamoreLab1F_MapScripts:
	def_scene_scripts
	scene_script SycamoreLab1FNoop1Scene, SCENE_SYCAMORELAB1F_NOOP
	scene_script SycamoreLab1FNoop2Scene, SCENE_SYCAMORELAB1F_LYSANDRE
	scene_script SycamoreLab1FNoop3Scene, SCENE_SYCAMORELAB1F_SERENA
	
	def_callbacks
	
SycamoreLab1FNoop1Scene:
	end
	
SycamoreLab1FNoop2Scene:
	end
	
SycamoreLab1FNoop3Scene:
	end
	
SycamoreLabLysandreScene:
	showemote EMOTE_SHOCK, PLAYER, 15
	turnobject PLAYER, LEFT
	opentext
	writetext SycamoreLabLysandreText1
	waitbutton
	closetext
	turnobject SYCAMORELAB1F_LANCE, RIGHT
	turnobject SYCAMORELAB1F_BEAUTY1, RIGHT
	opentext
	writetext SycamoreLabLysandreText2
	waitbutton
	closetext
	applymovement SYCAMORELAB1F_LANCE, SycamoreLabLysandreExits
	disappear SYCAMORELAB1F_LANCE
	applymovement SYCAMORELAB1F_BEAUTY1, SycamoreLabSinaMovement
	opentext
	writetext SycamoreLabSinaFinalText
	waitbutton
	closetext
	applymovement SYCAMORELAB1F_BEAUTY1, SycamoreLabSinaExits
	disappear SYCAMORELAB1F_BEAUTY1
	setevent EVENT_LYSANDRE_IN_SYCAMORE_LAB
	setevent EVENT_BLACKOUT_OVER_1
	clearevent EVENT_TREVOR_LUMIOSE_SOUTH
	setscene SCENE_SYCAMORELAB1F_SERENA
	end	
	
SycamoreLabSerenaSceneLeft:
	special FadeOutMusic
	showemote EMOTE_SHOCK, PLAYER, 15
	turnobject PLAYER, RIGHT
	playsound SFX_ENTER_DOOR
	appear SYCAMORELAB1F_COOLTRAINER_F
	playmusic MUSIC_RIVAL_ENCOUNTER
	applymovement SYCAMORELAB1F_COOLTRAINER_F, SycamoreLabSerenaEnters
	turnobject SYCAMORELAB1F_COOLTRAINER_F, LEFT
	opentext
	writetext SycamoreLab1FSerenaText
	waitbutton
	closetext
	applymovement SYCAMORELAB1F_COOLTRAINER_F, SycamoreLabSerenaExitsLeft
	disappear SYCAMORELAB1F_COOLTRAINER_F
	setscene SCENE_SYCAMORELAB1F_NOOP
	setmapscene CAFE_SOLEIL, SCENE_CAFESOLEIL_LYSANDRE
	clearevent EVENT_CAFE_SOLEIL_LYSANDRE
	end
	
SycamoreLabSerenaSceneRight:
	special FadeOutMusic
	showemote EMOTE_SHOCK, PLAYER, 15
	turnobject PLAYER, UP
	playsound SFX_ENTER_DOOR
	appear SYCAMORELAB1F_COOLTRAINER_F
	playmusic MUSIC_RIVAL_ENCOUNTER
	applymovement SYCAMORELAB1F_COOLTRAINER_F, SycamoreLabSerenaEnters
	opentext
	writetext SycamoreLab1FSerenaText
	waitbutton
	closetext
	applymovement SYCAMORELAB1F_COOLTRAINER_F, SycamoreLabSerenaExitsRight
	disappear SYCAMORELAB1F_COOLTRAINER_F
	setscene SCENE_SYCAMORELAB1F_NOOP
	setmapscene CAFE_SOLEIL, SCENE_CAFESOLEIL_LYSANDRE
	clearevent EVENT_CAFE_SOLEIL_LYSANDRE
	end

SycamoreLab1FSerenaText:
	text "Oh hey, <PLAYER>!"
	
	para "I'm gonna go"
	line "head down to"
	cont "Café Soleil."
	
	para "You're welcome"
	line "to join if you'd"
	cont "like!"
	
	para "Catch ya!"
	done
	
SycamoreLabSerenaEnters:
	step DOWN
	step_end
	
SycamoreLabSerenaExitsLeft:
	step DOWN
	step LEFT
	step LEFT
	step LEFT
	step UP
	step UP
	step_end
	
SycamoreLabSerenaExitsRight:
	step LEFT
	step LEFT
	step LEFT
	step UP
	step_end
	
SycamoreLabLysandreText1:
	text "MAN: So, I will be"
	line "able to meet them"
	cont "soon, then."
	
	para "SINA: Yes."
	
	para "MAN: The children"
	line "chosen by the"
	cont "professor…"
	
	para "I wonder what"
	line "potential they"
	cont "have."
	
	para "SINA: And here's"
	line "one of them now."
	done
	
SycamoreLabLysandreText2:
	text "SINA: That's"
	line "<PLAYER>."
	
	para "MAN: Oh! You"
	line "received a"
	cont "#DEX then…"
	
	para "How wonderful!"
	
	para "I am LYSANDRE."
	
	para "I've tried to"
	line "learn as much as"
	cont "possible about"
	
	para "#MON to help"
	line "build a brighter"
	cont "future."
	
	para "PROF SYCAMORE has"
	line "taught me so much."
	
	para "Aahh, I see you"
	line "have a <POKE>GEAR!"
	
	para "Knowledge is power"
	line "after all. Put it"
	cont "to good use."
	
	para "It is vital that"
	line "this world become"
	cont "a better place."
	
	para "We must all work"
	line "tirelessly to"
	cont "achieve this goal."
	
	para "Well, I'll be off."
	line "Give the PROF my"
	cont "best."
	
	para "My desire… it is"
	line "for a more"
	cont "beautiful world!"
	done
	
SycamoreLabSinaFinalText:
	text "Still…"
	
	para "I wonder what kind"
	line "of beautiful world"
	cont "he desires…"
	
	para "There are many"
	line "#MON in this"
	cont "great region."
	
	para "I hope getting a"
	line "#DEX gives you"
	cont "the chance to"
	
	para "learn about them."
	done
	
SycamoreLabLysandreExits:
	step LEFT
	step LEFT
	step UP
	step_end
	
SycamoreLabSinaMovement:
	step UP
	turn_head RIGHT
	step_end
	
SycamoreLabSinaExits:
	step LEFT
	step LEFT
	step UP
	step_end
	
SycamoreLab1FBeautyScript:
	jumptextfaceplayer SycamoreLab1FBeautyText
	
SycamoreLab1FBeautyText:
	text "Welcome to the"
	line "SYCAMORE #MON"
	cont "Laboratory."
	
	para "PROF SYCAMORE"
	line "researches #MON"
	cont "Evolution."
	done
	
SycamoreLab1FYoungsterScript:
	jumptextfaceplayer SycamoreLab1FYoungsterText
	
SycamoreLab1FYoungsterText:
	text "The professor has"
	line "taught many people"
	cont "about #MON!"
	done

SycamoreLab1F_MapEvents:
	db 0, 0 ; filler
	
	def_warp_events
	warp_event  3,  0, LUMIOSE_SOUTHEAST, 9
	warp_event  4,  0, LUMIOSE_SOUTHEAST, 10
	warp_event  7,  0, SYCAMORE_LAB_2F, 2
	
	def_coord_events
	coord_event  7,  1, SCENE_SYCAMORELAB1F_LYSANDRE, SycamoreLabLysandreScene
	coord_event  6,  1, SCENE_SYCAMORELAB1F_SERENA, SycamoreLabSerenaSceneLeft
	coord_event  7,  2, SCENE_SYCAMORELAB1F_SERENA, SycamoreLabSerenaSceneRight
	
	def_bg_events
	
	def_object_events
	object_event  6,  1, SPRITE_LANCE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_LYSANDRE_IN_SYCAMORE_LAB
	object_event  6,  2, SPRITE_BEAUTY, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_LYSANDRE_IN_SYCAMORE_LAB
	object_event  7,  0, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_SERENA_SYCAMORE_LAB
	object_event  2,  5, SPRITE_BEAUTY, SPRITEMOVEDATA_STANDING_UP,  0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SycamoreLab1FBeautyScript, -1
	object_event  1,  2, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SycamoreLab1FYoungsterScript, -1
