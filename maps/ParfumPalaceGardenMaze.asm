	object_const_def
	const PARFUMPALACEGARDENMAZE_FURFROU
	const PARFUMPALACEGARDENMAZE_SHAUNA
	const PARFUMPALACEGARDENMAZE_POKEFAN_M
	
ParfumPalaceGardenMaze_MapScripts:
	def_scene_scripts
	scene_script ParfumPalaceGardenMazeNoop1, SCENE_PARFUMPALACEGARDENMAZE_NOOP
	scene_script ParfumPalaceGardenMazeNoop2, SCENE_PARFUMPALACEGARDENMAZE_FURFROU
	
	def_callbacks
	callback MAPCALLBACK_OBJECTS, ParfumPalaceGardenMazeFurfrouCallback
	
ParfumPalaceGardenMazeNoop1:
	end
	
ParfumPalaceGardenMazeNoop2:
	end
	
ParfumPalaceGardenMaze_FurfrouScene1:
	applymovement PLAYER, ParfumPalaceGardenMazePlayerMovesAsideMovement1
	appear PARFUMPALACEGARDENMAZE_POKEFAN_M
	appear PARFUMPALACEGARDENMAZE_SHAUNA
	applymovement PARFUMPALACEGARDENMAZE_SHAUNA, ParfumPalaceGardenMazeEntersMovement
	turnobject PLAYER, UP
	opentext
	writetext ParfumPalaceGardenMazeShaunaText1
	waitbutton
	closetext
	applymovement PARFUMPALACEGARDENMAZE_POKEFAN_M, ParfumPalaceGardenMazeEntersMovement
	turnobject PARFUMPALACEGARDENMAZE_FURFROU, UP
	turnobject PLAYER, LEFT
	turnobject PARFUMPALACEGARDENMAZE_SHAUNA, LEFT	
	opentext
	writetext ParfumPalaceGardenMazeManText1
	waitbutton
	closetext
	turnobject PARFUMPALACEGARDENMAZE_POKEFAN_M, RIGHT
	opentext
	writetext ParfumPalaceGardenMazeManText2
	waitbutton
	closetext
	turnobject PARFUMPALACEGARDENMAZE_POKEFAN_M, DOWN
	opentext
	writetext ParfumPalaceGardenMazeManText3
	waitbutton
	closetext
	turnobject PARFUMPALACEGARDENMAZE_POKEFAN_M, RIGHT
	opentext
	writetext ParfumPalaceGardenMazeManText4
	waitbutton
	closetext
	follow PARFUMPALACEGARDENMAZE_POKEFAN_M, PARFUMPALACEGARDENMAZE_FURFROU
	applymovement PARFUMPALACEGARDENMAZE_POKEFAN_M, ParfumPalaceGardenMazeLeavesMovement
	disappear PARFUMPALACEGARDENMAZE_FURFROU
	disappear PARFUMPALACEGARDENMAZE_POKEFAN_M
	setevent EVENT_PARFUM_PALACE_GARDEN_MAZE_FURFROU
	turnobject PARFUMPALACEGARDENMAZE_SHAUNA, UP
	applymovement PLAYER, ParfumPalaceGardenMazePlayerMovesBackMovement
	opentext
	writetext ParfumPalaceGardenMazeShaunaText2
	waitbutton
	closetext
	turnobject PARFUMPALACEGARDENMAZE_SHAUNA, LEFT
	turnobject PLAYER, RIGHT
	opentext
	writetext ParfumPalaceGardenMazeShaunaText3
	waitbutton
	closetext
	applymovement PARFUMPALACEGARDENMAZE_SHAUNA, ParfumPalaceGardenMazeLeavesMovement
	disappear PARFUMPALACEGARDENMAZE_SHAUNA
	turnobject PLAYER, UP
	setscene SCENE_PARFUMPALACEGARDENMAZE_NOOP
	setmapscene PARFUM_PALACE_2F_BALCONY, SCENE_PARFUMPALACE2FBALCONY_SHAUNA
	clearevent EVENT_PARFUM_PALACE_2F_BALCONY_SHAUNA
	setevent EVENT_PARFUM_PALACE_1F_MAN
	end
	
