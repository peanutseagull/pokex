	object_const_def
	const ROUTE10_FLARE
	
Route10_MapScripts:
	def_scene_scripts
	scene_script Route10Noop1Scene, SCENE_ROUTE10_NOOP
	scene_script Route10Noop2Scene, SCENE_ROUTE10_FLARES
	
	def_callbacks

Route10Noop1Scene:
	end
	
Route10Noop2Scene:
	end
	
Route10FlareStopsYou1:
	showemote EMOTE_SHOCK, ROUTE10_FLARE, 15
	playmusic MUSIC_ROCKET_ENCOUNTER
	turnobject PLAYER, UP
	applymovement ROUTE10_FLARE, Route10FlareApproachesYou1
	opentext
	writetext Route10FlareText1
	waitbutton
	closetext
	winlosstext Route10FlareWinText, 0
	setlasttalked ROUTE10_FLARE
	loadtrainer GRUNTM, GRUNTM_3
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	opentext
	writetext Route10FlareText2
	waitbutton
	closetext
	playsound SFX_CALL
	showemote EMOTE_SHOCK, ROUTE10_FLARE, 15
	applymovement ROUTE10_FLARE, Route10FlareGoesBackwards
	opentext
	writetext Route10FlareText3
	waitbutton
	closetext
	applymovement ROUTE10_FLARE, Route10FlareComesBack
	opentext
	writetext Route10FlareText4
	waitbutton
	closetext
	applymovement ROUTE10_FLARE, Route10FlareLeaves
	disappear ROUTE10_FLARE
	reloadmap
	setscene SCENE_ROUTE10_NOOP
	end
	
Route10FlareStopsYou2:
	showemote EMOTE_SHOCK, ROUTE10_FLARE, 15
	playmusic MUSIC_ROCKET_ENCOUNTER
	turnobject PLAYER, UP
	applymovement ROUTE10_FLARE, Route10FlareApproachesYou2
	opentext
	writetext Route10FlareText1
	waitbutton
	closetext
	applymovement ROUTE10_FLARE, Route10FlareApproachesYou1
	winlosstext Route10FlareWinText, 0
	setlasttalked ROUTE10_FLARE
	loadtrainer GRUNTM, GRUNTM_3
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	opentext
	writetext Route10FlareText2
	waitbutton
	closetext
	playsound SFX_CALL
	showemote EMOTE_SHOCK, ROUTE10_FLARE, 15
	applymovement ROUTE10_FLARE, Route10FlareGoesBackwards
	opentext
	writetext Route10FlareText3
	waitbutton
	closetext
	applymovement ROUTE10_FLARE, Route10FlareComesBack
	opentext
	writetext Route10FlareText4
	waitbutton
	closetext
	applymovement ROUTE10_FLARE, Route10FlareLeaves
	disappear ROUTE10_FLARE
	reloadmap
	setscene SCENE_ROUTE10_NOOP
	end
	
Route10FlareText1:
	text "Stop right there!"
	line "I remember you!"
	
	para "You're the one who"
	line "foiled our Fossil-"
	cont "finding plans!"
	
	para "And now you're"
	line "here,"
	
	para "standing around"
	line "these stones."
	
	para "Do you have any"
	line "idea what they"
	cont "even are?"
	
	para "Of course you"
	line "don't!"
	
	para "You know nothing"
	line "about the legend"
	cont "of 3,000 years ago"
	cont "that says…"
	
	para "Wait, what does it"
	line "say?"
	
	para "Oh, whatever!"
	line "Who cares about"
	cont "all that?"
	
	para "It's time for me"
	cont "to get some sweet"
	cont "revenge…"
	cont "with style!"
	done
	
Route10FlareWinText:
	text "You may have"
	line "beaten me…again."
	
	para "But when I lose,"
	line "I go out in style!"
	done
	
Route10FlareText2:
	text "What the…"
	line "How could I lose"
	cont "again to a little"
	cont "punk like you?"
	
	para "What are you, some"
	line "kind of Trainer"
	cont "prodigy or"
	cont "something?"
	done

Route10FlareText3:
	text "I see…"
	
	para "… … …"
	line "Roger that!"
	done
	
Route10FlareText4:
	text "Heh. Gotta love"
	line "the HOLO CASTER."
	
	para "I can get updates"
	line "on my mission in"
	cont "real time with"
	cont "this stylish"
	cont "device!"
	
	para "Whoever thought"
	line "this thing up must"
	cont "have been one"
	cont "truly stylish"
	cont "individual, too!"
	
	para "And on that note,"
	line "it's time for me"
	cont "to scram…"
	cont "with style!"
	done
	
Route10FlareApproachesYou1:
	step DOWN
	step DOWN
	step_end
	
Route10FlareApproachesYou2:
	turn_head RIGHT
	step RIGHT
	step DOWN
	step DOWN
	step_end

Route10FlareGoesBackwards:
	turn_head UP
	step UP
	step_end
	
