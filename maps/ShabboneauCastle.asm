	object_const_def
	const SHABBONEAUCASTLE_KAREN
	const SHABBONEAUCASTLE_BLACK_BELT
	const SHABBONEAUCASTLE_YOUNGSTER
	
ShabboneauCastle_MapScripts:
	def_scene_scripts
	scene_script ShabboneauCastleNoop1Scene, SCENE_SHABBONEAUCASTLE_SHAUNA
	scene_script ShabboneauCastleNoop2Scene, SCENE_SHABBONEAUCASTLE_NOOP
	
	def_callbacks
	
ShabboneauCastleNoop1Scene:
	showemote EMOTE_SHOCK, SHABBONEAUCASTLE_KAREN, 15
	turnobject SHABBONEAUCASTLE_KAREN, DOWN
	opentext
	writetext ShabboneauCastleSceneText1
	waitbutton
	closetext
	applymovement PLAYER, ShabboneauCastle_PlayerStepsForward
	turnobject SHABBONEAUCASTLE_KAREN, LEFT
	turnobject SHABBONEAUCASTLE_KAREN, UP
	showemote EMOTE_SHOCK, SHABBONEAUCASTLE_BLACK_BELT, 15
	opentext
	writetext ShabboneauCastleSceneText2
	waitbutton
	closetext
	showemote EMOTE_SAD, SHABBONEAUCASTLE_KAREN, 15
	opentext
	writetext ShabboneauCastleSceneText3
	waitbutton
	closetext
	showemote EMOTE_QUESTION, SHABBONEAUCASTLE_BLACK_BELT, 15
	opentext
	writetext ShabboneauCastleSceneText4
	waitbutton
	closetext
	playsound SFX_ENTER_DOOR
	clearevent EVENT_SHABBONEAU_CASTLE_GUY
	appear SHABBONEAUCASTLE_YOUNGSTER
	applymovement SHABBONEAUCASTLE_YOUNGSTER, ShabboneauCastle_YoungsterEnters
	showemote EMOTE_SHOCK, SHABBONEAUCASTLE_KAREN, 15
	showemote EMOTE_SHOCK, SHABBONEAUCASTLE_BLACK_BELT, 15
	showemote EMOTE_SHOCK, PLAYER, 15
	turnobject SHABBONEAUCASTLE_KAREN, DOWN
	turnobject PLAYER, DOWN
	opentext
	writetext ShabboneauCastleSceneText5
	waitbutton
	closetext
	applymovement SHABBONEAUCASTLE_BLACK_BELT, ShabboneauCastle_ManStepsForward
	turnobject PLAYER, RIGHT
	opentext
	writetext ShabboneauCastleSceneText6
	waitbutton
	closetext
	turnobject PLAYER, DOWN
	applymovement SHABBONEAUCASTLE_YOUNGSTER, ShabboneauCastle_YoungsterExits
	disappear SHABBONEAUCASTLE_YOUNGSTER
	applymovement SHABBONEAUCASTLE_BLACK_BELT, ShabboneauCastle_BlackBeltExits
	disappear SHABBONEAUCASTLE_BLACK_BELT
	opentext
	writetext ShabboneauCastleSceneText7
	waitbutton
	closetext
	turnobject SHABBONEAUCASTLE_KAREN, LEFT
	turnobject PLAYER, RIGHT
	opentext
	writetext ShabboneauCastleSceneText8
	waitbutton
	closetext
	turnobject PLAYER, DOWN
	applymovement SHABBONEAUCASTLE_KAREN, ShabboneauCastle_ShaunaExits
	disappear SHABBONEAUCASTLE_KAREN
	setevent EVENT_SHABBONEAU_CASTLE_SHAUNA
	setevent EVENT_SHABBONEAU_CASTLE_GUY
	setscene SCENE_SHABBONEAUCASTLE_NOOP
	setmapscene CAMPHRIER_TOWN, SCENE_CAMPHRIERTOWN_NOOP
	end
	
ShabboneauCastleNoop2Scene:
	end
	
