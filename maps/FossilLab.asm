	object_const_def
	const FOSSILLAB_COOLTRAINER_F
	const FOSSILLAB_SCIENTIST1
	const FOSSILLAB_SCIENTIST2
	
FossilLab_MapScripts:
	def_scene_scripts
	scene_script FossilLabNoop1Scene, SCENE_FOSSILLAB_FIRST
	scene_script FossilLabNoop2Scene, SCENE_FOSSILLAB_NOOP
	
	def_callbacks
	
FossilLabNoop1Scene:
	disappear FOSSILLAB_COOLTRAINER_F
	end

FossilLabNoop2Scene:
	disappear FOSSILLAB_COOLTRAINER_F
	end
	
FossilLabScene1:
	appear FOSSILLAB_COOLTRAINER_F
	applymovement FOSSILLAB_COOLTRAINER_F, FossilLabSerenaCatchesUpMovement1
	turnobject PLAYER, DOWN
	turnobject FOSSILLAB_COOLTRAINER_F, UP
	opentext
	writetext FossilLabSerenaText1
	waitbutton
	closetext
	follow PLAYER, FOSSILLAB_COOLTRAINER_F
	applymovement PLAYER, FossilLabPlayerMovesForwardMovement1
	stopfollow
	turnobject PLAYER, RIGHT
	turnobject FOSSILLAB_COOLTRAINER_F, RIGHT
	showemote EMOTE_SHOCK, FOSSILLAB_SCIENTIST1, 15
	turnobject FOSSILLAB_SCIENTIST1, LEFT
	turnobject FOSSILLAB_SCIENTIST2, LEFT
	opentext
	writetext FossilLabScientistSceneText1
	yesorno
	iffalse .saidno
	writetext FossilLabKnewText
	jump .Continue
.saidno
	writetext FossilLabScientistDidntKnowText
.Continue
	writetext FossilLabScientistSceneText2
	waitbutton
	closetext
	turnobject PLAYER, DOWN
	turnobject FOSSILLAB_COOLTRAINER_F, UP
	opentext
	writetext FossilLabSerenaText2
	waitbutton
	closetext
	applymovement FOSSILLAB_COOLTRAINER_F, FossilLabSerenaLeavesMovement
	setevent EVENT_MET_FOSSIL_SCIENTIST
	setscene SCENE_FOSSILLAB_NOOP
	end
	
FossilLabScene2:
	moveobject FOSSILLAB_COOLTRAINER_F, 11, 2
	appear FOSSILLAB_COOLTRAINER_F
	applymovement FOSSILLAB_COOLTRAINER_F, FossilLabSerenaCatchesUpMovement2
	turnobject PLAYER, UP
	turnobject FOSSILLAB_COOLTRAINER_F, DOWN
	opentext
	writetext FossilLabSerenaText1
	waitbutton
	closetext
	follow PLAYER, FOSSILLAB_COOLTRAINER_F
	applymovement PLAYER, FossilLabPlayerMovesForwardMovement2
	stopfollow
	turnobject PLAYER, RIGHT
	turnobject FOSSILLAB_COOLTRAINER_F, RIGHT
	showemote EMOTE_SHOCK, FOSSILLAB_SCIENTIST1, 15
	turnobject FOSSILLAB_SCIENTIST1, LEFT
	turnobject FOSSILLAB_SCIENTIST2, LEFT
	opentext
	writetext FossilLabScientistSceneText1
	yesorno
	iffalse .saidno
	writetext FossilLabKnewText
	jump .Continue
.saidno
	writetext FossilLabScientistDidntKnowText
.Continue
	promptbutton
	writetext FossilLabScientistSceneText2
	waitbutton
	closetext
	turnobject PLAYER, DOWN
	turnobject FOSSILLAB_COOLTRAINER_F, UP
	opentext
	writetext FossilLabSerenaText2
	waitbutton
	closetext
	applymovement FOSSILLAB_COOLTRAINER_F, FossilLabSerenaLeavesMovement
	setevent EVENT_MET_FOSSIL_SCIENTIST
	setscene SCENE_FOSSILLAB_NOOP
	end

FossilLabSerenaCatchesUpMovement1:
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step RIGHT
	step_end
	
FossilLabPlayerMovesForwardMovement1:
	step RIGHT
	step RIGHT
	step UP
	step UP
	step_end
	
FossilLabSerenaLeavesMovement:
	step DOWN
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step_end
	
FossilLabSerenaCatchesUpMovement2:
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step RIGHT
	step_end
	
FossilLabPlayerMovesForwardMovement2:
	step RIGHT
	step RIGHT
	step UP
	step UP
	step UP
	step_end
	
