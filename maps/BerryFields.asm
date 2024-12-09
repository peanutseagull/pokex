	object_const_def
	const BERRYFIELDS_MAN
	const BERRYFIELDS_GIRL
	
BerryFields_MapScripts:
	def_scene_scripts
	scene_script BerryFieldsNoop1Scene, SCENE_BERRYFIELDS_INTRO
	scene_script BerryFieldsNoop2Scene, SCENE_BERRYFIELDS_NOOP
	
	def_callbacks
	
BerryFieldsNoop1Scene:
	end
	
BerryFieldsNoop2Scene:
	end
	
; Man is supposed to give you Sprinklotad and some berries, but the berry system is different atm, so not included
	
BerryFields_IntroScene1:
	playmusic MUSIC_SHOW_ME_AROUND
	showemote EMOTE_SHOCK, BERRYFIELDS_GIRL, 15
	turnobject BERRYFIELDS_MAN, UP
	turnobject BERRYFIELDS_GIRL, UP
	opentext
	writetext BerryFieldsThisWayMisterText
	waitbutton
	closetext
	applymovement PLAYER, BerryFields_PlayerMovesMovement
	opentext
	writetext BerryFieldsPleaseTakeCareText
	yesorno
	iffalse .loop
	sjump .SaidYes
	
.loop:
	writetext BerryFieldsPleaseText
	yesorno
	iffalse .loop
.SaidYes:
	writetext BerryFieldsThankYouText
	waitbutton
	closetext
	follow BERRYFIELDS_GIRL, BERRYFIELDS_MAN
	applymovement BERRYFIELDS_GIRL, BerryFieldsWalkAway_Movement
	disappear BERRYFIELDS_MAN
	disappear BERRYFIELDS_GIRL
	setevent EVENT_BERRY_FIELDS_MAN
	setevent EVENT_BERRY_FIELDS_GIRL
	setscene SCENE_BERRYFIELDS_NOOP
	special RestartMapMusic
	end
	
BerryFields_IntroScene2:
	playmusic MUSIC_SHOW_ME_AROUND
	showemote EMOTE_SHOCK, BERRYFIELDS_GIRL, 15
	turnobject BERRYFIELDS_MAN, UP
	turnobject BERRYFIELDS_GIRL, UP
	opentext
	writetext BerryFieldsThisWayMisterText
	waitbutton
	closetext
	applymovement PLAYER, BerryFields_PlayerMovesMovement2
	opentext
	writetext BerryFieldsPleaseTakeCareText
	yesorno
	iffalse .loop
	sjump .SaidYes
	
.loop:
	writetext BerryFieldsPleaseText
	yesorno
	iffalse .loop
.SaidYes:
	writetext BerryFieldsThankYouText
	waitbutton
	closetext
	follow BERRYFIELDS_GIRL, BERRYFIELDS_MAN
	applymovement BERRYFIELDS_GIRL, BerryFieldsWalkAway_Movement
	disappear BERRYFIELDS_MAN
	disappear BERRYFIELDS_GIRL
	setevent EVENT_BERRY_FIELDS_MAN
	setevent EVENT_BERRY_FIELDS_GIRL
	setscene SCENE_BERRYFIELDS_NOOP
	special RestartMapMusic
	end

BerryFields_IntroScene3:
	playmusic MUSIC_SHOW_ME_AROUND
	showemote EMOTE_SHOCK, BERRYFIELDS_GIRL, 15
	turnobject BERRYFIELDS_MAN, UP
	turnobject BERRYFIELDS_GIRL, UP
	opentext
	writetext BerryFieldsThisWayMisterText
	waitbutton
	closetext
	applymovement PLAYER, BerryFields_PlayerMovesMovement3
	opentext
	writetext BerryFieldsPleaseTakeCareText
	yesorno
	iffalse .loop
	sjump .SaidYes
	
.loop:
	writetext BerryFieldsPleaseText
	yesorno
	iffalse .loop
.SaidYes:
	writetext BerryFieldsThankYouText
	waitbutton
	closetext
	follow BERRYFIELDS_GIRL, BERRYFIELDS_MAN
	applymovement BERRYFIELDS_GIRL, BerryFieldsWalkAway_Movement
	disappear BERRYFIELDS_MAN
	disappear BERRYFIELDS_GIRL
	setevent EVENT_BERRY_FIELDS_MAN
	setevent EVENT_BERRY_FIELDS_GIRL
	setscene SCENE_BERRYFIELDS_NOOP
	special RestartMapMusic
	end

BerryFields_IntroScene4:
	playmusic MUSIC_SHOW_ME_AROUND
	showemote EMOTE_SHOCK, BERRYFIELDS_GIRL, 15
	turnobject BERRYFIELDS_MAN, UP
	turnobject BERRYFIELDS_GIRL, UP
	opentext
	writetext BerryFieldsThisWayMisterText
	waitbutton
	closetext
	applymovement PLAYER, BerryFields_PlayerMovesMovement4
	opentext
	writetext BerryFieldsPleaseTakeCareText
	yesorno
	iffalse .loop
	sjump .SaidYes
	
.loop:
	writetext BerryFieldsPleaseText
	yesorno
	iffalse .loop
.SaidYes:
	writetext BerryFieldsThankYouText
	waitbutton
	closetext
	follow BERRYFIELDS_GIRL, BERRYFIELDS_MAN
	applymovement BERRYFIELDS_GIRL, BerryFieldsWalkAway_Movement
	disappear BERRYFIELDS_MAN
	disappear BERRYFIELDS_GIRL
	setevent EVENT_BERRY_FIELDS_MAN
	setevent EVENT_BERRY_FIELDS_GIRL
	setscene SCENE_BERRYFIELDS_NOOP
	special RestartMapMusic
	end
	
