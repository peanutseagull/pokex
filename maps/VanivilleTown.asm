	object_const_def
	const VANIVILLETOWN_TEACHER
	const VANIVILLETOWN_COOLTRAINER_F
	const VANIVILLETOWN_SUPER_NERD
	const VANIVILLETOWN_FISHER
	const VANIVILLETOWN_KAREN
	
VanivilleTown_MapScripts:
	def_scene_scripts
	scene_script VanivilleTownNoop1Scene, SCENE_VANIVILLETOWN_TEACHER_STOPS_YOU
	scene_script VanivilleTownNoop2Scene, SCENE_VANIVILLETOWN_RIVALS
	scene_script VanivilleTownNoop3Scene, SCENE_VANIVILLETOWN_NOOP
	
	def_callbacks

VanivilleTownNoop1Scene:
	end

VanivilleTownNoop2Scene:
	end
	
VanivilleTownNoop3Scene:
	end
	
VanivilleTown_TeacherStopsYouScene1:
	playmusic MUSIC_MOM
	turnobject VANIVILLETOWN_TEACHER, UP
	opentext
	writetext Text_WaitPlayer
	waitbutton
	closetext
	turnobject PLAYER, DOWN
	applymovement VANIVILLETOWN_TEACHER, VanivilleTown_TeacherRunsToYouMovement1
	opentext
	writetext Text_WhatDoYouThinkYoureDoing
	waitbutton
	closetext
	follow VANIVILLETOWN_TEACHER, PLAYER
	applymovement VANIVILLETOWN_TEACHER, VanivilleTown_TeacherBringsYouBackMovement1
	stopfollow
	opentext
	writetext Text_ItsDangerousToGoAlone
	waitbutton
	closetext
	special RestartMapMusic
	end

VanivilleTown_TeacherStopsYouScene2:
	playmusic MUSIC_MOM
	turnobject VANIVILLETOWN_TEACHER, UP
	opentext
	writetext Text_WaitPlayer
	waitbutton
	closetext
	turnobject PLAYER, DOWN
	applymovement VANIVILLETOWN_TEACHER, VanivilleTown_TeacherRunsToYouMovement2
	opentext
	writetext Text_WhatDoYouThinkYoureDoing
	waitbutton
	closetext
	follow VANIVILLETOWN_TEACHER, PLAYER
	applymovement VANIVILLETOWN_TEACHER, VanivilleTown_TeacherBringsYouBackMovement2
	stopfollow
	opentext
	writetext Text_ItsDangerousToGoAlone
	waitbutton
	closetext
	special RestartMapMusic
	end
	
VanivilleTown_TeacherStopsYouScene3:
	playmusic MUSIC_MOM
	turnobject VANIVILLETOWN_TEACHER, UP
	opentext
	writetext Text_WaitPlayer
	waitbutton
	closetext
	turnobject PLAYER, DOWN
	applymovement VANIVILLETOWN_TEACHER, VanivilleTown_TeacherRunsToYouMovement3
	opentext
	writetext Text_WhatDoYouThinkYoureDoing
	waitbutton
	closetext
	follow VANIVILLETOWN_TEACHER, PLAYER
	applymovement VANIVILLETOWN_TEACHER, VanivilleTown_TeacherBringsYouBackMovement3
	stopfollow
	opentext
	writetext Text_ItsDangerousToGoAlone
	waitbutton
	closetext
	special RestartMapMusic
	end
	
VanivilleTown_TeacherStopsYouScene4:
	playmusic MUSIC_MOM
	turnobject VANIVILLETOWN_TEACHER, UP
	opentext
	writetext Text_WaitPlayer
	waitbutton
	closetext
	turnobject PLAYER, DOWN
	applymovement VANIVILLETOWN_TEACHER, VanivilleTown_TeacherRunsToYouMovement4
	opentext
	writetext Text_WhatDoYouThinkYoureDoing
	waitbutton
	closetext
	follow VANIVILLETOWN_TEACHER, PLAYER
	applymovement VANIVILLETOWN_TEACHER, VanivilleTown_TeacherBringsYouBackMovement4
	stopfollow
	opentext
	writetext Text_ItsDangerousToGoAlone
	waitbutton
	closetext
	special RestartMapMusic
	end

VanivilleTownTeacherScript:
	faceplayer
	opentext