FossilLabSerenaText1:
	text "<PLAY_G>, wait for"
	line "me."
	done
	
FossilLabScientistSceneText1:
	text "Welcome, future"
	line "archaeologists!"
	
	para "You must have been"
	line "brought here by"
	cont "the mystique of"
	cont "Fossils!"
	
	para "SERENA: My name is"
	line "SERENA, and this"
	cont "is <PLAY_G>."
	
	para "We're researching"
	line "MEGA EVOLUTION,"
	cont "and we were"
	cont "wondering if you"
	cont "know anything"
	cont "about it."
	
	para "SCIENTIST: Oho! So"
	line "you're SYCAMORE's"
	cont "students!"
	
	para "I've heard about"
	line "you!"
	
	para "MEGA EVOLUTION,"
	line "you say…"
	
	para "I'm sorry, but all"
	line "I know is that it"
	cont "has something to"
	cont "do with mysterious"
	cont "stones…"
	
	para "Still, since you"
	line "are students of"
	cont "the professor, you"
	cont "must know about"
	cont "#MON Fossils,"
	cont "correct?"
	done
	
FossilLabKnewText:
	text "Wonderful! I"
	line "expect no less"
	cont "from SYCAMORE's"
	cont "students!"
	done
	
FossilLabScientistDidntKnowText:
	text "How unexpected!"
	line "I would have"
	cont "thought SYCAMORE's"
	cont "students would"
	cont "know the basics."
	done
	
FossilLabScientistSceneText2:
	text "Fossils are the"
	line "legacy of #MON"
	cont "from the distant"
	cont "past!"

	para "I think you should"
	line "definitely go to"
	cont "the dig site and"
	cont "see the real"
	cont "thing!"
	
	para "SERENA: Oh. I see"
	
	para "Well, if you don't"
	line "know about MEGA"
	cont "EVOLUTION, then…"
	
	para "SCIENTIST: Hold"
	line "on! #MON that"
	cont "can be restored"
	cont "from Fossils just"
	cont "might have some-"
	cont "thing to do with"
	cont "MEGA EVOLUTION."
	
	para "The assistant in"
	line "GLITTERING CAVE"
	cont "right now might"
	cont "know about that!"
	done
	
FossilLabSerenaText2:
	text "That sounds"
	line "promising!"
	
	para "Let's go!"
	done
	
FossilLabScientist1Script:
	jumptextfaceplayer FossilLabScientist1Text
	
FossilLabScientist1Text:
	text "My assistant loves"
	line "to excavate"
	cont "Fossils!"
	
	para "When he's hard at"
	line "work digging, he"
	cont "loses sight of all"
	cont "else."
	done
	
FossilLabScientist2Script:
	jumptextfaceplayer FossilLabScientist2Text
	
FossilLabScientist2Text:
	text "We have a machine"
	line "that restores"
	cont "Fossils and turns"
	cont "them back into"
	cont "#MON."
	
	para "But only the"
	line "assistant in"
	cont "GLITTERING CAVE"
	cont "knows how to use"
	cont "it."
	done
	
FossilLabHikerScript:
	jumptextfaceplayer FossilLabHikerText
	
FossilLabHikerText:
	text "Have you heard of"
	line "GENESECT?"
	
	para "Maybe it's just a"
	line "myth…"
	done
	
FossilLabScientist3Script:
	jumptextfaceplayer FossilLabScientist3Text
	end
	
FossilLabScientist3Text:
	text "You must have come"
	line "to the FOSSIL LAB"
	cont "because you like"
	cont "Fossils."
	done
	
FossilLab_MapEvents:
	db 0, 0 ; filler
	
	def_warp_events
	warp_event  6,  9, AMBRETTE_TOWN, 8
	warp_event  7,  9, AMBRETTE_TOWN, 8
	
	def_coord_events
	coord_event 12,  6, SCENE_FOSSILLAB_FIRST, FossilLabScene1
	coord_event 12,  7, SCENE_FOSSILLAB_FIRST, FossilLabScene2
	
	def_bg_events
	
	def_object_events
	object_event 11,  1, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_MET_FOSSIL_SCIENTIST
	object_event 16,  4, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, FossilLabScientist1Script, EVENT_FOUND_ASSISTANT
	object_event 17,  5, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, FossilLabScientist2Script, EVENT_FOUND_ASSISTANT
	object_event  1,  3, SPRITE_FISHER, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, FossilLabHikerScript, -1
	object_event  2,  7, SPRITE_SCIENTIST, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, FossilLabScientist3Script, -1
