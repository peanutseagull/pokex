	object_const_def
	const SERENASHOUSE_COOLTRAINER_F

SerenasHouse2F_MapScripts:
	def_scene_scripts
	scene_script SerenasHouseNoop1Scene, SCENE_SERENASHOUSE2F_SERENA
	scene_script SerenasHouseNoop1Scene, SCENE_SERENASHOUSE2F_NOOP
	
	def_callbacks
	
SerenasHouseNoop1Scene:
	end

SerenasHouseNoop2Scene:
	end

SerenasHouseSerena:
	moveobject SERENASHOUSE_COOLTRAINER_F, 2, 2
	playmusic MUSIC_RIVAL_ENCOUNTER
	appear SERENASHOUSE_COOLTRAINER_F
	turnobject SERENASHOUSE_COOLTRAINER_F, RIGHT
	opentext
	writetext Text_SerenasHouseSerena1
	waitbutton
	closetext
	applymovement SERENASHOUSE_COOLTRAINER_F, SerenasHouse_SerenaGetsYou
	follow SERENASHOUSE_COOLTRAINER_F, PLAYER
	applymovement SERENASHOUSE_COOLTRAINER_F, SerenasHouse_SerenaMovesBack
	stopfollow
	opentext
	writetext Text_SerenasHouseSerena2
	waitbutton
	closetext
	applymovement SERENASHOUSE_COOLTRAINER_F, SerenasHouse_SerenaLeaves
	disappear SERENASHOUSE_COOLTRAINER_F
	clearevent EVENT_VANIVILLE_TOWN_RIVALS
	setscene SCENE_SERENASHOUSE2F_NOOP
	setmapscene VANIVILLE_TOWN, SCENE_VANIVILLETOWN_RIVALS
	playmapmusic
	end

SerenasHouse_SerenaGetsYou:
	step DOWN
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step UP
	step_end

SerenasHouse_SerenaMovesBack:
	step DOWN
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	turn_head RIGHT
	step_end
	
SerenasHouse_SerenaLeaves:
	step DOWN
	step DOWN
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step UP
	step UP
	step UP
	step UP
	step UP
	step_end

Text_SerenasHouseSerena1:
	text "Oh, <PLAY_G>!"
	line "Come in!"
	
	para "It's so nice"
	line "to finally meet"
	cont "you!"
	
	para "Come over here!"
	done

Text_SerenasHouseSerena2:
	text "Welcome to"
	line "VANIVILLE TOWN!"
	
	para "My name's Serena!"
	
	para "Are you excited"
	line "to start our"
	cont "#MON journeys?"
	
	para "My friend Shauna"
	line "told me that"
	cont "5 of us will"
	
	para "be starting our"
	line "journeys together!"
	
	para "How exciting!"
	
	para "Surely the others"
	line "must be here by"
	cont "now..."
	
	para "Come on! I'll"
	line "race you outside!"
	done
	
SerenasHouse2F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  7,  0, SERENAS_HOUSE_1F, 3
	
	def_coord_events
	coord_event  7,  1, SCENE_SERENASHOUSE2F_SERENA, SerenasHouseSerena
	
	def_bg_events

	def_object_events
	object_event 15, 15, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
