	object_const_def
	const CAMPHRIERTOWN_POKE_BALL1
	const CAMPHRIERTOWN_POKE_BALL2
	const CAMPHRIERTOWN_YOUNGSTER1
	const CAMPHRIERTOWN_POKEFANM
	const CAMPHRIERTOWN_BEAUTY
	const CAMPHRIERTOWN_YOUNGSTER2
	
CamphrierTown_MapScripts:
	def_scene_scripts
	scene_script CamphrierTownNoop1Scene, SCENE_CAMPHRIERTOWN_CANT_LEAVE
	scene_script CamphrierTownNoop2Scene, SCENE_CAMPHRIERTOWN_NOOP
	
	def_callbacks
	
CamphrierTownNoop1Scene:
	end
	
CamphrierTownNoop2Scene:
	end

CamphrierTown_CantLeaveScene1:
	showemote EMOTE_SHOCK, CAMPHRIERTOWN_YOUNGSTER2, 15
	turnobject PLAYER, UP
	opentext
	writetext Text_CamphrierDontLeave
	waitbutton
	closetext
	applymovement PLAYER, CamphrierTown_CantLeaveMovement
	end
	
CamphrierTown_CantLeaveScene2:
	showemote EMOTE_SHOCK, CAMPHRIERTOWN_YOUNGSTER2, 15
	applymovement CAMPHRIERTOWN_YOUNGSTER2, CamphrierTown_YoungsterStopsYou1
	turnobject PLAYER, UP
	opentext
	writetext Text_CamphrierDontLeave
	waitbutton
	closetext
	applymovement PLAYER, CamphrierTown_CantLeaveMovement
	applymovement CAMPHRIERTOWN_YOUNGSTER2, CamphrierTown_YoungsterGoesBack1
	end
	
CamphrierTown_CantLeaveScene3:
	showemote EMOTE_SHOCK, CAMPHRIERTOWN_YOUNGSTER2, 15
	applymovement CAMPHRIERTOWN_YOUNGSTER2, CamphrierTown_YoungsterStopsYou2
	turnobject PLAYER, UP
	opentext
	writetext Text_CamphrierDontLeave
	waitbutton
	closetext
	applymovement PLAYER, CamphrierTown_CantLeaveMovement
	applymovement CAMPHRIERTOWN_YOUNGSTER2, CamphrierTown_YoungsterGoesBack2
	end
	
CamphrierTown_CantLeaveMovement:
	turn_head RIGHT
	step RIGHT
	step_end
	
CamphrierTown_YoungsterStopsYou1:
	step DOWN
	step_end
	
CamphrierTown_YoungsterStopsYou2:
	step DOWN
	step DOWN
	step_end
	
CamphrierTown_YoungsterGoesBack1:
	turn_head UP
	step UP
	turn_head DOWN
	step_end
	
CamphrierTown_YoungsterGoesBack2:
	turn_head UP
	step UP
	step UP
	turn_head DOWN
	step_end
	
Text_CamphrierDontLeave:
	text "You there! You're"
	line "going to come all"
	cont "this way and leave"
	cont "without going to"
	cont "SHABBONEAU CASTLE?"
	
	para "You're missing out"
	line "on half the joy"
	cont "in life!"
	
	para "Or… well…"
	line "maybe not half…"
	cont "A quarter?"
	
	para "Hmm, maybe I'm"
	line "still overblowing"
	cont "it…"
	
	para "One percent!"
	line "You're missing at"
	cont "LEAST one percent!"
	done
	
CamphrierTownYoungsterScript:
	faceplayer
	opentext
	checkevent EVENT_CAMPHRIER_TOWN_ULTRA_BALL
	iftrue .AlreadyGotItem
	writetext CamphrierYoungsterUltraBallText
	promptbutton
	verbosegiveitem ULTRA_BALL
	writetext CamphrierYoungsterGotText
	waitbutton
	closetext
	setevent EVENT_CAMPHRIER_TOWN_ULTRA_BALL
	end
	
.AlreadyGotItem:
	writetext CamphrierYoungsterGotText
	waitbutton
	closetext
	end
	
CamphrierTownBeautyScript:
	faceplayer
	opentext
	checkevent EVENT_CAMPHRIER_TOWN_BERRY_JUICE
	iftrue .AlreadyGotItem
	writetext CamphrierBeautyBerryJuiceText
	promptbutton
	verbosegiveitem BERRY_JUICE
	writetext CamphrierBeautyGotText
	waitbutton
	closetext
	setevent EVENT_CAMPHRIER_TOWN_BERRY_JUICE
	end
	
.AlreadyGotItem:
	writetext CamphrierBeautyGotText
	waitbutton
	closetext
	end
	
CamphrierBeautyBerryJuiceText:
	text "Welcome, welcome,"
	line "dear visitor!"
	
	para "Here, take this"
	line "for your #MON!"
	done
	
CamphrierBeautyGotText:
	text "Even if you try to"
	line "keep it all for"
	cont "yourself,"
	
	para "a human like you"
	line "or me can't use"
	cont "that!"
	done
	
