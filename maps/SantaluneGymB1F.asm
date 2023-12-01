	object_const_def
	const SANTALUNEGYM_CLAIR
	
SantaluneGymB1F_MapScripts:
	def_scene_scripts
	
	def_callbacks
	
SantaluneGymViolaScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_VIOLA
	iftrue .FightDone
	writetext ViolaIntroText
	waitbutton
	closetext
	winlosstext ViolaWinLossText, 0
	loadtrainer VIOLA, VIOLA1
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_VIOLA
	opentext
	writetext ReceivedBugBadgeText
	playsound SFX_GET_BADGE
	waitsfx
	setflag ENGINE_ZEPHYRBADGE
	; readvar VAR_BADGES
	; scall SantaluneGymActivateRockets
.FightDone:
	checkevent EVENT_GOT_TM31_MUD_SLAP
	iftrue .SpeechAfterTM
	setevent EVENT_BEAT_YOUNGSTER_DAVID
	setevent EVENT_BEAT_YOUNGSTER_ZACHARY
	setevent EVENT_BEAT_LASS_CHARLOTTE
	writetext ViolaBugBadgeText
	promptbutton
	verbosegiveitem TM_MUD_SLAP
	iffalse .NoRoomForMudSlap
	setevent EVENT_GOT_TM31_MUD_SLAP
	writetext ViolaTMMudSlapText
	waitbutton
	closetext
	end

.SpeechAfterTM:
	writetext ViolaFightDoneText
	waitbutton
.NoRoomForMudSlap:
	closetext
	end
	
; SantaluneGymActivateRockets:
	; ifequal 7, .RadioTowerRockets
	; ifequal 6, .GoldenrodRockets
	; end

; .GoldenrodRockets:
	; jumpstd GoldenrodRocketsScript

; .RadioTowerRockets:
	; jumpstd RadioTowerRocketsScript
	
TrainerYoungsterDavid:
	trainer YOUNGSTER, DAVID, EVENT_BEAT_YOUNGSTER_DAVID, YoungsterDavidSeenText, YoungsterDavidBeatenText, 0, .Script
	
.Script:
	endifjustbattled
	opentext
	writetext YoungsterDavidAfterBattleText
	waitbutton
	closetext
	end

TrainerYoungsterZachary:
	trainer YOUNGSTER, ZACHARY, EVENT_BEAT_YOUNGSTER_ZACHARY, YoungsterZacharySeenText, YoungsterZacharyBeatenText, 0, .Script
	
.Script:
	endifjustbattled
	opentext
	writetext YoungsterZacharyAfterBattleText
	waitbutton
	closetext
	end
	
TrainerLassCharlotte:
	trainer LASS, CHARLOTTE, EVENT_BEAT_LASS_CHARLOTTE, LassCharlotteSeenText, LassCharlotteBeatenText, 0, .Script
	
.Script:
	endifjustbattled
	opentext
	writetext LassCharlotteAfterBattleText
	waitbutton
	closetext
	end
	
LassCharlotteSeenText:
	text "Tee hee hee!"
	line "Such weak prey!"
	
	para "You've been"
	line "caught right up"
	cont "in my spider web!"
	done
	
LassCharlotteBeatenText:
	text "Ahh... No fair!"
	line "My web wasn't"
	cont "strong enough!"
	done
	
LassCharlotteAfterBattleText:
	text "You might've"
	line "beaten me,"
	
	para "but VIOLA will"
	line "get you for sure!"
	done
	
YoungsterZacharySeenText:
	text "Do you know how"
	line "quickly BUG-type"
	cont "#MON evolve?"
	done
	
YoungsterZacharyBeatenText:
	text "Wow! You evolve"
	line "quickly, too!"
	done
	
YoungsterZacharyAfterBattleText:
	text "BUG-type #MON"
	line "evolve so quickly,"
	
	para "I just can't keep"
	line "up!"
	done
	
YoungsterDavidSeenText:
	text "Hey! Are you a"
	line "challenger?"
	
	para "Come on! Show"
	line "me your #MON!"
	done
	
YoungsterDavidBeatenText:
	text "You get to see"
	line "all kinds of"
	cont "#MON in a gym!"
	done
	
YoungsterDavidAfterBattleText:
	text "Up, down, left"
	line "right, criss-"
	cont "cross..."
	
	para "Spider webs go"
	line "in all directions!"
	done
	
ViolaIntroText:
	text "That expression.."
	line "That glint in your"
	cont "eye..."
	
	para "It says you're up"
	line "to the challenge.."
	
	para "It's fantastic!"
	line "Just fantastic!"
	
	para "This will be a"
	line "great subject for"
	cont "my camera!"
	
	para "This'll be just"
	line "fantastic!"
	
	para "I'm VIOLA, the"
	line "gym leader of"
	cont "SANTALUNE CITY!"
	
	para "Come at me! My"
	line "lens is always"
	cont "on victory -"
	
	para "I won't let"
	line "anything ruin"
	cont "this shot!"
	done

ViolaWinLossText:
	text "You and your"
	line "#MON have shown"
	cont "me a whole new"
	
	para "depth of field!"
	line "Fantastic! Just"
	cont "fantastic!"
	
	para "Here - take this"
	line "official league"
	cont "BUGBADGE!"
	done

ReceivedBugBadgeText:
	text "<PLAYER> received"
	line "BUGBADGE."
	done

ViolaBugBadgeText:
	text "With the BUGBADGE"
	line "#MON up to Lv."
	cont "30 will obey you."
	
	para "And here!"
	done

ViolaTMMudSlapText:
	text "By using a TM, a"
	line "#MON will"

	para "instantly learn a"
	line "new move."

	para "TM31 contains"
	line "MUD-SLAP."

	para "It reduces the"
	line "enemy's accuracy"

	para "while it causes"
	line "damage."

	para "In other words, it"
	line "is both defensive"
	cont "and offensive."
	done

ViolaFightDoneText:
	text "The world you see"
	line "is through a lens."
	
	para "The same world can"
	line "look entirely"
	cont "different -"
	
	para "depending on your"
	line "perspective."
	done
	
SantaluneGymB1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 15, 15, SANTALUNE_GYM, 1
	
	def_coord_events

	def_bg_events

	def_object_events
	object_event 14,  1, SPRITE_CLAIR, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, SantaluneGymViolaScript, -1
	object_event 23, 20, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerYoungsterDavid, -1
	object_event 14, 22, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, TrainerYoungsterZachary, -1
	object_event  4,  4, SPRITE_LASS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 4, TrainerLassCharlotte, -1