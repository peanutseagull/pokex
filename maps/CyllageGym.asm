	object_const_def
	
CyllageGym_MapScripts:
	def_scene_scripts
	
	def_callbacks
	callback MAPCALLBACK_TILES, CyllageGymStairsCallback
	; callback MAPCALLBACK_TILES, CyllageGymClimbingCallback

CyllageGymStairsCallback:
	checkevent EVENT_BEAT_GRANT
	iffalse .skip1	
	changeblock 14, 22, $01
	changeblock 14, 28, $01
	changeblock 14, 30, $01
	changeblock 14, 32, $01
.skip1
	endcallback

; CyllageGymClimbingCallback:
	; checkevent EVENT_IS_CLIMBING
	; iffalse .skip1
	; changeblock 16,  3, $42
; .skip1
	; endcallback
	
; ClimbingScript:
	; opentext
	; checkevent EVENT_IS_CLIMBING
	; iftrue .IsClimbing
	; writetext StartClimbingText
	; yesorno
	; iffalse .No
	; closetext
	; setevent EVENT_IS_CLIMBING
	; reloadmap
	; loadvar VAR_MOVEMENT, PLAYER_CLIMBING
	; special UpdatePlayerSprite
	; changeblock 16,  3, $42
; .No:
	; closetext
	; end
	
; .IsClimbing:
	; writetext StopClimbingText
	; yesorno
	; iffalse .No
	; clearevent EVENT_IS_CLIMBING
	; reloadmap
	; loadvar VAR_MOVEMENT, PLAYER_NORMAL
	; special UpdatePlayerSprite
	; changeblock 16,  3, $41
	; end
	
StartClimbingText:
	text "Scale this wall?"
	done
	
StopClimbingText:
	text "Dismount?"
	done
	
CyllageGymGrantScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_GRANT
	iftrue .FightDone
	writetext GrantIntroText
	waitbutton
	closetext
	winlosstext GrantWinText, 0
	loadtrainer GRANT, GRANT1
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_GRANT
	opentext
	writetext GrantAfterBattleText
	promptbutton
	writetext ReceivedCliffBadgeText
	playsound SFX_GET_BADGE
	waitsfx
	setflag ENGINE_HIVEBADGE
.FightDone:
	checkevent EVENT_GOT_TM39_ROCK_THROW ; ROCK_TOMB
	iftrue .SpeechAfterTM
	setevent EVENT_BEAT_RISING_STAR_DIDIER
	setevent EVENT_BEAT_RISING_STAR_MANON
	setevent EVENT_BEAT_HIKER_CRAIG
	setevent EVENT_BEAT_HIKER_BERNARD
	writetext GrantCliffBadgeText
	promptbutton
	verbosegiveitem TM_ROCK_THROW ; ROCK_TOMB
	iffalse .NoRoomForRockThrow ; RockTomb
	setevent EVENT_GOT_TM39_ROCK_THROW ; ROCK_TOMB
	writetext GrantTMRockThrowText ; RockTomb
	waitbutton
	playsound SFX_STRENGTH
	earthquake 80
	changeblock 14, 22, $01
	changeblock 14, 28, $01
	changeblock 14, 30, $01
	changeblock 14, 32, $01
	reloadmappart
	closetext
	setmapscene ROUTE_10, SCENE_ROUTE10_FLARES
	setmapscene GEOSENGE_TOWN, SCENE_GEOSENGETOWN_FLARES_1
	clearevent EVENT_ROUTE_10_FLARES
	clearevent EVENT_GEOSENGE_TOWN_FLARES
	waitsfx
	end

.SpeechAfterTM:
	writetext GrantFightDoneText
	waitbutton
.NoRoomForRockThrow: ; RockTomb
	closetext
	end
	
GrantIntroText:
	text "I've been waiting"
	line "in eager"
	cont "anticipation!"
	
	para "What have I been"
	line "waiting for?"
	
	para "For a worthy"
	line "challenger to"
	cont "appear!"
	
	para "It's quite an"
	line "achievement to"
	cont "have climbed all"
	cont "the way up here."
	
	para "Very impressive,"
	line "actually!"
	
	para "I have a feeling"
	line "that our battle"
	cont "will turn out to"
	cont "be worth the wait!"
	
	para "I hope you'll show"
	line "me that your skill"
	cont "as a Trainer"
	cont "surpasses even"
	cont "mine."
	done
	