;	checkevent EVENT_TALKED_TO_MOM_AFTER_MYSTERY_EGG_QUEST
;	iftrue .CallMom
;	checkevent EVENT_GAVE_MYSTERY_EGG_TO_ELM
;	iftrue .TellMomYoureLeaving
	checkevent EVENT_GOT_A_POKEMON_FROM_ELM
	iftrue .MonIsAdorable
	writetext Text_No
	waitbutton
	closetext
	end
	
.MonIsAdorable:
	writetext Text_YourMonIsAdorable
	waitbutton
	closetext
	end

VanivilleTown_RivalsScene:
	turnobject PLAYER, LEFT
	showemote EMOTE_SHOCK, PLAYER, 15
	opentext
	writetext Text_WhatTookYouSoLong
	waitbutton
	closetext
	opentext 
	writetext Text_OverHere
	waitbutton
	closetext
	follow VANIVILLETOWN_COOLTRAINER_F, PLAYER
	applymovement VANIVILLETOWN_COOLTRAINER_F, VanivilleTown_GoMeetOthers
	turnobject PLAYER, DOWN
	turnobject VANIVILLETOWN_COOLTRAINER_F, DOWN
	stopfollow
	turnobject VANIVILLETOWN_KAREN, UP
	opentext
	writetext Text_MeetShauna
	waitbutton
	closetext
	turnobject VANIVILLETOWN_KAREN, LEFT
	showemote EMOTE_HAPPY, VANIVILLETOWN_FISHER, 15
	opentext
	writetext Text_MeetTierno
	waitbutton
	closetext
	turnobject VANIVILLETOWN_SUPER_NERD, DOWN
	opentext
	writetext Text_MeetTrevor
	waitbutton
	closetext
	turnobject VANIVILLETOWN_SUPER_NERD, RIGHT
	applymovement VANIVILLETOWN_KAREN, VanivilleTown_ShaunaMovement1
	opentext
	writetext Text_PickAPokemon
	loadmenu .MenuHeader
	verticalmenu
	closewindow
	ifequal 1, .cyndaquil
	ifequal 2, .totodile
	ifequal 3, .chikorita

.cyndaquil
	writetext Text_ThisPokemon
	yesorno
	iffalse .loop
	pokenamemem CYNDAQUIL, MEM_BUFFER_0
	givepoke CYNDAQUIL, 5
	setevent EVENT_GOT_CYNDAQUIL_FROM_ELM
	playsound SFX_CAUGHT_MON
	waitsfx
	setevent EVENT_GOT_A_POKEMON_FROM_ELM
	closetext
	jump .SerenaTotodile

.totodile
	writetext Text_ThisPokemon
	yesorno
	iffalse .loop
	pokenamemem TOTODILE, MEM_BUFFER_0
	givepoke TOTODILE, 5
	setevent EVENT_GOT_TOTODILE_FROM_ELM
	playsound SFX_CAUGHT_MON
	waitsfx
	setevent EVENT_GOT_A_POKEMON_FROM_ELM
	closetext
	jump .SerenaChikorita
	
.chikorita
	writetext Text_ThisPokemon
	yesorno
	iffalse .loop
	pokenamemem CHIKORITA, MEM_BUFFER_0
	givepoke CHIKORITA, 5
	setevent EVENT_GOT_CHIKORITA_FROM_ELM
	playsound SFX_CAUGHT_MON
	waitsfx
	setevent EVENT_GOT_A_POKEMON_FROM_ELM
	closetext
	jump .SerenaCyndaquil

.MenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 0, 2, 17, TEXTBOX_Y - 1
	dw .MenuData
	db 1 ; default option

.MenuData:
	db STATICMENU_CURSOR ; flags
	db 3 ; items
	db "CYNDAQUIL@"
	db "TOTODILE@"
	db "CHIKORITA@"

.loop
	writetext Text_WhichOne
	loadmenu .MenuHeader
	verticalmenu
	closewindow
	ifequal 1, .cyndaquil
	ifequal 2, .totodile
	ifequal 3, .chikorita
	
.SerenaTotodile
	applymovement VANIVILLETOWN_KAREN, VanivilleTown_ShaunaMovement2
	opentext
	writetext Text_NowSerena
	waitbutton
	closetext
	opentext 
	writetext Text_SerenaTotodile
	waitbutton
	closetext
	showemote EMOTE_HAPPY, VANIVILLETOWN_KAREN, 15
	opentext
	writetext Text_ShaunaChikorita
	waitbutton
	closetext
	jump .SceneEnd
	
