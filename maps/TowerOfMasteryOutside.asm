	object_const_def
	const TOWEROFMASTERYOUTSIDE_TIERNO
	
TowerOfMasteryOutside_MapScripts:
	def_scene_scripts
	scene_script TowerOfMasteryOutsideNoop1Scene, SCENE_TOWEROFMASTERYOUTSIDE_TIERNO
	scene_script TowerOfMasteryOutsideNoop2Scene, SCENE_TOWEROFMASTERYOUTSIDE_NOOP
	
	def_callbacks

TowerOfMasteryOutsideNoop1Scene:
	end
	
TowerOfMasteryOutsideNoop2Scene:
	end
	
TowerOfMasteryOutsideTierno1:
	showemote PLAYER, EMOTE_SHOCK, 15
	turnobject PLAYER, DOWN
	clearevent EVENT_SHALOUR_CITY_TIERNO
	appear TOWEROFMASTERYOUTSIDE_TIERNO
	applymovement TOWEROFMASTERYOUTSIDE_TIERNO, TowerOfMasteryOutsideTiernoApproachesYou
	opentext
	writetext TowerOfMasteryOutsideTiernoText1
	loadmenu .MenuHeader
	verticalmenu
	closewindow
	ifequal 1, .cont
	ifequal 2, .cont
	
.cont
	writetext TowerOfMasteryOutsideTiernoText2
	waitbutton
	closetext
	showemote TOWEROFMASTERYOUTSIDE_TIERNO, EMOTE_SHOCK, 15
	opentext
	writetext TowerOfMasteryOutsideTiernoText3
	waitbutton
	closetext
	applymovement TOWEROFMASTERYOUTSIDE_TIERNO, TowerOfMasteryOutsideTiernoLeaves
	disappear TOWEROFMASTERYOUTSIDE_TIERNO
	setevent EVENT_SHALOUR_CITY_TIERNO
	setscene SCENE_TOWEROFMASTERYOUTSIDE_NOOP
	end
	
.MenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 2, 0, 19, 5
	dw .MenuData
	db 1 ; default option

.MenuData:
	db STATICMENU_CURSOR | STATICMENU_DISABLE_B ; flags
	db 2 ; items
	db "A new dance?@"
	db "Check what out?@"
	
TowerOfMasteryOutsideTierno2:
	moveobject TOWEROFMASTERYOUTSIDE_TIERNO, 13, 23
	showemote PLAYER, EMOTE_SHOCK, 15
	turnobject PLAYER, DOWN
	clearevent EVENT_SHALOUR_CITY_TIERNO
	appear TOWEROFMASTERYOUTSIDE_TIERNO
	applymovement TOWEROFMASTERYOUTSIDE_TIERNO, TowerOfMasteryOutsideTiernoApproachesYou
	opentext
	writetext TowerOfMasteryOutsideTiernoText1
	loadmenu .MenuHeader
	verticalmenu
	closewindow
	ifequal 1, .cont
	ifequal 2, .cont
	
.cont
	writetext TowerOfMasteryOutsideTiernoText2
	waitbutton
	closetext
	setevent EVENT_GOT_INTRUIGING_STONE
	showemote TOWEROFMASTERYOUTSIDE_TIERNO, EMOTE_SHOCK, 15
	opentext
	writetext TowerOfMasteryOutsideTiernoText3
	waitbutton
	closetext
	applymovement TOWEROFMASTERYOUTSIDE_TIERNO, TowerOfMasteryOutsideTiernoLeaves
	disappear TOWEROFMASTERYOUTSIDE_TIERNO
	setevent EVENT_SHALOUR_CITY_TIERNO
	setscene SCENE_TOWEROFMASTERYOUTSIDE_NOOP
	end
	
.MenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 2, 0, 19, 5
	dw .MenuData
	db 1 ; default option

.MenuData:
	db STATICMENU_CURSOR | STATICMENU_DISABLE_B ; flags
	db 2 ; items
	db "A new dance?@"
	db "Check what out?@"

TowerOfMasteryOutsideTiernoText1:
	text "Hey, <PLAY_G>!"
	line "How's your journey"
	cont "going?"
	
	para "I've found some"
	line "awesome #MON"
	cont "dancers!"
	
	para "Anyway, SYCAMORE"
	line "told TREVOR and me"
	cont "to say hello to"
	cont "the MEGA EVOLUTION"
	cont "guru when we"
	cont "reached SHALOUR…"
	
	para "He's in that"
	line "imposing building"
	cont "up ahead-- the"
	cont "TOWER OF MASTERY."
	
	para "………"
	line "………"
	
	para "OH! I almost"
	line "forgot!"
	
	para "Check this out!"
	done

TowerOfMasteryOutsideTiernoText2:
	text "Isn't this stone"
	line "cool?"
	
	para "I got it from this"
	line "person called the"
	cont "wandering stone"
	cont "collector for"
	cont "showing off my"
	cont "dance moves!"
	
	para "It might be a"
	line "MEGA STONE!"
	
	para "Here, <PLAY_G>,"
	line "you can have it!"
	
	para "Since you're such"
	line "a great TRAINER"
	cont "and all…"
	
	para "I still remember"
	line "our battle on"
	cont "ROUTE 5."
	
	para "………"
	line "………"	
	
	para "<PLAY_G> got"
	line "INTRIGUING STONE!"
	done

TowerOfMasteryOutsideTiernoText3:
	text "Well, I'll go call"
	line "TREVS, then"
	
	para "Go on ahead, OK?"
	done
	
TowerOfMasteryOutsideTiernoApproachesYou:
	step UP
	step UP
	step UP
	step UP
	step_end
	
TowerOfMasteryOutsideTiernoLeaves:
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step_end
	
TowerOfMasteryOutsidePunkGuyScript:
	jumptextfaceplayer TowerOfMasteryOutsidePunkGuyText

TowerOfMasteryOutsidePunkGuyText:
	text "I want to be more"
	line "awesome than I am"
	cont "now!"
	
	para "I know Trainers"
	line "and #MON both"
	cont "feel that way!"
	done

TowerOfMasteryOutsideMaxEther:
	itemball MAX_ETHER
	
TowerOfMasteryOutsideHiddenMaxRepel:
	hiddenitem MAX_REPEL, EVENT_TOWER_OF_MASTERY_OUTSIDE_HIDDEN_MAX_REPEL
	
TowerOfMasteryOutside_MapEvents:
	db 0, 0 ; filler
	
	def_warp_events
	warp_event 13,  7, TOWER_OF_MASTERY_1F, 1
	
	def_coord_events
	coord_event 12, 18, SCENE_TOWEROFMASTERYOUTSIDE_TIERNO, TowerOfMasteryOutsideTierno1
	coord_event 13, 18, SCENE_TOWEROFMASTERYOUTSIDE_TIERNO, TowerOfMasteryOutsideTierno2
	
	def_bg_events
	bg_event 14,  8, BGEVENT_ITEM, TowerOfMasteryOutsideHiddenMaxRepel
	
	def_object_events
	object_event 12, 23, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_SHALOUR_CITY_TIERNO
	object_event 16, 26, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, TowerOfMasteryOutsidePunkGuyScript, -1
	object_event 21,  9, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, TowerOfMasteryOutsideMaxEther, EVENT_TOWER_OF_MASTERY_OUTSIDE_MAX_ETHER