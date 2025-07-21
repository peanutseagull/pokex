	object_const_def
	const PARFUMPALACE1F_POKEFAN_M
	const PARFUMPALACE1F_SHAUNA
	
ParfumPalace1F_MapScripts:
	def_scene_scripts
	scene_script ParfumPalace1FNoop1Scene, SCENE_PARFUMPALACE1F_FURFROU
	scene_script ParfumPalace1FNoop2Scene, SCENE_PARFUMPALACE1F_NOOP
	
	def_callbacks
	
ParfumPalace1FNoop1Scene:
	end
	
ParfumPalace1FNoop2Scene:
	end
	
ParfumPalace1FFurfrouScene1:
	showemote EMOTE_SHOCK, PLAYER, 15
	applymovement PLAYER, ParfumPalace1FPlayerStepsForwardMovement1
	applymovement PARFUMPALACE1F_POKEFAN_M, ParfumPalace1FManMovement1
	opentext
	writetext ParfumPalace1FManText1
	waitbutton
	closetext
	applymovement PARFUMPALACE1F_POKEFAN_M, ParfumPalace1FManMovement2
	opentext
	writetext ParfumPalace1FManText2
	waitbutton
	closetext
	applymovement PARFUMPALACE1F_POKEFAN_M, ParfumPalace1FManMovement3
	opentext
	writetext ParfumPalace1FManText3
	waitbutton
	closetext
	applymovement PARFUMPALACE1F_POKEFAN_M, ParfumPalace1FManMovement4
	opentext
	writetext ParfumPalace1FManText4
	waitbutton
	closetext
	applymovement PARFUMPALACE1F_SHAUNA, ParfumPalace1FShaunaTalksToYouMovement
	turnobject PLAYER, RIGHT
	opentext
	writetext ParfumPalace1FShaunaText1
	waitbutton
	closetext
	applymovement PARFUMPALACE1F_SHAUNA, ParfumPalace1FShaunaLeavesMovement
	disappear PARFUMPALACE1F_SHAUNA
	setevent EVENT_PARFUM_PALACE_1F_SHAUNA
	setscene SCENE_PARFUMPALACE1F_NOOP
	end
	
ParfumPalace1FFurfrouScene2:
	showemote EMOTE_SHOCK, PLAYER, 15
	applymovement PLAYER, ParfumPalace1FPlayerStepsForwardMovement2
	applymovement PARFUMPALACE1F_POKEFAN_M, ParfumPalace1FManMovement1
	opentext
	writetext ParfumPalace1FManText1
	waitbutton
	closetext
	applymovement PARFUMPALACE1F_POKEFAN_M, ParfumPalace1FManMovement2
	opentext
	writetext ParfumPalace1FManText2
	waitbutton
	closetext
	applymovement PARFUMPALACE1F_POKEFAN_M, ParfumPalace1FManMovement3
	opentext
	writetext ParfumPalace1FManText3
	waitbutton
	closetext
	applymovement PARFUMPALACE1F_POKEFAN_M, ParfumPalace1FManMovement4
	opentext
	writetext ParfumPalace1FManText4
	waitbutton
	closetext
	applymovement PARFUMPALACE1F_SHAUNA, ParfumPalace1FShaunaTalksToYouMovement
	turnobject PLAYER, RIGHT
	opentext
	writetext ParfumPalace1FShaunaText1
	waitbutton
	closetext
	applymovement PARFUMPALACE1F_SHAUNA, ParfumPalace1FShaunaLeavesMovement
	disappear PARFUMPALACE1F_SHAUNA
	setevent EVENT_PARFUM_PALACE_1F_SHAUNA
	setscene SCENE_PARFUMPALACE1F_NOOP
	end
	
ParfumPalace1FManText1:
	text "MAN: Where is"
	line "it?"
	done
	
ParfumPalace1FManText2:
	text "Where could it"
	line "be?!"
	done
	
ParfumPalace1FManText3:
	text "My FURFROU!"
	done
	
ParfumPalace1FManText4:
	text "My beloved little"
	line "FURFROU has"
	cont "disappeared!"
	done
	
ParfumPalace1FShaunaText1:
	text "It disappeared?"
	line "Hey, <PLAY_G>!"
	
	para "We should help"
	line "look!"
	
	para "That poor little"
	line "FURFROU!"
	
	para "I can't imagine"
	line "how worried the"
	cont "owner is!"
	
	para "I mean, if my…"
	
	para "If my #MON"
	line "were missing,"
	cont "I'd be worried"
	cont "sick!"
	
	para "It can't have"
	line "gotten far-"
	
	para "Let's go!"
	done
	