.SerenaChikorita
	applymovement VANIVILLETOWN_KAREN, VanivilleTown_ShaunaMovement2
	opentext
	writetext Text_NowSerena
	waitbutton
	closetext
	opentext 
	writetext Text_SerenaChikorita
	waitbutton
	closetext
	showemote EMOTE_HAPPY, VANIVILLETOWN_KAREN, 15
	opentext
	writetext Text_ShaunaCyndaquil
	waitbutton
	closetext
	jump .SceneEnd
	
.SerenaCyndaquil
	applymovement VANIVILLETOWN_KAREN, VanivilleTown_ShaunaMovement2
	opentext
	writetext Text_NowSerena
	waitbutton
	closetext
	opentext 
	writetext Text_SerenaCyndaquil
	waitbutton
	closetext
	jump .SceneEnd

.SceneEnd
	showemote EMOTE_HAPPY, VANIVILLETOWN_KAREN, 15
	opentext
	writetext Text_ShaunaTotodile
	waitbutton
	closetext
	applymovement VANIVILLETOWN_KAREN, VanivilleTown_ShaunaMovement3
	applymovement VANIVILLETOWN_SUPER_NERD, VanivilleTown_Trevor1
	turnobject VANIVILLETOWN_SUPER_NERD, UP
	opentext
	writetext Text_UmmAkshually
	promptbutton
	waitsfx
	writetext Text_GotPokedex
	playsound SFX_ITEM
	waitsfx
	setflag ENGINE_POKEDEX
	waitbutton
	closetext
	applymovement VANIVILLETOWN_SUPER_NERD, VanivilleTown_Trevor2
	opentext
	writetext Text_PokedexIsCool
	waitbutton
	closetext
	showemote EMOTE_HAPPY, VANIVILLETOWN_KAREN, 15
	opentext
	writetext Text_ShaunaFinal
	waitbutton
	closetext
	applymovement VANIVILLETOWN_KAREN, VanivilleTown_ShaunaLeaves
	showemote EMOTE_SHOCK, VANIVILLETOWN_COOLTRAINER_F, 10
	showemote EMOTE_SHOCK, VANIVILLETOWN_FISHER, 10
	showemote EMOTE_SHOCK, PLAYER, 10
	showemote EMOTE_SHOCK, VANIVILLETOWN_SUPER_NERD, 10
	opentext
	writetext Text_WaitUp
	waitbutton
	closetext
	applymovement VANIVILLETOWN_COOLTRAINER_F, VanivilleTown_SerenaLeaves
	opentext
	writetext Text_LetsGoTrevor
	waitbutton
	closetext
	follow VANIVILLETOWN_FISHER, VANIVILLETOWN_SUPER_NERD
	applymovement VANIVILLETOWN_FISHER, VanivilleTown_TiernoLeaves
	setmapscene ROUTE_1, SCENE_ROUTE1_SHAUNA
	disappear VANIVILLETOWN_KAREN
	disappear VANIVILLETOWN_COOLTRAINER_F
	disappear VANIVILLETOWN_FISHER
	disappear VANIVILLETOWN_SUPER_NERD 
	setscene SCENE_VANIVILLETOWN_NOOP
	end
	
VanivilleTownSign:
	jumptext VanivilleTownSignText

VanivilleTownPlayersHouseSign:
	jumptext VanivilleTownPlayersHouseSignText

VanivilleTownSerenasHouseSign:
	jumptext VanivilleTownSerenasHouseSignText
	
Text_LetsGoTrevor:
	text "TIERNO: Let's go "
	line "catch some"
	cont "#MON, Trevs!"
	
	para "TREVOR: Bye..."
	done

Text_UmmAkshually:
	text "TREVOR: Umm pardon"
	line "me, but.."
	
	para "I have something"
	line "for you guys too."
	done
	
Text_GotPokedex:
	text "<PLAYER> received"
	line "#Dex!"
	done
	
Text_PokedexIsCool:
	text "The #Dex I just"
	line "gave you is a"
	cont "high-tech device."
	
	para "It's the latest"
	line "version of the"
	cont "#Dex."

	para "It automatically"
	line "records data on"

	para "#MON you've"
	line "seen or caught."
	done


Text_WaitUp:
	text "SERENA: SHAUNA,"
	line "wait up!!!"
	done
	
Text_NowSerena:
	text "SHAUNA: Now your"
	line "turn, SERENA!"
	done
	
