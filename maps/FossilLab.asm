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
	faceplayer
	opentext 
	checkevent EVENT_FOUND_ASSISTANT
	iffalse .NotFound
	checkevent EVENT_GOT_AERODACTYLITE
	iffalse .GiveAerodactylite
	writetext FossilLabScientist1AfterText
	waitbutton
	closetext
	end
	
.NotFound:
	writetext FossilLabScientist1Text
	waitbutton
	closetext
	end
	
.GiveAerodactylite:
	writetext FossilLabScientist1GiveText
	promptbutton
	verbosegiveitem OLD_AMBER ; AERODACYLITE
	writetext FossilLabScientist1GiveAfterText
	waitbutton
	closetext
	setevent EVENT_GOT_AERODACTYLITE
	end
	
FossilLabScientist1Text:
	text "My assistant loves"
	line "to excavate"
	cont "Fossils!"
	
	para "When he's hard at"
	line "work digging, he"
	cont "loses sight of all"
	cont "else."
	done
	
FossilLabScientist1GiveText:
	text "I hear I have"
	line "you to thank for"
	cont "my assistant's"
	cont "return."
	
	para "Thank you very"
	line "much! Take this as"
	cont "my thanks!"
	done
	
FossilLabScientist1GiveAfterText:
	text "I had completely"
	line "forgotten that we"
	cont "found this when"
	cont "we were digging up"
	cont "Fossils."
	
	para "By the way, did"
	line "you know that the"
	cont "#MON AERODACTYL"
	cont "can be restored"
	cont "from OLD AMBER?"
	
	para "Sometimes you can"
	line "find it when you"
	cont "break a rock."
	done
	
FossilLabScientist1AfterText:
	text "Now, if you bring"
	line "us any Fossils,"
	
	para "we will be happy"
	line "to restore them"
	cont "for you!"
	
	para "Sometimes you will"
	line "find them in rocks"
	cont "you break with"
	cont "ROCK SMASH!"
	
	para "Do your best out"
	line "there, and make"
	cont "SYCAMORE proud!"
	done
	
FossilLabScientist2Script:
	faceplayer
	opentext
	checkevent EVENT_FOUND_ASSISTANT
	iffalse .NotFound
	writetext FossilLabScientist2Text2
	waitbutton
	closetext
	end
	
.NotFound:
	writetext FossilLabScientist2Text1
	waitbutton
	closetext
	end
	
FossilLabScientist2Text1:
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
	
FossilLabScientist2Text2:
	text "If you show the"
	line "assistant a"
	cont "Fossil, he will"
	cont "turn it back into"
	cont "a #MON."
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
	
FossilLabScientist3Text:
	text "You must have come"
	line "to the FOSSIL LAB"
	cont "because you like"
	cont "Fossils."
	done
	
FossilLabAssistantScript:
	faceplayer
	opentext
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1 ; remove the next two lines to immediately receive the fossil
	iftrue .GaveScientistFossil
	checkevent EVENT_GAVE_SCIENTIST_OLD_AMBER
	iftrue .GiveAerodactyl
	checkevent EVENT_GAVE_SCIENTIST_JAW_FOSSIL
	iftrue .GiveTyrunt
	checkevent EVENT_GAVE_SCIENTIST_SAIL_FOSSIL
	iftrue .GiveAmaura
	writetext FossilLabAssistantIntroText
	yesorno
	iffalse .No
	checkitem OLD_AMBER
	iffalse .CheckJawFossil
	getmonname STRING_BUFFER_3, AERODACTYL
	writetext FossilLabAssistantOldAmberText
	promptbutton
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1 ; remove this to immediately receive the fossil
	setevent EVENT_GAVE_SCIENTIST_OLD_AMBER
	takeitem OLD_AMBER
	writetext FossilLabAssistantGiveText
	waitbutton
	sjump .GaveScientistFossil
	
.CheckJawFossil
	checkitem JAW_FOSSIL
	iffalse .CheckSailFossil
	getmonname STRING_BUFFER_3, TYRUNT
	writetext FossilLabAssistantJawFossilText
	promptbutton
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1 ; remove this to immediately receive the fossil
	setevent EVENT_GAVE_SCIENTIST_JAW_FOSSIL
	takeitem JAW_FOSSIL
	opentext
	writetext FossilLabAssistantGiveText
	waitbutton
	sjump .GaveScientistFossil
	
.CheckSailFossil
	checkitem SAIL_FOSSIL
	iffalse .NoFossils
	getmonname STRING_BUFFER_3, AMAURA
	writetext FossilLabAssistantSailFossilText
	promptbutton
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1 ; remove this to immediately receive the fossil
	setevent EVENT_GAVE_SCIENTIST_SAIL_FOSSIL
	takeitem SAIL_FOSSIL
	writetext FossilLabAssistantGiveText
	waitbutton
	sjump .GaveScientistFossil
	