ParfumPalace1FPlayerStepsForwardMovement1:
	step UP
	step_end
	
ParfumPalace1FPlayerStepsForwardMovement2:
	step LEFT
	step UP
	step_end
	
ParfumPalace1FManMovement1:
	turn_head LEFT
	turn_head DOWN
	turn_head RIGHT
	step_end
	
ParfumPalace1FManMovement2:
	step LEFT
	step LEFT
	turn_head DOWN
	turn_head RIGHT
	turn_head UP
	turn_head LEFT
	turn_head UP
	step_end
	
ParfumPalace1FManMovement3:
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	turn_head LEFT
	turn_head DOWN
	turn_head RIGHT
	turn_head UP
	step_end
	
ParfumPalace1FManMovement4:
	step LEFT
	step LEFT
	step LEFT
	turn_head UP
	step_end
	
ParfumPalace1FShaunaTalksToYouMovement:
	step LEFT
	step_end
	
ParfumPalace1FShaunaLeavesMovement:
	step RIGHT
	step UP
	step UP
	step UP
	step UP
	step UP
	step UP
	step_end
	
ParfumPalace1FPokefanmScript:
	jumptextfaceplayer ParfumPalace1FManText4
	
ParfumPalace1FGentlemanScript:
	jumptextfaceplayer ParfumPalace1FGentlemanText
	
ParfumPalace1FGramps1Script:
	jumptextfaceplayer ParfumPalace1FGramps1Text
	
ParfumPalace1FMinstrelScript:
	jumptextfaceplayer ParfumPalace1FMinstrelText
	
ParfumPalace1FBackpacker1Script:
	jumptextfaceplayer ParfumPalace1FBackpacker1Text
	
ParfumPalace1FPokefanf1Script:
	jumptextfaceplayer ParfumPalace1FPokefanf1Text
	
ParfumPalace1FChefScript:
	jumptextfaceplayer ParfumPalace1FChefText
	
ParfumPalace1FWaiterScript:
	jumptextfaceplayer ParfumPalace1FWaiterText
	
ParfumPalace1FBackpacker2Script:
	jumptextfaceplayer ParfumPalace1FBackpacker2Text
	
ParfumPalace1FBackpacker3Script:
	jumptextfaceplayer ParfumPalace1FBackpacker3Text
	
ParfumPalace1FPokefanf2Script:
	jumptextfaceplayer ParfumPalace1FPokefanf2Text
	
ParfumPalace1FGramps2Script:
	jumptextfaceplayer ParfumPalace1FGramps2Text
	
ParfumPalace1FPokefanf3Script:
	jumptextfaceplayer ParfumPalace1FPokefanf3Text
	
ParfumPalace1FPokefanf3Text:
	text "This palace was"
	line "built after KALOS"
	cont "won a war with"
	cont "a neighbouring"
	cont "nation."
	
	para "I'll bet a lot of"
	line "people and #MON"
	cont "lost their lives."
	done
	
ParfumPalace1FGramps2Text:
	text "The person who"
	line "made this palace"
	cont "must have been"
	cont "very admirable."
	
	para "This entire"
	line "building has such"
	cont "an atmosphere"
	cont "of elegance."
	done
	
ParfumPalace1FPokefanf2Text:
	text "I heard of a king"
	line "from long ago"
	cont "whose garden was"
	cont "his pride." ; and joy
	
	para "He'd gather the"
	line "castle folk and"
	cont "hold garden"
	cont "parties!"
	done	
	
ParfumPalace1FBackpacker3Text:
	text "You need a pretty"
	line "amazing king to"
	cont "build a palace"
	cont "like this."
	done
	
ParfumPalace1FBackpacker2Text:
	text "Don't try to"
	line "sleep in the"
	cont "king's bed."
	
	para "It's ir-regal!"
	line "Ha ha!"
	
	para "Hey! Are you"
	line "trying to use"
	cont "MEAN LOOK on me?"
	done
	
ParfumPalace1FWaiterText:
	text "For the owner of"
	line "this palace,"
	
	para "every meal is a"
	line "feast."
	
	para "If you've never"
	line "known anything"
	cont "else,"
	
	para "a meal like that"
	line "seems completely"
	cont "normal."
	done
	
ParfumPalace1FChefText:
	text "I think it would"
	line "be so much better"
	cont "if he had a"
	cont "lively dinner"
	cont "with everyone,"
	
	para "instead of a"
	line "full-course meal"
	cont "alone."
	done
	