ParfumPalaceGardenMaze_FurfrouScene2:
	applymovement PLAYER, ParfumPalaceGardenMazePlayerMovesAsideMovement2
	appear PARFUMPALACEGARDENMAZE_POKEFAN_M
	appear PARFUMPALACEGARDENMAZE_SHAUNA
	applymovement PARFUMPALACEGARDENMAZE_SHAUNA, ParfumPalaceGardenMazeEntersMovement
	turnobject PLAYER, UP
	opentext
	writetext ParfumPalaceGardenMazeShaunaText1
	waitbutton
	closetext
	applymovement PARFUMPALACEGARDENMAZE_POKEFAN_M, ParfumPalaceGardenMazeEntersMovement
	turnobject PLAYER, LEFT
	turnobject PARFUMPALACEGARDENMAZE_SHAUNA, LEFT	
	turnobject PARFUMPALACEGARDENMAZE_FURFROU, UP
	opentext
	writetext ParfumPalaceGardenMazeManText1
	waitbutton
	closetext
	turnobject PARFUMPALACEGARDENMAZE_POKEFAN_M, RIGHT
	opentext
	writetext ParfumPalaceGardenMazeManText2
	waitbutton
	closetext
	turnobject PARFUMPALACEGARDENMAZE_POKEFAN_M, DOWN
	opentext
	writetext ParfumPalaceGardenMazeManText3
	waitbutton
	closetext
	turnobject PARFUMPALACEGARDENMAZE_POKEFAN_M, RIGHT
	opentext
	writetext ParfumPalaceGardenMazeManText4
	waitbutton
	closetext
	follow PARFUMPALACEGARDENMAZE_POKEFAN_M, PARFUMPALACEGARDENMAZE_FURFROU
	applymovement PARFUMPALACEGARDENMAZE_POKEFAN_M, ParfumPalaceGardenMazeLeavesMovement
	disappear PARFUMPALACEGARDENMAZE_FURFROU
	disappear PARFUMPALACEGARDENMAZE_POKEFAN_M
	setevent EVENT_PARFUM_PALACE_GARDEN_MAZE_FURFROU
	turnobject PARFUMPALACEGARDENMAZE_SHAUNA, UP
	applymovement PLAYER, ParfumPalaceGardenMazePlayerMovesBackMovement
	opentext
	writetext ParfumPalaceGardenMazeShaunaText2
	waitbutton
	closetext
	turnobject PARFUMPALACEGARDENMAZE_SHAUNA, LEFT
	turnobject PLAYER, RIGHT
	opentext
	writetext ParfumPalaceGardenMazeShaunaText3
	waitbutton
	closetext
	applymovement PARFUMPALACEGARDENMAZE_SHAUNA, ParfumPalaceGardenMazeLeavesMovement
	disappear PARFUMPALACEGARDENMAZE_SHAUNA
	turnobject PLAYER, UP
	setscene SCENE_PARFUMPALACEGARDENMAZE_NOOP
	setmapscene PARFUM_PALACE_2F_BALCONY, SCENE_PARFUMPALACE2FBALCONY_SHAUNA
	clearevent EVENT_PARFUM_PALACE_2F_BALCONY_SHAUNA
	setevent EVENT_PARFUM_PALACE_1F_MAN
	end
	
ParfumPalaceGardenMazeShaunaText1:
	text "Phew! Well done!"
	line "We finally caught"
	cont "it!"
	
	para "<PLAY_G>, you're"
	line "amazing!"
	done
	
ParfumPalaceGardenMazeManText1:
	text "MAN: Oh! My dear"
	line "FURFROU!"
	
	para "My beloved"
	line "FURFROU!"
	done

ParfumPalaceGardenMazeManText2:
	text "Could you be the"
	line "two responsible"
	cont "for my wonderfrou"
	cont "reunion with my"
	cont "dear FURFROU?"
	
	para "How wonderfrou"
	line "indeed!"
	
	para "It's marvellous,"
	line "marvellous!"
	
	para "A situation like"
	line "this demands"
	cont "fireworks!"
	
	para "We shall put on a"
	line "show-- boom,"
	cont "boom!"
	done

ParfumPalaceGardenMazeManText3:
	text "My #MON and I"
	line "are reunited!"
	
	para "Our bond has been"
	line "proven!"
	
	para "Let us celebrate"
	line "this joyous"
	cont "occasion!"
	done
	
ParfumPalaceGardenMazeManText4:
	text "And it will also"
	line "serve as a reward"
	cont "for the tiny bit"
	cont "of trouble you"
	cont "went to."
	
	para "Rendezvous at the"
	line "balcony."
	
	para "Understand?"
	line "Ren-dez-vous."
	
	para "It's off the"
	line "second floor"
	cont "hallway."
	done
	
ParfumPalaceGardenMazeShaunaText2:
	text "Maybe FURFROU"
	line "would've been"
	cont "better off if we"
	cont "hadn't found it…"
	done

ParfumPalaceGardenMazeShaunaText3:
	text "If I were a"
	line "#MON, I'd hate"
	cont "to have a Trainer"
	cont "like that!"
	
	para "But I really love"
	line "fireworks, so"
	cont "let's make the"
	cont "best of it!"
	
	para "I'll meet you up"
	line "there!"
	done
	
ParfumPalaceGardenMazeEntersMovement:
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step_end

ParfumPalaceGardenMazePlayerMovesAsideMovement1:
	step DOWN
	step RIGHT
	step DOWN
	turn_head LEFT
	step_end
	