Route10FlareComesBack:
	turn_head DOWN
	step DOWN
	step_end
	
Route10FlareLeaves:
	step UP
	step UP
	step UP
	step UP
	step UP
	step_end
	
TrainerGruntf3:
	trainer GRUNTF, GRUNTF_3, EVENT_BEAT_GRUNTF_3, Gruntf3SeenText, Gruntf3BeatenText, 0, .Script
	
.Script:
	endifjustbattled
	opentext
	writetext Gruntf3AfterText
	waitbutton
	closetext
	end
	
Gruntf3SeenText:
	text "Can't you see we"
	line "adults are busy?"
	
	para "Don't interrupt"
	line "our work, kid!"
	done
	
Gruntf3BeatenText:
	text "Well, if that's"
	line "how you're going"
	cont "to be, I'll just"
	cont "stop working!"
	cont "Harrumph!"
	done
	
Gruntf3AfterText:
	text "Is discovering the"
	line "secrets of these"
	cont "stones really a"
	cont "job for adults?"
	done
	
TrainerGruntf4:
	trainer GRUNTF, GRUNTF_4, EVENT_BEAT_GRUNTF_4, Gruntf4SeenText, Gruntf4BeatenText, 0, .Script
	
.Script:
	endifjustbattled
	opentext
	writetext Gruntf4AfterText
	waitbutton
	closetext
	end
	
Gruntf4SeenText:
	text "You inspect the"
	line "stones…"
	cont "I inspect YOU!"
	done
	
Gruntf4BeatenText:
	text "As a result of my"
	line "inspection, I can"
	cont "tell that you're"
	cont "stronger than I"
	cont "am!"
	done
	
Gruntf4AfterText:
	text "Strong as you may"
	line "be, this stylish"
	cont "TEAM FLARE suit"
	cont "would simply not"
	cont "look good on you"
	cont "at all."
	done
	
TrainerPsychicRobert:
	trainer PSYCHIC_T, ROBERT, EVENT_BEAT_PSYCHIC_ROBERT, PsychicRobertSeenText, PsychicRobertBeatenText, 0, .Script
	
.Script:
	endifjustbattled
	opentext
	writetext PsychicRobertAfterText
	waitbutton
	closetext
	end
	
PsychicRobertSeenText:
	text "This place flows"
	line "with power."
	
	para "I often come here"
	line "to recharge!"
	done
	
PsychicRobertBeatenText:
	text "Wow! You and your"
	line "#MON's power"
	cont "levels are"
	cont "incredible!"
	
	para "They're over 9000"
	line "for sure!"
	done
	
PsychicRobertAfterText:
	text "I want to find out"
	line "what these stones"
	cont "have to do with"
	cont "the energy levels"
	cont "in this area."
	done
	
TrainerTouristFumiko:
	trainer TOURIST_LADY, FUMIKO, EVENT_BEAT_TOURIST_FUMIKO, TouristFumikoSeenText, TouristFumikoBeatenText, 0, .Script
	
.Script:
	endifjustbattled
	opentext
	writetext TouristFumikoAfterText
	waitbutton
	closetext
	end
	
TouristFumikoSeenText:
	text "They're just"
	line "stones, right?"
	done
	
TouristFumikoBeatenText:
	text "Definitely just"
	line "stones, don't you"
	cont "think?"
	done
	
TouristFumikoAfterText:
	text "Yeah… What else"
	line "would they be but"
	cont "just stones?"
	done
	
TrainerPsychicSayid:
	trainer PSYCHIC_T, SAYID, EVENT_BEAT_PSYCHIC_SAYID, PsychicSayidSeenText, PsychicSayidBeatenText, 0, .Script
	
.Script:
	endifjustbattled
	opentext
	writetext PsychicSayidAfterText
	waitbutton
	closetext
	end
	
PsychicSayidSeenText:
	text "I can feel the"
	line "energy from these"
	cont "stones enhancing"
	cont "my already potent"
	cont "psychic powers!"
	done
	
PsychicSayidBeatenText:
	text "I couldn't control"
	line "my overflowing"
	cont "power!"
	done
	
PsychicSayidAfterText:
	text "I wonder what"
	line "relationship these"
	cont "ROUTE 10 stones"
	cont "have with energy…"
	done
	
TrainerTouristTomoko:
	trainer TOURIST_LADY, TOMOKO, EVENT_BEAT_TOURIST_TOMOKO, TouristTomokoSeenText, TouristTomokoBeatenText, 0, .Script
	
.Script:
	endifjustbattled
	opentext
	writetext TouristTomokoAfterText
	waitbutton
	closetext
	end

TouristTomokoSeenText:
	text "To have a battle"
	line "at a famous sight-"
	cont "seeing spot!"
	
	para "This will make for"
	line "a great memory!"
	done
	
TouristTomokoBeatenText:
	text "It doesn't matter"
	line "that I lost!"
	
	para "I'll treasure this"
	line "memory forever."
	done
	