BerryFieldsThisWayMisterText:
	text "GIRL: Hey, hey!"
	line "This way, this"
	cont "way!"
	done
	
BerryFieldsPleaseTakeCareText:
	text "MAN: You!"
	
	para "I know this might"
	line "be an unexpected"
	cont "request,"
	
	para "but I need you to"
	line "take care of my"
	cont "BERRY FIELDS!"
	
	para "Berries are"
	line "great!"
	
	para "I assure you that"
	line "you'll love field"
	cont "work!"
	done
	
BerryFieldsPleaseText:
	text "Oh, come on."
	line "Please take care"
	cont "of the field for"
	cont "me?"
	done
	
BerryFieldsThankYouText:
	text "Oh, great! Er…"
	line "oh, your name is"
	cont "<PLAY_G>."
	
	para "Thank you,"
	line "<PLAY_G>!"
	
	para "GIRL: Hooray!"
	line "That's great,"
	cont "Grandpa!"
	
	para "MAN: These trees"
	line "will produce"
	cont "berries every"
	cont "day!"
	
	para "Come and pick"
	line "some when you"
	cont "can, please!"
	
	para "Otherwise, the"
	line "place will be"
	cont "overrun with"
	cont "BUG #MON!"
	
	para "Well, <PLAY_G>."
	line "Please take good"
	cont "care of the"
	cont "field!"	
	
	para "I'm so relieved."
	line "My back has been"
	cont "killing me"
	cont "lately,"
	
	para "I'm far too old"
	line "to garden like I"
	cont "used to…"
	
	para "Welp… We'll be"
	line "seeing you!"
	done
	
BerryFields_PlayerMovesMovement:
	step RIGHT
	step RIGHT
	step DOWN
	step DOWN
	step_end
	
BerryFields_PlayerMovesMovement2:
	step RIGHT
	step DOWN
	step DOWN
	step_end
	
BerryFields_PlayerMovesMovement3:
	step DOWN
	step DOWN
	step_end
	
BerryFields_PlayerMovesMovement4:
	step LEFT
	step DOWN
	step DOWN
	step_end
	
BerryFieldsWalkAway_Movement:
	step RIGHT
	step RIGHT
	step UP
	step RIGHT
	step RIGHT
	step RIGHT
	step UP
	step UP
	step_end
	
BerryFieldsFruitTree1:
	fruittree FRUITTREE_BERRY_FIELDS_1
	
BerryFieldsFruitTree2:
	fruittree FRUITTREE_BERRY_FIELDS_2
	
BerryFieldsFruitTree3:
	fruittree FRUITTREE_BERRY_FIELDS_3
	
BerryFieldsFruitTree4:
	fruittree FRUITTREE_BERRY_FIELDS_4
	
BerryFieldsFruitTree5:
	fruittree FRUITTREE_BERRY_FIELDS_5
	
BerryFieldsFruitTree6:
	fruittree FRUITTREE_BERRY_FIELDS_6
	
BerryFieldsFruitTree7:
	fruittree FRUITTREE_BERRY_FIELDS_7
	
BerryFieldsFruitTree8:
	fruittree FRUITTREE_BERRY_FIELDS_8
	
BerryFieldsFruitTree9:
	fruittree FRUITTREE_BERRY_FIELDS_9
	
BerryFieldsFruitTree10:
	fruittree FRUITTREE_BERRY_FIELDS_10
	
BerryFieldsFruitTree11:
	fruittree FRUITTREE_BERRY_FIELDS_11
	
BerryFieldsFruitTree12:
	fruittree FRUITTREE_BERRY_FIELDS_12
	
BerryFields_MapEvents:
	db 0, 0 ; filler
	
	def_warp_events
	warp_event 19, 1, BERRY_FIELDS_HOUSE, 1
	
	def_coord_events
	coord_event 12,  1, SCENE_BERRYFIELDS_INTRO, BerryFields_IntroScene1
	coord_event 13,  1, SCENE_BERRYFIELDS_INTRO, BerryFields_IntroScene2
	coord_event 14,  1, SCENE_BERRYFIELDS_INTRO, BerryFields_IntroScene3
	coord_event 15,  1, SCENE_BERRYFIELDS_INTRO, BerryFields_IntroScene4
	
	def_bg_events
	
	def_object_events
	object_event 13,  4, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_BERRY_FIELDS_MAN
	object_event 14,  4, SPRITE_TWIN, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_BERRY_FIELDS_GIRL
	object_event  7,  4, SPRITE_FRUIT_TREE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, BerryFieldsFruitTree1, -1
	object_event 10,  4, SPRITE_FRUIT_TREE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, BerryFieldsFruitTree2, -1
	object_event 17,  4, SPRITE_FRUIT_TREE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, BerryFieldsFruitTree3, -1
	object_event 20,  4, SPRITE_FRUIT_TREE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, BerryFieldsFruitTree4, -1
	object_event  7,  7, SPRITE_FRUIT_TREE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, BerryFieldsFruitTree5, -1
	object_event 10,  7, SPRITE_FRUIT_TREE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, BerryFieldsFruitTree6, -1
	object_event 17,  7, SPRITE_FRUIT_TREE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, BerryFieldsFruitTree7, -1
	object_event 20,  7, SPRITE_FRUIT_TREE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, BerryFieldsFruitTree8, -1
	object_event  7, 10, SPRITE_FRUIT_TREE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, BerryFieldsFruitTree9, -1
	object_event 10, 10, SPRITE_FRUIT_TREE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, BerryFieldsFruitTree10, -1
	object_event 17, 10, SPRITE_FRUIT_TREE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, BerryFieldsFruitTree11, -1
	object_event 20, 10, SPRITE_FRUIT_TREE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, BerryFieldsFruitTree12, -1