ParfumPalaceGardenMazePlayerMovesAsideMovement2:
	step DOWN
	step DOWN
	turn_head LEFT
	step_end
	
ParfumPalaceGardenMazeLeavesMovement:
	step UP
	step UP
	step UP
	step UP
	step UP
	step UP
	step_end 
	
ParfumPalaceGardenMazePlayerMovesBackMovement:
	step LEFT
	step UP
	step_end
	
; NO CLUE how to make this into Shauna minigame like original
	
ParfumPalaceGardenMazeFurfrouCallback:
	; checkevent EVENT_GOT_HM01_CUT
	; iftrue .Static
	readmem wFurfrouPosition
	ifequal  1, .PositionOne
	ifequal  2, .PositionTwo
	ifequal  3, .PositionThree
	ifequal  4, .PositionFour
	ifequal  5, .PositionFive
	
.PositionOne:
	moveobject PARFUMPALACEGARDENMAZE_FURFROU, 14, 25
	appear PARFUMPALACEGARDENMAZE_FURFROU
	endcallback

.PositionTwo:
	moveobject PARFUMPALACEGARDENMAZE_FURFROU, 2, 15
	appear PARFUMPALACEGARDENMAZE_FURFROU
	endcallback

.PositionThree:
	moveobject PARFUMPALACEGARDENMAZE_FURFROU, 26, 15
	appear PARFUMPALACEGARDENMAZE_FURFROU
	endcallback

.PositionFour:
	moveobject PARFUMPALACEGARDENMAZE_FURFROU, 14, 3
	appear PARFUMPALACEGARDENMAZE_FURFROU
	endcallback

.PositionFive:
	moveobject PARFUMPALACEGARDENMAZE_FURFROU, 14, 11
	appear PARFUMPALACEGARDENMAZE_FURFROU
	endcallback
	
ParfumPalaceGardenMazeFurfrouScript:
	readmem wFurfrouPosition
	ifequal  1, .Position1
	ifequal  2, .Position2
	ifequal  3, .Position3
	ifequal  4, .Position4
	ifequal  5, .Position5
	
.Position1:
	scall .CryAndCheckFacing
	ifequal RIGHT, .Position1_Right
	applymovement PARFUMPALACEGARDENMAZE_FURFROU, MovementData_Furfrou_Pos1_Pos2
	moveobject PARFUMPALACEGARDENMAZE_FURFROU, 2, 15
	disappear PARFUMPALACEGARDENMAZE_FURFROU
	appear PARFUMPALACEGARDENMAZE_FURFROU
	loadmem wFurfrouPosition, 2
	end
	
.Position1_Right:
	applymovement PARFUMPALACEGARDENMAZE_FURFROU, MovementData_Furfrou_Pos1_Pos3
	moveobject PARFUMPALACEGARDENMAZE_FURFROU, 26, 15
	disappear PARFUMPALACEGARDENMAZE_FURFROU
	appear PARFUMPALACEGARDENMAZE_FURFROU
	loadmem wFurfrouPosition, 3
	end
	
.Position2:
	scall .CryAndCheckFacing
	ifequal RIGHT, .Position2_Right
	ifequal UP, .Position2_Up
	applymovement PARFUMPALACEGARDENMAZE_FURFROU, MovementData_Furfrou_Pos2_Pos1
	moveobject PARFUMPALACEGARDENMAZE_FURFROU, 14, 25
	disappear PARFUMPALACEGARDENMAZE_FURFROU
	appear PARFUMPALACEGARDENMAZE_FURFROU
	loadmem wFurfrouPosition, 1
	end
	
.Position2_Right:
	applymovement PARFUMPALACEGARDENMAZE_FURFROU, MovementData_Furfrou_Pos2_Pos3
	moveobject PARFUMPALACEGARDENMAZE_FURFROU, 26, 15
	disappear PARFUMPALACEGARDENMAZE_FURFROU
	appear PARFUMPALACEGARDENMAZE_FURFROU
	loadmem wFurfrouPosition, 3
	end
	
.Position2_Up:
	applymovement PARFUMPALACEGARDENMAZE_FURFROU, MovementData_Furfrou_Pos2_Pos4
	moveobject PARFUMPALACEGARDENMAZE_FURFROU, 14, 3
	disappear PARFUMPALACEGARDENMAZE_FURFROU
	appear PARFUMPALACEGARDENMAZE_FURFROU
	loadmem wFurfrouPosition, 4
	end	
	