TouristTomokoAfterText:
	text "They call them"
	line "standing stones"
	cont "because they're"
	cont "standing up in a"
	cont "row."
	
	para "That's what my"
	line "travel guide says,"
	cont "at least!"
	done
	
Route10BackpackerScript:
	jumptextfaceplayer Route10BackpackerText
	
Route10BackpackerText:
	text "A few years back,"
	line "this strange dude"
	cont "named COLRESS told"
	cont "me that these big"
	cont "stones emit some"
	cont "kind of special"
	cont "energy."
	done
	
Route10BoyScript:
	jumptextfaceplayer Route10BoyText
	
Route10BoyText:
	text "There are more and"
	line "more of these big"
	cont "rocks as you get"
	cont "closer to GEOSENGE"
	cont "TOWN!"
	done
	
Route10BeautyScript:
	jumptextfaceplayer Route10BeautyText
	
Route10BeautyText:
	text "People in ancient"
	line "times must have"
	cont "been incredible!"
	
	para "Hm? Maybe I should"
	line "say that it was"
	cont "the #MON that"
	cont "were incredible?"
	done
	
Route10Sign:
	jumptext Route10SignText
	
Route10SignText:
	text "ROUTE 10:"
	line "MENHIR TRAIL"
	done
	
; Route10TrainerTipsSign:
	; jumptext Route10TrainerTipsSignText
	
; Route10TrainerTipsSignText:
	; text "TRAINER TIPS:"
	
	; para "Tap a player's"
	; line "icon on the PSS!"
	
	; para "Then, tap their"
	; line "name to check"
	; cont "their profile."
	; done
	
Route10FruitTree:
	fruittree FRUITTREE_ROUTE_10
	
Route10Thunderstone:
	itemball THUNDERSTONE
	
Route10XAccuracy:
	itemball X_ACCURACY
	
Route10HiddenRevive:
	hiddenitem REVIVE, EVENT_ROUTE_10_HIDDEN_REVIVE
	
Route10HiddenParlyzHeal:
	hiddenitem PARLYZ_HEAL, EVENT_ROUTE_10_HIDDEN_PARLYZ_HEAL
	
Route10HiddenBurnHeal:
	hiddenitem BURN_HEAL, EVENT_ROUTE_10_HIDDEN_BURN_HEAL
	
Route10Boulder:
	jumpstd StrengthBoulderScript
	
Route10_MapEvents:
	db 0, 0 ; filler
	
	def_warp_events
	warp_event 23, 77, ROUTE_10_GATE, 3
	warp_event 24, 77, ROUTE_10_GATE, 4
	
	def_coord_events
	coord_event  8, 40, SCENE_ROUTE10_FLARES, Route10FlareStopsYou1
	coord_event  9, 40, SCENE_ROUTE10_FLARES, Route10FlareStopsYou2
	
	def_bg_events
	bg_event 21, 75, BGEVENT_READ, Route10Sign
	; bg_event 11, 67, BGEVENT_READ, Route10TrainerTipsSign
	bg_event 20, 59, BGEVENT_ITEM, Route10HiddenRevive
	bg_event 15, 41, BGEVENT_ITEM, Route10HiddenParlyzHeal
	bg_event 15, 38, BGEVENT_ITEM, Route10HiddenBurnHeal
	
	def_object_events
	object_event  8, 37, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_ROUTE_10_FLARES
	object_event 11, 16, SPRITE_ROCKET_GIRL, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 2, TrainerGruntf3, EVENT_ROUTE_10_FLARES
	object_event  6,  9, SPRITE_ROCKET_GIRL, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 2, TrainerGruntf4, EVENT_ROUTE_10_FLARES
	object_event 18, 68, SPRITE_YOUNGSTER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 4, TrainerPsychicRobert, -1
	object_event 11, 69, SPRITE_TEACHER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 3, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerTouristFumiko, -1
	object_event  8, 56, SPRITE_FISHER, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route10BackpackerScript, -1
	object_event  4, 25, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 2, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerPsychicSayid, -1
	object_event 12, 24, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route10BoyScript, -1
	object_event 11,  4, SPRITE_TEACHER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 1, 1, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerTouristTomoko, -1
	object_event  4, 13, SPRITE_BEAUTY, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route10BeautyScript, -1
	object_event 25, 70, SPRITE_FRUIT_TREE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route10FruitTree, -1
	object_event  5, 18, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Route10Thunderstone, EVENT_ROUTE_10_THUNDERSTONE
	object_event  2, 40, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Route10XAccuracy, EVENT_ROUTE_10_X_ACCURACY
	; object_event 15, 61, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Route10MindPlate, EVENT_ROUTE_10_MIND_PLATE
	; object_event 25, 56, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Route10Tm73, EVENT_GOT_TM73_THUNDER_WAVE
	object_event 22, 56, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route10Boulder, -1
	object_event 24, 63, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route10Boulder, -1