GrantWinText:
	text "You have proven to"
	line "be a wall that I"
	cont "am unable to"
	cont "surmount!"
	done
	
GrantAfterBattleText:
	text "There are some"
	line "things that seem"
	cont "out of reach no"
	cont "matter how hard"
	cont "you try."
	
	para "However, it's"
	line "important that you"
	cont "never give up--"
	
	para "no matter the"
	line "opponent or the"
	cont "odds."
	
	para "I could tell from"
	line "our battle that"
	cont "you and your"
	cont "#MON understand"
	cont "that."
	
	para "To commemorate"
	line "such an impressive"
	cont "show of teamwork,"
	cont "please accept the"
	cont "CLIFFBADGE!"
	done
	
ReceivedCliffBadgeText:
	text "<PLAYER> received"
	line "CLIFFBADGE."
	done
	
GrantCliffBadgeText:
	text "With the"
	line "CLIFFBADGE in your"
	cont "grasp,"
	
	para "you should have no"
	line "issues working"
	cont "together with"
	cont "#MON up to"
	cont "level 40."
	
	para "This even applies"
	line "to #MON you've"
	cont "received from"
	cont "other people in"
	cont "trade."
	
	para "And that's not"
	line "all. You also get…"
	cont "this!"
	done
	
GrantTMRockThrowText:
	text "It's ROCK THROW." ; ROCK TOMB
	
	para "With this move,"
	line "a #MON can hurl"
	cont "rocks at its"
	cont "target, not only"
	cont "inflicting damage"
	cont "but also lowering"
	cont "the target's Speed"
	cont "and preventing it"
	cont "from moving."
	done
	
GrantFightDoneText:
	text "Now that you've"
	line "become a master"
	cont "wall climber and"
	cont "conquered this"
	cont "Gym,"
	
	para "it's time you"
	line "thought about how"
	cont "to apply your"
	cont "skills in other"
	cont "areas!"
	
	para "Think about how"
	line "you can improve"
	cont "yourself, as well"
	cont "as the #MON"
	cont "that are always"
	cont "by your side."
	
	para "When you find the"
	line "answer, that's"
	cont "when you'll truly"
	cont "be able to smile!"
	done
	
CyllageGymGuideScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_GRANT
	iftrue .CyllageGymGuideWinScript
	writetext CyllageGymGuideText
	waitbutton
	closetext
	end

.CyllageGymGuideWinScript:
	writetext CyllageGymGuideWinText
	waitbutton
	closetext
	end
	
CyllageGymGuideText:
	text "Hey, hey, it's the"
	line "future Champ!"
	cont "What's goin' down?"
	
	para "This is the ROCK-"
	line "type #MON Gym,"
	cont "but you already"
	cont "figured that out,"
	cont "am I right?"
	
	para "ROCK types are"
	line "great! They're"
	cont "weake to STEEL,"
	cont "WATER, and all"
	cont "kinds of things!"
	
	para "Now check out that"
	line "wall. You can"
	cont "climb it if you"
	cont "start from one of"
	cont "those blue spots."
	
	para "Left, right, up,"
	line "down-- you'll need"
	cont "to climb every"
	cont "which way to reach"
	cont "the Gym Leader!"
	done
	
CyllageGymGuideWinText:
	text "Looks like our Gym"
	line "Leader wasn't much"
	cont "of an obstacle for"
	cont "you!"
	
	para "Good job and all"
	line "that!"
	
	para "We've gone and"
	line "engraved your"
	cont "name on those"
	cont "mysterious statues"
	cont "there, too!"
	done
	
TrainerRisingStarDidier:
	trainer RISINGSTARM, DIDIER, EVENT_BEAT_RISING_STAR_DIDIER, RisingStarDidierSeenText, RisingStarDidierBeatenText, 0, .Script
	
.Script:
	endifjustbattled
	opentext
	writetext RisingStarDidierAfterText
	waitbutton
	closetext
	end
	
RisingStarDidierSeenText:
	text "I need a break"
	line "after all this"
	cont "climbing and"
	cont "training!"
	done
	
