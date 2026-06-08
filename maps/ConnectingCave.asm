	object_const_def
	const CONNECTINGCAVE_POKE_BALL
	
ConnectingCave_MapScripts:
	def_scene_scripts
	
	def_callbacks
	
ConnectingCaveBoulder:
	jumpstd StrengthBoulderScript
	
TrainerBreederMercy:
	trainer BREEDERF, MERCY, EVENT_BEAT_BREEDER_MERCY, BreederMercySeenText, BreederMercyBeatenText, 0, .Script
	
.Script:
	endifjustbattled
	opentext
	writetext BreederMercyAfterText
	waitbutton
	closetext
	end
	
BreederMercySeenText:
	text "How well have you"
	line "raised your"
	cont "#MON?"
	
	para "Let's have a"
	line "battle, and I'll"
	cont "let you know!"
	done
	
BreederMercyBeatenText:
	text "Mhmm! You're great"
	line "this #MON-"
	cont "raising thing!"
	done
	
BreederMercyAfterText:
	text "Remember- #MON"
	line "never evolve in"
	cont "the DAY CARE."
	done
	
ConnectingCaveHikerScript:
	jumptextfaceplayer ConnectingCaveHikerText
	
ConnectingCaveHikerText:
	text "Hmm… How do I get"
	line "to AMBRETTE from"
	cont "here?"
	done
	
ConnectingCaveScientistScript:
	faceplayer
	opentext
	checkevent EVENT_CONNECTING_CAVE_HEALED_YOU
	iffalse .Heal
	writetext ConnectingCaveScientistAfterText
	waitbutton
	closetext
	end
	
.Heal
	writetext ConnectingCaveScientistText
	waitbutton
	closetext
	special FadeBlackQuickly
	special ReloadSpritesNoPalettes
	playmusic MUSIC_HEAL
	special HealParty
	pause 60
	special FadeInQuickly
	special RestartMapMusic
	setevent EVENT_CONNECTING_CAVE_HEALED_YOU
	opentext
	writetext ConnectingCaveScientistAfterText
	waitbutton
	closetext
	end

ConnectingCaveScientistText:
	text "How about if I"
	line "help your dear"
	cont "#MON rest up"
	cont "a bit?"
	done
	
ConnectingCaveScientistAfterText:
	text "Your dear #MON"
	line "are so full of"
	cont "energy!"
	done
	
ConnectingCaveFrustrationManScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_TM21_FRUSTRATION
	iftrue .AlreadyGotItem
	writetext ConnectingCaveGiveFrustrationText
	promptbutton
	verbosegiveitem TM_FRUSTRATION
	writetext ConnectingCaveGotFrustrationText
	waitbutton
	closetext
	setevent EVENT_GOT_TM21_FRUSTRATION
	end
	
.AlreadyGotItem:
	writetext ConnectingCaveGotFrustrationText
	waitbutton
	closetext
	end
	
ConnectingCaveGiveFrustrationText:
	text "I can't get out of"
	line "here! And it's all"
	cont "your fault!"
	
	para "Sorry. I had some"
	line "frustration to"
	cont "vent."
	
	para "Here-- have this"
	line "as my apology."
	done
	
ConnectingCaveGotFrustrationText:
	text "FRUSTRATION is a"
	line "move that gets"
	cont "stronger the less"
	cont "your #MON likes"
	cont "you."
	
	para "Frustrating, huh?"
	done
	
ConnectingCaveTm40:
	itemball TM_WING_ATTACK ;(AERIAL_ACE)
	
ConnectingCave_MapEvents:
	db 0, 0 ; filler
	
	def_warp_events
	warp_event 47, 13, ROUTE_7_WEST, 1
	warp_event 39, 27, ROUTE_7_WEST, 2
	warp_event  3, 27, ROUTE_8_UPPER, 1
	warp_event  3,  5, CYLLAGE_CITY, 13
	
	def_coord_events
	
	def_bg_events
	
	def_object_events
	object_event 11,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, ConnectingCaveTm40, EVENT_GOT_TM40_WING_ATTACK
	object_event 17, 11, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ConnectingCaveBoulder, -1
	object_event 27, 18, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ConnectingCaveBoulder, -1
	object_event  9,  2, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ConnectingCaveBoulder, -1
	object_event 30, 10, SPRITE_TEACHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 3, TrainerBreederMercy, -1
	object_event 18, 10, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ConnectingCaveHikerScript, -1
	object_event 16, 12, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ConnectingCaveFrustrationManScript, -1
	object_event 23, 24, SPRITE_SABRINA, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ConnectingCaveScientistScript, -1