CamphrierYoungsterUltraBallText:
	text "Hey there! I'll"
	line "give you this,"
	
	para "so tell all your"
	line "friends to come"
	cont "to CAMPHRIER TOWN!"
	done
	
CamphrierYoungsterGotText:
	text "CAMPHRIER has such"
	line "a quiet atmosphere"
	cont "It's timeless."
	done
	
CamphrierTownPokefanmScript:
	checkevent EVENT_ROUTE_7_SNORLAX
	iftrue .FoughtSnorlax
	faceplayer
	opentext
	writetext CamphrierTownPokefanmText1
	waitbutton
	closetext
	end
	
.FoughtSnorlax:
	faceplayer
	opentext
	writetext CamphrierTownPokefanmText2
	waitbutton
	closetext
	end
	
CamphrierTownPokefanmText1:
	text "It's about that"
	line "time again, huh…"
	
	para "That lazy lug'll"
	line "be back soon…"
	done
	
CamphrierTownPokefanmText2:
	text "No one wishes"
	line "more than us that"
	cont "we could give"
	cont "SNORLAX gobs of"
	cont "berries like we"
	cont "used to."
	done
	
CamphrierTownBlocksYou:
	faceplayer
	opentext
	checkevent EVENT_SHABBONEAU_CASTLE_SHAUNA
	iftrue .MetShauna
	writetext Text_CamphrierDontLeave
	waitbutton
	closetext
	turnobject CAMPHRIERTOWN_YOUNGSTER2, DOWN
	end
	
.MetShauna:
	writetext CamphrierTownBlocksYouText
	waitbutton
	closetext
	end
	
CamphrierTownBlocksYouText:
	; text "I'm supposed to"
	; line "block you from"
	; cont "leaving,"
	
	; para "but the creator of"
	; line "this ROM hack is"
	; cont "lazy!"
	; done
	
	text "SHABBONEAU CASTLE"
	line "must look pretty"
	cont "different to you"
	cont "than to me."
	
	para "We are different"
	line "people, after"
	cont "all."
	done
	
CamphrierTownStarPiece:
	itemball STAR_PIECE	
	
CamphrierTownXAttack:
	itemball X_ATTACK
	
CamphrierTownHiddenEther:
	hiddenitem ETHER, EVENT_CAMPHRIER_TOWN_HIDDEN_ETHER

CamphrierTownHiddenAntidote:
	hiddenitem ANTIDOTE, EVENT_CAMPHRIER_TOWN_HIDDEN_ANTIDOTE
	
CamphrierTownSign:
	jumptext CamphrierTownSignText
	
CamphrierTownSignText:
	text "CAMPHRIER TOWN"
	
	para "A town where you"
	line "can taste the"
	cont "ages."
	done
	
ShabboneauCastleSign:
	jumptext ShabonneauCastleSignText
	
ShabonneauCastleSignText:
	text "SHABBONEAU CASTLE"
	done	
	
CamphrierTown_MapEvents:
	db 0, 0 ; filler
	
	def_warp_events
	warp_event 21, 23, CAMPHRIER_POKECENTER_1F, 1
	warp_event  7, 13, CAMPHRIER_MART, 2
	warp_event  3, 13, CAMPHRIER_HOUSE_1, 1
	warp_event 23, 13, CAMPHRIER_HOUSE_2, 1
	warp_event  8, 23, HOTEL_CAMPHRIER_1F, 1
	warp_event 14,  5, SHABBONEAU_CASTLE, 1
	
	def_coord_events
	coord_event  2, 15, SCENE_CAMPHRIERTOWN_CANT_LEAVE, CamphrierTown_CantLeaveScene1
	coord_event  2, 16, SCENE_CAMPHRIERTOWN_CANT_LEAVE, CamphrierTown_CantLeaveScene2
	coord_event  2, 17, SCENE_CAMPHRIERTOWN_CANT_LEAVE, CamphrierTown_CantLeaveScene3
	
	def_bg_events
	bg_event 18, 35, BGEVENT_ITEM, CamphrierTownHiddenEther
	bg_event 19, 10, BGEVENT_ITEM, CamphrierTownHiddenAntidote
	bg_event 12, 20, BGEVENT_READ, CamphrierTownSign
	bg_event 12,  6, BGEVENT_READ, ShabboneauCastleSign
	
	def_object_events
	object_event 17, 35, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, CamphrierTownStarPiece, EVENT_CAMPHRIER_TOWN_STAR_PIECE
	object_event  3, 26, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, CamphrierTownXAttack, EVENT_CAMPHRIER_TOWN_X_ATTACK
	object_event 18, 25, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CamphrierTownYoungsterScript, -1
	object_event 20, 14, SPRITE_POKEFAN_M, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CamphrierTownPokefanmScript, -1
	object_event 12, 17, SPRITE_BEAUTY, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CamphrierTownBeautyScript, -1
	object_event  2, 14, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CamphrierTownBlocksYou, -1