ParfumPalace1FGentlemanText:
	text "Past this door is"
	line "the pride and joy"
	cont "of the palace--"
	
	para "the too-vast"
	line "courtyard."
	
	para "You can see the"
	line "whole garden from"
	cont "the balcony on"
	cont "the second floor."
	done
	
ParfumPalace1FPokefanf1Text:
	text "I feel like I'm"
	line "in a dream."
	done
	
ParfumPalace1FGramps1Text:
	text "I wonder what the"
	line "king of the KALOS"
	cont "region thought"
	cont "about #MON."
	done
	
ParfumPalace1FBackpacker1Text:
	text "What's special"
	line "about this place"
	cont "isn't just the"
	cont "beauty of the"
	cont "architecture…"
	
	para "It's about how"
	line "the paintings and"
	cont "sculptures work"
	cont "in harmony with"
	cont "the surroundings."
	done
	
ParfumPalace1FMinstrelText:
	text "I am a travelling"
	line "minstrel,"
	
	para "wandering the"
	line "world. Please"
	cont "listen to my"
	cont "song."
	
	para "The KALOS region,"
	line "now upheld as"
	cont "fair,"
	
	para "from ancient days"
	line "an ugly past doth"
	cont "bear."
	
	para "The woes of war"
	line "did knock on"
	cont "every door,"
	
	para "till' man nor"
	line "#MON could"
	cont "take no more,"
	
	para "Three thousand"
	line "years ago, upon"
	cont "this shore."
	done
	
ParfumPalace1F_MapEvents:
	db 0, 0 ; filler
	
	def_warp_events
	warp_event 24, 11, PARFUM_PALACE_OUTSIDE, 1
	warp_event 25, 11, PARFUM_PALACE_OUTSIDE, 1
	warp_event 24,  0, PARFUM_PALACE_GARDEN_1, 1
	warp_event 25,  0, PARFUM_PALACE_GARDEN_1, 2
	warp_event  1,  3, PARFUM_PALACE_2F, 1
	warp_event 49,  3, PARFUM_PALACE_2F, 2
	warp_event 10, 0, PARFUM_PALACE_1F_ROOM_1, 1
	warp_event 11, 0, PARFUM_PALACE_1F_ROOM_1, 2
	warp_event 14,  0, PARFUM_PALACE_1F_ROOM_2, 1
	warp_event 15,  0, PARFUM_PALACE_1F_ROOM_2, 2
	warp_event 34,  0, PARFUM_PALACE_1F_ROOM_3, 1
	warp_event 35,  0, PARFUM_PALACE_1F_ROOM_3, 2
	warp_event 38,  0, PARFUM_PALACE_1F_ROOM_4, 1
	warp_event 39,  0, PARFUM_PALACE_1F_ROOM_4, 2
	
	def_coord_events
	coord_event 24, 10, SCENE_PARFUMPALACE1F_FURFROU, ParfumPalace1FFurfrouScene1
	coord_event 25, 10, SCENE_PARFUMPALACE1F_FURFROU, ParfumPalace1FFurfrouScene2
	
	def_bg_events
	
	def_object_events
	object_event 24,  7, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ParfumPalace1FPokefanmScript, EVENT_PARFUM_PALACE_1F_MAN
	object_event 26,  9, SPRITE_KAREN, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_PARFUM_PALACE_1F_SHAUNA
	object_event 36,  1, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ParfumPalace1FMinstrelScript, -1
	object_event 23,  1, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ParfumPalace1FGentlemanScript, -1
	object_event 32,  3, SPRITE_FISHER, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ParfumPalace1FBackpacker1Script, -1
	object_event 40,  8, SPRITE_POKEFAN_F, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ParfumPalace1FPokefanf1Script, -1
	object_event 46, 10, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ParfumPalace1FGramps1Script, -1
	object_event 46,  1, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ParfumPalace1FChefScript, -1
	object_event 47,  1, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ParfumPalace1FWaiterScript, -1
	object_event 15,  3, SPRITE_FISHER, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ParfumPalace1FBackpacker2Script, -1
	object_event  0,  1, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ParfumPalace1FBackpacker3Script, -1
	object_event  3,  6, SPRITE_POKEFAN_F, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ParfumPalace1FPokefanf2Script, -1
	object_event  6, 12, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ParfumPalace1FGramps2Script, -1
	object_event  9,  8, SPRITE_POKEFAN_F, SPRITEMOVEDATA_WANDER, 0, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ParfumPalace1FPokefanf3Script, -1