.NoFossils
	writetext FossilLabAssistantNoFossilsText
	waitbutton
	closetext
	end

.No
	writetext FossilLabAssistantNoText
	waitbutton
	closetext
	end

.GaveScientistFossil:
	writetext FossilLabAssistantTimeText
	waitbutton
	closetext
       ; older versions will use FadeBlackQuickly below instead
	; special FadeOutToBlack ; uncomment the next five lines to immediately receive the fossil
	; special ReloadSpritesNoPalettes
	; playsound SFX_WARP_TO
	; waitsfx
	; pause 35
	end ; replace this with "sjump FossilScientist" to immediately receive the fossil

.GiveAerodactyl:
	readvar VAR_PARTYCOUNT
	ifequal PARTY_LENGTH, .NoRoom
	clearevent EVENT_GAVE_SCIENTIST_OLD_AMBER
	writetext FossilLabAssistantDoneText
	promptbutton
	getmonname STRING_BUFFER_3, AERODACTYL
	writetext FossilScientistReceiveText
	playsound SFX_CAUGHT_MON
	waitsfx
	; waitbutton
	; writetext FossilScientistMonText
	givepoke AERODACTYL, 20
	closetext
	end

.GiveTyrunt:
	readvar VAR_PARTYCOUNT
	ifequal PARTY_LENGTH, .NoRoom
	clearevent EVENT_GAVE_SCIENTIST_JAW_FOSSIL
	writetext FossilLabAssistantDoneText
	promptbutton
	getmonname STRING_BUFFER_3, TYRUNT
	writetext FossilScientistReceiveText
	playsound SFX_CAUGHT_MON
	waitsfx
	; waitbutton
	; writetext FossilScientistMonText
	givepoke TYRUNT, 20
	closetext
	end

.GiveAmaura:
	readvar VAR_PARTYCOUNT
	ifequal PARTY_LENGTH, .NoRoom
	clearevent EVENT_GAVE_SCIENTIST_SAIL_FOSSIL
	writetext FossilLabAssistantDoneText
	promptbutton
	getmonname STRING_BUFFER_3, AMAURA
	writetext FossilScientistReceiveText
	playsound SFX_CAUGHT_MON
	waitsfx
	; waitbutton
	; writetext FossilScientistMonText
	givepoke AMAURA, 20
	closetext
	end

.NoRoom:
	writetext FossilLabAssistantPartyFullText
	waitbutton
	closetext
	end

FossilLabAssistantIntroText:
	text "I am researching"
	line "#MON Fossils"
	cont "here."
	
	para "You have a Fossil,"
	line "don't you?"
	
	para "Shall I restore"
	line "it for you?"
	done
	
FossilLabAssistantNoText:
	text "Oh, you'd like to"
	line "keep it as a"
	cont "Fossil? OK!"
	done
	
FossilLabAssistantOldAmberText:
	text "OK, then!"
	
	para "I'll turn that"
	line "OLD AMBER back"
	cont "into a #MON"
	cont "for you!"
	done
	
FossilLabAssistantJawFossilText:
	text "OK, then!"
	
	para "I'll turn that"
	line "JAW FOSSIL back"
	cont "into a #MON"
	cont "for you!"
	done
	
FossilLabAssistantSailFossilText:
	text "OK, then!"
	
	para "I'll turn that"
	line "SAIL FOSSIL back"
	cont "into a #MON"
	cont "for you!"
	done
	
FossilLabAssistantNoFossilsText:
	text "You don't have a"
	line "Fossil? That's too"
	cont "bad."
	
	para "If you find one,"
	line "bring it to me!"
	done

FossilLabAssistantPartyFullText:
	text "Where were you?"

	para "Your Fossil has"
	line "been restored"
	cont "back into a"
	cont "#MON!"

	para "Oh no! Your party"
	line "is full!"
	done

FossilLabAssistantTimeText:
	text "The machine could"
	line "take a bit of"
	cont "time,"
	
	para "why don't you go"
	line "for a short walk?"
	done

FossilLabAssistantDoneText:
	text "Where were you?"

	para "Your Fossil has"
	line "been restored"
	cont "back into a"
	cont "#MON!"
	
	para "Please take good"
	line "care of it."
	done

FossilLabAssistantGiveText:
	text "So! You hurry and"
	line "give me that!"

	para "<PLAYER> handed"
	line "over the fossil."
	done

FossilScientistReceiveText:
	text "<PLAYER> received"
	line "@"
	text_ram wStringBuffer3
	text "!"
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
	object_event 16,  4, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, FossilLabScientist1Script, -1
	object_event 17,  5, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, FossilLabScientist2Script, -1
	object_event  1,  3, SPRITE_FISHER, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, FossilLabHikerScript, -1
	object_event  2,  7, SPRITE_SCIENTIST, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, FossilLabScientist3Script, -1
	object_event  6,  1, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, FossilLabAssistantScript, EVENT_ASSISTANT_IN_FOSSIL_LAB