Text_SerenaTotodile:
	text "SERENA: Hmmmm..."
	
	para "I'll take TOTODILE."
	
	para "It clearly looks"
	line "the strongest!"
	done
	
Text_SerenaCyndaquil:
	text "SERENA: Hmmmm..."
	
	para "I'll take"
	line "CYNDAQUIL."
	
	para "It clearly looks"
	line "the strongest!"
	done
	
Text_SerenaChikorita:
	text "SERENA: Hmmm..."
	
	para "I'll take"
	line "CHIKORITA."
	
	para "It clearly looks"
	line "the strongest!"
	done

Text_ShaunaChikorita:
	text "SHAUNA: YAY!"
	
	para "That means I"
	line "get CHIKORITA!"
	
	para "Isn't it just"
	line "the cutest?"
	done
	
Text_ShaunaCyndaquil:
	text "SHAUNA: YAY!"
	
	para "That means I"
	line "get CYNDAQUIL!"
	
	para "Isn't it just"
	line "the cutest?"
	done
	
Text_ShaunaTotodile:
	text "SHAUNA: YAY!"
	
	para "That means I"
	line "get TOTODILE!"
	
	para "Isn't it just"
	line "the cutest?"
	done
	
Text_ShaunaFinal:
	text "SHAUNA: Isn't that"
	line "just amazing?"
	
	para "This is gonna be"
	line "the best adventure"
	cont "ever!"
	
	para "I'm so excited!"
	
	para "I think Route 1"
	line "is just up ahead."
	
	para "I'm sure I can"
	line "beat you guys"
	cont "there!"
	
	para "See ya!"
	done
	
Text_ThisPokemon:
	text "You want this"
	line "#MON?"
	done 
	
Text_WhichOne:
	text "Which one do"
	line "you want?"
	done
	
Text_WhatTookYouSoLong:
	text "SERENA: Jeez..."
	line "What took you"
	cont "so long?"
	done
	
Text_OverHere:
	text "Guys! Over here!"
	done

Text_MeetShauna:
	text "GIRL: It took you"
	line "two long enough!"

	para "It's <PLAYER>" 
	line "right?"
	
	para "Serena told me"
	line "so much about you!"
	
	para "My name's Shauna!"
	line "I live over in"
	cont "AQUACORDE."
	
	para "It's so nice"
	line "to finally meet"
	cont "you!"
	
	para "Let me introduce"
	line "you two to my"
	cont "friends,"
	
	para "TIERNO and"
	line "TREVOR."
	done
	
Text_MeetTierno:
	text "TIERNO: Hia,"
	line "<PLAYER>!"
	
	para "Can't wait to"
	line "get to know you!"
	done
	
Text_MeetTrevor:
	text "TREVOR: Hey..."
	done
	
Text_PickAPokemon:
	text "SHAUNA: Now that"
	line "that's done..."
	
	para "We can finally"
	line "pick our #MON!"
	
	para "PROF SYCAMORE"
	line "entrusted me"
	cont "with 3 #MON."
	
	para "Those two already"
	line "have a #MON,"
	
	para "so that just"
	line "leaves us three!"
	
	para "Why don't you"
	line "pick first,"
	cont "<PLAYER>?"
	
	para "Which #MON"
	line "do you want?"
	done
	

Text_YourMonIsAdorable:
	text "Oh! Your #MON"
	line "is adorable!"
	cont "I wish I had one!"
	done
	
Text_No:
	text "No."
	done
	
VanivilleTown_TeacherRunsToYouMovement1:
	step UP
	step UP
	step UP
	step UP
	turn_head LEFT
	step_end

VanivilleTown_TeacherRunsToYouMovement2:
	step UP
	step UP
	step UP
	step_end

VanivilleTown_TeacherRunsToYouMovement3:
	step UP
	step UP
	step UP
	step UP
	turn_head RIGHT
	step_end

VanivilleTown_TeacherRunsToYouMovement4:
	step UP
	step UP
	step UP
	step UP
	step RIGHT
	step_end

VanivilleTown_TeacherBringsYouBackMovement1:
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	turn_head UP
	step_end

VanivilleTown_TeacherBringsYouBackMovement2:
	step DOWN
	step DOWN
	step DOWN
	turn_head UP
	step_end

VanivilleTown_TeacherBringsYouBackMovement3:
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	turn_head UP
	step_end
	
VanivilleTown_TeacherBringsYouBackMovement4:
	step LEFT
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	turn_head UP
	step_end