.Position3:
	scall .CryAndCheckFacing
	ifequal LEFT, .Position3_Left
	ifequal UP, .Position3_Up
	applymovement PARFUMPALACEGARDENMAZE_FURFROU, MovementData_Furfrou_Pos3_Pos1
	moveobject PARFUMPALACEGARDENMAZE_FURFROU, 14, 25
	disappear PARFUMPALACEGARDENMAZE_FURFROU
	appear PARFUMPALACEGARDENMAZE_FURFROU
	loadmem wFurfrouPosition, 1
	end
	
.Position3_Left:
	applymovement PARFUMPALACEGARDENMAZE_FURFROU, MovementData_Furfrou_Pos3_Pos2
	moveobject PARFUMPALACEGARDENMAZE_FURFROU, 2, 15
	disappear PARFUMPALACEGARDENMAZE_FURFROU
	appear PARFUMPALACEGARDENMAZE_FURFROU
	loadmem wFurfrouPosition, 2
	end	

.Position3_Up:
	applymovement PARFUMPALACEGARDENMAZE_FURFROU, MovementData_Furfrou_Pos3_Pos4
	moveobject PARFUMPALACEGARDENMAZE_FURFROU, 14, 3
	disappear PARFUMPALACEGARDENMAZE_FURFROU
	appear PARFUMPALACEGARDENMAZE_FURFROU
	loadmem wFurfrouPosition, 4
	end	
	
.Position4:
	scall .CryAndCheckFacing
	ifequal LEFT, .Position4_Left
	ifequal UP, .Position4_Left
	ifequal RIGHT, .Position4_Right
	applymovement PARFUMPALACEGARDENMAZE_FURFROU, MovementData_Furfrou_Pos4_Pos5
	moveobject PARFUMPALACEGARDENMAZE_FURFROU, 14, 11
	disappear PARFUMPALACEGARDENMAZE_FURFROU
	appear PARFUMPALACEGARDENMAZE_FURFROU
	loadmem wFurfrouPosition, 5
	setscene SCENE_PARFUMPALACEGARDENMAZE_FURFROU
	end
	
.Position4_Left:
	applymovement PARFUMPALACEGARDENMAZE_FURFROU, MovementData_Furfrou_Pos4_Pos2
	moveobject PARFUMPALACEGARDENMAZE_FURFROU, 2, 15
	disappear PARFUMPALACEGARDENMAZE_FURFROU
	appear PARFUMPALACEGARDENMAZE_FURFROU
	loadmem wFurfrouPosition, 2
	end
	
.Position4_Right:
	applymovement PARFUMPALACEGARDENMAZE_FURFROU, MovementData_Furfrou_Pos4_Pos3
	moveobject PARFUMPALACEGARDENMAZE_FURFROU, 26, 15
	disappear PARFUMPALACEGARDENMAZE_FURFROU
	appear PARFUMPALACEGARDENMAZE_FURFROU
	loadmem wFurfrouPosition, 3
	end	

.Position5:
	end
	
.CryAndCheckFacing:
	faceplayer
	opentext
	writetext Text_Ouaf
	cry FURFROU
	waitbutton
	closetext
	readvar VAR_FACING
	end
	
Text_Ouaf:
	text "Ouaf!"
	done
	
MovementData_Furfrou_Pos1_Pos2:
MovementData_Furfrou_Pos3_Pos2:
MovementData_Furfrou_Pos4_Pos2:
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step_end
	
MovementData_Furfrou_Pos1_Pos3:
MovementData_Furfrou_Pos2_Pos3:
MovementData_Furfrou_Pos4_Pos3:
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step_end
	
MovementData_Furfrou_Pos2_Pos1:
MovementData_Furfrou_Pos3_Pos1:
MovementData_Furfrou_Pos4_Pos5:
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step_end

MovementData_Furfrou_Pos2_Pos4:
MovementData_Furfrou_Pos3_Pos4:
	step UP
	step UP
	step UP
	step UP
	step UP
	step_end
	
ParfumPalaceGardenMaze_MapEvents:
	db 0, 0 ; filler
	
	def_warp_events
	warp_event 14, 29, PARFUM_PALACE_GARDEN_4, 1
	warp_event 15, 29, PARFUM_PALACE_GARDEN_4, 2
	
	def_coord_events
	coord_event 14,  9, SCENE_PARFUMPALACEGARDENMAZE_FURFROU, ParfumPalaceGardenMaze_FurfrouScene1
	coord_event 15,  9, SCENE_PARFUMPALACEGARDENMAZE_FURFROU, ParfumPalaceGardenMaze_FurfrouScene2
	
	def_bg_events
	
	def_object_events
	object_event 14, 25, SPRITE_MONSTER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ParfumPalaceGardenMazeFurfrouScript, EVENT_PARFUM_PALACE_GARDEN_MAZE_FURFROU
	object_event 15,  6, SPRITE_KAREN, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_PARFUM_PALACE_GARDEN_MAZE_SHAUNA
	object_event 14,  6, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_PARFUM_PALACE_GARDEN_MAZE_MAN