RisingStarDidierBeatenText:
	text "No pain, no gain!"
	done
	
RisingStarDidierAfterText:
	text "You need to keep"
	line "moving forward."
	
	para "If you stop,"
	line "you'll never reach"
	cont "your goal."
	done

TrainerRisingStarManon:
	trainer RISINGSTARF, MANON, EVENT_BEAT_RISING_STAR_MANON, RisingStarManonSeenText, RisingStarManonBeatenText, 0, .Script
	
.Script:
	endifjustbattled
	opentext
	writetext RisingStarManonAfterText
	waitbutton
	closetext
	end
	
RisingStarManonSeenText:
	text "Only those with a"
	line "noble spirit can"
	cont "try to take on the"
	cont "challenge of the"
	cont "CYLLAGE CITY"
	cont "#MON Gym."
	done
	
RisingStarManonBeatenText:
	text "We were waiting" ; This Gym was
	line "for a Trainer and"
	cont "#MON like you!"
	done
	
RisingStarManonAfterText:
	text "You need to"
	line "challenge your-"
	cont "self…"
	
	para "I can tell that"
	line "you and your"
	cont "#MON have strong"
	cont "enough spirits to"
	cont "understand that!"
	done
	
TrainerHikerCraig:
	trainer HIKER, CRAIG, EVENT_BEAT_HIKER_CRAIG, HikerCraigSeenText, HikerCraigBeatenText, 0, .Script
	
.Script:
	endifjustbattled
	opentext
	writetext HikerCraigAfterText
	waitbutton
	closetext
	end
	
HikerCraigSeenText:
	text "I'm ready to go!"
	line "If you think you"
	cont "can find a"
	cont "weakness in my"
	cont "defence, come at"
	cont "me!"
	done
	
HikerCraigBeatenText:
	text "Unhh! A battle is"
	line "a battle--you're"
	cont "gonna come at me"
	cont "whether you find"
	cont "a weakness or not…"
	done
	
HikerCraigAfterText:
	text "The best way to"
	line "be prepared for"
	cont "any kind of battle"
	cont "is to have lots of"
	cont "different #MON"
	cont "trained up."
	done
	
TrainerHikerBernard:
	trainer HIKER, BERNARD, EVENT_BEAT_HIKER_BERNARD, HikerBernardSeenText, HikerBernardBeatenText, 0, .Script
	
.Script:
	endifjustbattled
	opentext
	writetext HikerBernardAfterText
	waitbutton
	closetext
	end 
	
HikerBernardSeenText:
	text "Y'know what?"
	line "Climbing is a lot"
	cont "like solving a"
	cont "puzzle."
	
	para "It's a game of"
	line "logic!"
	done
	
HikerBernardBeatenText:
	text "You're a tricky"
	line "one!"
	
	para "Truly a mountain"
	line "that I couldn't"
	cont "surmount!"
	done
	
HikerBernardAfterText:
	text "Maybe I should"
	line "start by getting"
	cont "in better shape if"
	cont "I want to improve."
	done
	
CyllageGymStatue:
	checkflag ENGINE_HIVEBADGE
	iftrue .Beaten
	jumpstd GymStatue1Script
.Beaten:
	gettrainername STRING_BUFFER_4, GRANT, GRANT1
	jumpstd GymStatue2Script	

CyllageGym_MapEvents:
	db 0, 0 ; filler
	
	def_warp_events
	warp_event 18, 41, CYLLAGE_CITY, 12
	warp_event 19, 41, CYLLAGE_CITY, 12
	
	def_coord_events
	
	def_bg_events
	bg_event 17, 37, BGEVENT_READ, CyllageGymStatue
	bg_event 20, 37, BGEVENT_READ, CyllageGymStatue
	
	def_object_events
	object_event 16, 19, SPRITE_ROCKER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, CyllageGymGrantScript, -1
	object_event 21, 37, SPRITE_GYM_GUIDE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, CyllageGymGuideScript, -1 
	object_event 27, 26, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerRisingStarDidier, -1
	object_event 29,  8, SPRITE_LASS, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 4, TrainerRisingStarManon, -1
	object_event 11, 12, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 5, TrainerHikerCraig, -1
	object_event 21, 12, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 4, TrainerHikerBernard, -1