VanivilleTown_GoMeetOthers:
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
	step_end

VanivilleTown_ShaunaMovement1:
	step LEFT
	turn_head UP
	step_end

VanivilleTown_ShaunaMovement2:
	step LEFT
	turn_head UP
	step_end
	
VanivilleTown_ShaunaMovement3:
	turn_step RIGHT
	step RIGHT
	step RIGHT
	turn_head LEFT
	step_end
	
VanivilleTown_Trevor1:
	step RIGHT
	step RIGHT
	turn_head UP
	step_end
	
VanivilleTown_Trevor2:
	step LEFT
	turn_head UP
	step LEFT
	turn_head RIGHT
	step_end
	
VanivilleTown_TiernoLeaves:
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step UP
	step UP
	step_end

VanivilleTown_ShaunaLeaves:
	step UP
	step UP
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step_end
	
VanivilleTown_SerenaLeaves:
	step UP
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step_end

Text_WaitPlayer:
	text "Wait, <PLAY_G>!"
	done

Text_WhatDoYouThinkYoureDoing:
	text "What do you think"
	line "you're doing?"
	done

Text_ItsDangerousToGoAlone:
	text "It's dangerous to"
	line "go out without a"
	cont "#MON!"

	para "Wild #MON"
	line "jump out of the"

	para "grass on the way"
	line "to the next town."
	done
	
VanivilleTownSignText:
	text "VANIVILLE TOWN"

	para "A town whose"
	line "flower is about"
	cont "to bloom."
	done

VanivilleTownPlayersHouseSignText:
	text "<PLAYER>'s House"
	done

VanivilleTownSerenasHouseSignText:
	text "SERENA'S HOUSE"
	done
	
VanivilleTownGrampsScript:
	jumptextfaceplayer Text_TechnologyGuy
	
VanivilleTownYoungsterScript:
	jumptextfaceplayer Text_VanivilleYoungster
	
Text_VanivilleYoungster:
	text "VANIVILLE TOWN is"
	line "pretty nice,"
	cont "right?"
	
	para "Kalos has so many"
	line "cool towns -"
	
	para "I wanna see them"
	line "all when I get"
	cont "big!"
	done
	
Text_TechnologyGuy:
	text "Oh, <PLAYER>!"

	para "Is that a"
	line "#gear?"
	
	para "You can call people"
	line "from anywhere in"
	cont "Kalos!"
	
	para "Isn't technology"
	line "incredible?"
	done

VanivilleTown_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 17,  5, PLAYERS_HOUSE_1F, 1
	warp_event 23,  5, SERENAS_HOUSE_1F, 1
	warp_event  5,  5, NEIGHBOURS_HOUSE, 1

	def_coord_events
	coord_event 10,  7, SCENE_VANIVILLETOWN_TEACHER_STOPS_YOU, VanivilleTown_TeacherStopsYouScene1
	coord_event 11,  7, SCENE_VANIVILLETOWN_TEACHER_STOPS_YOU, VanivilleTown_TeacherStopsYouScene2
	coord_event 12,  7, SCENE_VANIVILLETOWN_TEACHER_STOPS_YOU, VanivilleTown_TeacherStopsYouScene3
	coord_event 13,  7, SCENE_VANIVILLETOWN_TEACHER_STOPS_YOU, VanivilleTown_TeacherStopsYouScene4
	coord_event 23,  6, SCENE_VANIVILLETOWN_RIVALS, VanivilleTown_RivalsScene
	
	def_bg_events
	bg_event  8, 10, BGEVENT_READ, VanivilleTownSign
	bg_event 16,  6, BGEVENT_READ, VanivilleTownPlayersHouseSign
	bg_event 24,  6, BGEVENT_READ, VanivilleTownSerenasHouseSign
	
	def_object_events
	object_event 11, 11, SPRITE_TEACHER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 1, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VanivilleTownTeacherScript, -1
	object_event 22,  6, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_VANIVILLE_TOWN_RIVALS
	object_event 16, 12, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_VANIVILLE_TOWN_RIVALS
	object_event 16, 11, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_VANIVILLE_TOWN_RIVALS
	object_event 19, 12, SPRITE_KAREN, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_VANIVILLE_TOWN_RIVALS
	object_event  6, 14, SPRITE_GRAMPS, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 1, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, VanivilleTownGrampsScript, -1
	object_event  3,  7, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 1, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, VanivilleTownYoungsterScript, -1