;ShabboneauCastleShauna:
	; showemote EMOTE_SHOCK, SHABBONEAUCASTLE_KAREN, 15
	; turnobject SHABBONEAUCASTLE_KAREN, DOWN
	; opentext
	; writetext ShabboneauCastleSceneText1
	; waitbutton
	; closetext
	; applymovement PLAYER, ShabboneauCastle_PlayerStepsForward
	; showemote EMOTE_SHOCK, SHABBONEAUCASTLE_BLACK_BELT, 15
	; opentext
	; writetext ShabboneauCastleSceneText2
	; waitbutton
	; closetext
	; showemote EMOTE_SAD, SHABBONEAUCASTLE_KAREN, 15
	; opentext
	; writetext ShabboneauCastleSceneText3
	; waitbutton
	; closetext
	; showemote EMOTE_QUESTION, SHABBONEAUCASTLE_BLACK_BELT, 15
	; opentext
	; writetext ShabboneauCastleSceneText4
	; waitbutton
	; closetext
	; playsound SFX_ENTER_DOOR
	; clearevent EVENT_SHABBONEAU_CASTLE_GUY
	; appear SHABBONEAUCASTLE_YOUNGSTER
	; applymovement SHABBONEAUCASTLE_YOUNGSTER, ShabboneauCastle_YoungsterEnters
	; showemote EMOTE_SHOCK, SHABBONEAUCASTLE_KAREN, 15
	; showemote EMOTE_SHOCK, SHABBONEAUCASTLE_BLACK_BELT, 15
	; showemote EMOTE_SHOCK, PLAYER, 15
	; turnobject SHABBONEAUCASTLE_KAREN, DOWN
	; turnobject PLAYER, DOWN
	; opentext
	; writetext ShabboneauCastleSceneText5
	; waitbutton
	; closetext
	; applymovement SHABBONEAUCASTLE_BLACK_BELT, ShabboneauCastle_ManStepsForward
	; turnobject PLAYER, RIGHT
	; opentext
	; writetext ShabboneauCastleSceneText6
	; waitbutton
	; closetext
	; turnobject PLAYER, DOWN
	; applymovement SHABBONEAUCASTLE_YOUNGSTER, ShabboneauCastle_YoungsterExits
	; disappear SHABBONEAUCASTLE_YOUNGSTER
	; applymovement SHABBONEAUCASTLE_BLACK_BELT, ShabboneauCastle_BlackBeltExits
	; disappear SHABBONEAUCASTLE_BLACK_BELT
	; opentext
	; writetext ShabboneauCastleSceneText7
	; waitbutton
	; closetext
	; turnobject SHABBONEAUCASTLE_KAREN, LEFT
	; opentext
	; writetext ShabboneauCastleSceneText8
	; waitbutton
	; closetext
	; applymovement SHABBONEAUCASTLE_KAREN, ShabboneauCastle_ShaunaExits
	; setevent EVENT_SHABBONEAU_CASTLE_SHAUNA
	; setevent EVENT_SHABBONEAU_CASTLE_GUY
	; setscene SCENE_SHABBONEAUCASTLE_NOOP
	; end
	
ShabboneauCastleSceneText1:
	text "Oh hi, <PLAYER>!"
	done
	
ShabboneauCastleSceneText2:
	text "MAN: Two visitors"
	line "to SHABBONEAU"
	cont "CASTLE?"
	
	para "I can't remember"
	line "the last time we"
	cont "were so busy!"
	
	para "This castle,"
	line "chateau if you"
	cont "will, was a manor"
	cont "house of a noble"
	cont "family."
	
	para "It may be a bit"
	line "run down, but"
	cont "that's because"
	cont "there's a history"
	cont "to this place."
	
	para "Over the years,"
	line "the owners of the"
	cont "castle gave away"
	cont "a lot of their"
	cont "stuff..."
	
	para "So that's why it"
	line "feels so empty."
	
	para "The end."
	done
	
ShabboneauCastleSceneText3:
	text "SHAUNA: THAT'S"
	line "IT?!?!?"
	
	para "Don't you know"
	line "anything about"
	cont "MEGA EVOLUTION?"
	done
	
ShabboneauCastleSceneText4:
	text "MAN: That's it."
	line "What the heck is"
	cont "MEGA EVOLUTION?"

	para "SHAUNA: ..."
	done
	
ShabboneauCastleSceneText5:
	text "GUY: Sir! It's"
	line "back again."
	
	para "MAN: Is it that"
	line "time of year"
	cont "already?"
	
	para "Well there's"
	line "nothing I can do"
	cont "about that now..."
	done
	
ShabboneauCastleSceneText6:
	text "I need to go to"
	line "ROUTE 7, but"
	cont "please,"
	
	para "have a look"
	line "around."
	done
	
ShabboneauCastleSceneText7:
	text "SHAUNA: I wonder"
	line "what that's all"
	cont "about..."
	done
	
ShabboneauCastleSceneText8:
	text "I wanna check it"
	line "out!"
	
	para "WAIT FOR ME!!!"
	done
	
ShabboneauCastle_PlayerStepsForward:
	step UP
	step UP
	step_end
	
ShabboneauCastle_YoungsterEnters:
	step UP
	step UP
	step_end
	
ShabboneauCastle_ManStepsForward:
	step DOWN
	step DOWN
	turn_head LEFT
	step_end
	
ShabboneauCastle_YoungsterExits:
	step DOWN
	step DOWN
	step_end
	
ShabboneauCastle_BlackBeltExits:
	step DOWN
	step DOWN
	step DOWN
	step_end
	
ShabboneauCastle_ShaunaExits:
	step LEFT
	step DOWN
	step DOWN
	step DOWN
	step_end
	
ShabboneauCastle_MapEvents:
	db 0, 0 ; filler
	
	def_warp_events
	warp_event 12, 17, CAMPHRIER_TOWN, 6
	warp_event 13, 17, CAMPHRIER_TOWN, 6
	warp_event  4,  2, SHABBONEAU_CASTLE_2F, 1
	warp_event 20,  2, SHABBONEAU_CASTLE_2F, 2
	
	def_coord_events
;	coord_event 12, 16, SCENE_SHABBONEAUCASTLE_SHAUNA, ShabboneauCastleShauna
	
	def_bg_events
	
	def_object_events
	object_event 14, 15, SPRITE_KAREN, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_SHABBONEAU_CASTLE_SHAUNA
	object_event 13, 13, SPRITE_BLACK_BELT, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_SHABBONEAU_CASTLE_SHAUNA
	object_event 13, 18, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_SHABBONEAU_CASTLE_GUY
