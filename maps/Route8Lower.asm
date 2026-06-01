	object_const_def
	const ROUTE8LOWER_SWIMMERF
	
Route8Lower_MapScripts:
	def_scene_scripts
	scene_script Route8LowerNoop1Scene, SCENE_ROUTE8LOWER_BLOCK
	scene_script Route8LowerNoop2Scene, SCENE_ROUTE8LOWER_DOWSING
	scene_script Route8LowerNoop3Scene, SCENE_ROUTE8LOWER_NOOP

	def_callbacks
	
Route8LowerNoop1Scene:
	end
	
Route8LowerNoop2Scene:
	end
	
Route8LowerNoop3Scene:
	end	
	
Route8BeautyScript:
	opentext
	faceplayer
	checkevent EVENT_GOT_ITEMFINDER
	iftrue .After
	checkevent EVENT_FOUND_ASSISTANT
	iftrue .GiveDowsing
	writetext Route8LowerCantFindFossilText
	waitbutton
	closetext
	end
	
.GiveDowsing:
	writetext Route8LowerGiveDowsingText
	verbosegiveitem ITEMFINDER
	writetext Route8LowerDowsingAfterText
	waitbutton
	closetext
	setevent EVENT_GOT_ITEMFINDER
	setscene SCENE_ROUTE8LOWER_DOWSING
	end
	
.After:
	writetext Route8LowerDowsingAfterText
	waitbutton
	closetext
	end

Route8LowerSwimmerStopsYou1:
	showemote EMOTE_SHOCK, ROUTE8LOWER_SWIMMERF, 15
	turnobject ROUTE8LOWER_SWIMMERF, RIGHT
	turnobject PLAYER, LEFT
	opentext
	writetext Route8LowerCantFindFossilText
	waitbutton
	closetext
	applymovement PLAYER, Route8LowerCantLeaveMovement
	turnobject ROUTE8LOWER_SWIMMERF, DOWN
	end
	
Route8LowerSwimmerStopsYou2:
	showemote EMOTE_SHOCK, ROUTE8LOWER_SWIMMERF, 15
	turnobject ROUTE8LOWER_SWIMMERF, RIGHT
	turnobject PLAYER, LEFT
	applymovement ROUTE8LOWER_SWIMMERF, Route8LowerSwimmerApproachesMovement1
	opentext
	writetext Route8LowerCantFindFossilText
	waitbutton
	closetext
	applymovement PLAYER, Route8LowerCantLeaveMovement
	applymovement ROUTE8LOWER_SWIMMERF, Route8LowerSwimmerGoesBackMovement1
	turnobject ROUTE8LOWER_SWIMMERF, DOWN
	end
	
Route8LowerSwimmerStopsYou3:
	showemote EMOTE_SHOCK, ROUTE8LOWER_SWIMMERF, 15
	turnobject ROUTE8LOWER_SWIMMERF, RIGHT
	turnobject PLAYER, LEFT
	applymovement ROUTE8LOWER_SWIMMERF, Route8LowerSwimmerApproachesMovement2
	opentext
	writetext Route8LowerCantFindFossilText
	waitbutton
	closetext
	applymovement PLAYER, Route8LowerCantLeaveMovement
	applymovement ROUTE8LOWER_SWIMMERF, Route8LowerSwimmerGoesBackMovement2
	turnobject ROUTE8LOWER_SWIMMERF, DOWN
	end
	
Route8LowerSwimmerGivesDowsing1:
	showemote EMOTE_SHOCK, ROUTE8LOWER_SWIMMERF, 15
	turnobject ROUTE8LOWER_SWIMMERF, RIGHT
	turnobject PLAYER, LEFT
	opentext
	writetext Route8LowerGiveDowsingText
	verbosegiveitem ITEMFINDER
	writetext Route8LowerDowsingAfterText
	waitbutton
	closetext
	setevent EVENT_GOT_ITEMFINDER
	turnobject ROUTE8LOWER_SWIMMERF, DOWN
	setscene SCENE_ROUTE8LOWER_NOOP
	end
	
Route8LowerSwimmerGivesDowsing2:
	showemote EMOTE_SHOCK, ROUTE8LOWER_SWIMMERF, 15
	turnobject ROUTE8LOWER_SWIMMERF, RIGHT
	turnobject PLAYER, LEFT
	applymovement ROUTE8LOWER_SWIMMERF, Route8LowerSwimmerApproachesMovement1
	opentext
	writetext Route8LowerGiveDowsingText
	verbosegiveitem ITEMFINDER
	writetext Route8LowerDowsingAfterText
	waitbutton
	closetext
	setevent EVENT_GOT_ITEMFINDER
	applymovement ROUTE8LOWER_SWIMMERF, Route8LowerSwimmerGoesBackMovement1
	turnobject ROUTE8LOWER_SWIMMERF, DOWN
	setscene SCENE_ROUTE8LOWER_NOOP
	end
	
Route8LowerSwimmerGivesDowsing3:
	showemote EMOTE_SHOCK, ROUTE8LOWER_SWIMMERF, 15
	turnobject ROUTE8LOWER_SWIMMERF, RIGHT
	turnobject PLAYER, LEFT
	applymovement ROUTE8LOWER_SWIMMERF, Route8LowerSwimmerApproachesMovement2
	opentext
	writetext Route8LowerGiveDowsingText
	verbosegiveitem ITEMFINDER
	writetext Route8LowerDowsingAfterText
	waitbutton
	closetext
	setevent EVENT_GOT_ITEMFINDER
	applymovement ROUTE8LOWER_SWIMMERF, Route8LowerSwimmerGoesBackMovement2
	turnobject ROUTE8LOWER_SWIMMERF, DOWN
	setscene SCENE_ROUTE8LOWER_NOOP
	end
	
Route8LowerCantLeaveMovement:
	turn_head DOWN
	step DOWN
	step_end
	
Route8LowerSwimmerApproachesMovement1:
	step RIGHT
	step_end
	
Route8LowerSwimmerGoesBackMovement1:
	step LEFT
	step_end
	
Route8LowerSwimmerApproachesMovement2:
	step RIGHT
	step RIGHT
	step_end
	
Route8LowerSwimmerGoesBackMovement2:
	step LEFT
	step LEFT
	step_end
	
Route8LowerCantFindFossilText:
	text "W-w-wait!"
	line "Stop!"
	
	para "I dropped the"
	line "Fossil I was"
	cont "taking to the"
	cont "FOSSIL LAB in"
	cont "AMBRETTE TOWN."
	
	para "I'm really sorry,"
	line "but could you wait"
	cont "a little bit until"
	cont "I find it?"
	done	

Route8LowerGiveDowsingText:
	text "That's the DOWSING"
	line "MACHINE for you!"
	
	para "With this, I can"
	line "find items I can't"
	cont "see with no"
	cont "trouble at all."
	
	para "Here, I have one"
	line "for you!"
	
	para "Use it to find"
	line "some treasure!"
	done
	
Route8LowerDowsingAfterText:
	text "Using the DOWSING"
	line "MACHINE is easy!"
	
	para "If you are close"
	line "to a buried item,"
	cont "the dowsing rods"
	cont "react and their"
	cont "movement leads you"
	cont "to it!"
	
	; para "You'll find"
	; line "treasure where the"
	; cont "rods cross and"
	; cont "turn red!"
	
	para "Oh, and here's a"
	line "bit of trivia--"
	
	para "people who dowse"
	line "are called"
	cont "'dowsers.'"
	done
	
TrainerSwimmerGenevieve:
	trainer SWIMMERF, GENEVIEVE, EVENT_BEAT_SWIMMER_GENEVIEVE, SwimmerGenevieveSeenText, SwimmerGenevieveBeatenText, 0, .Script
	
.Script:
	endifjustbattled
	opentext
	writetext SwimmerGenevieveAfterText
	waitbutton
	closetext
	end
	
SwimmerGenevieveSeenText:
	text "Normally I'd sink"
	line "like a brick, but"
	cont "when I'm with my"
	cont "#MON, swimming"
	cont "is no problem"
	cont "at all!"
	done
	
SwimmerGenevieveBeatenText:
	text "Hey! I told you"
	line "I'm a poor"
	cont "swimmer!"
	
	para "Throw me a line!"
	done
	
SwimmerGenevieveAfterText:
	text "I love wading with"
	line "my web-footed"
	cont "pals!"
	done

TrainerFisherWharton:
	trainer FISHER, WHARTON, EVENT_BEAT_FISHER_WHARTON, FisherWhartonSeenText, FisherWhartonBeatenText, 0, .Script
	
.Script:
	endifjustbattled
	opentext
	writetext FisherWhartonAfterText
	waitbutton
	closetext
	end
	
FisherWhartonSeenText:
	text "Swish! Swish!"
	line "Swish!"
	
	para "You wouldn't"
	line "believe how much"
	cont "I've practiced my"
	cont "casting technique!"
	
	para "Time to see the"
	line "results!"
	done
	
FisherWhartonBeatenText:
	text "Swish! Swish!"
	line "I guess I need"
	cont "more practice…"
	done
	
FisherWhartonAfterText:
	text "Swish! Swish!"
	line "Swish!"
	
	para "I guess practicing"
	line "my casting doesn't"
	cont "really have any-"
	cont "thing to do with"
	cont "battles…"
	done
	
TrainerSkyTrainerAveza:
	trainer SKYTRAINERF, AVEZA, EVENT_BEAT_SKY_TRAINER_AVEZA, SkyTrainerAvezaSeenText, SkyTrainerAvezaBeatenText, 0, .Script
	
.Script:
	endifjustbattled
	opentext
	writetext SkyTrainerAvezaBeatenText
	waitbutton
	closetext
	end
	
SkyTrainerAvezaSeenText:
	text "Care for a SKY"
	line "BATTLE?"
	
	para "Onward to the wild"
	line "blue yonder!"
	
	para "A new world"
	line "awaits!"
	done
	
SkyTrainerAvezaBeatenText:
	text "I'm still not used"
	line "to this whole SKY"
	cont "BATTLE thing…"
	done
	
TrainerFisherShad:
	trainer FISHER, SHAD, EVENT_BEAT_FISHER_SHAD, FisherShadSeenText, FisherShadBeatenText, 0, .Script
	
.Script:
	endifjustbattled
	opentext
	writetext FisherShadAfterText
	waitbutton
	closetext
	end
	
FisherShadSeenText:
	text "You're a big one,"
	line "all right!"
	
	para "I can tell from"
	line "my years of"
	cont "experience as a"
	cont "Fisherman!"
	done
	
FisherShadBeatenText:
	text "I knew you were a"
	line "big one!"
	
	para "I could tell from"
	line "my years of"
	cont "experience as a"
	cont "Fisherman!"
	done
	
FisherShadAfterText:
	text "When you have"
	line "many years of"
	cont "experience like"
	cont "me,"
	
	para "you can tell a lot"
	line "of things in life!"
	done
	
TrainerSwimmerMarissa:
	trainer SWIMMERF, MARISSA, EVENT_BEAT_SWIMMER_MARISSA, SwimmerMarissaSeenText, SwimmerMarissaBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SwimmerMarissaAfterText
	waitbutton
	closetext
	end
	
SwimmerMarissaSeenText:
	text "I'm getting tired"
	line "of wearing this"
	cont "swimsuit."
	
	para "I think I'll make"
	line "this my last"
	cont "battle in it!"
	done
	
SwimmerMarissaBeatenText:
	text "I'm not tired of"
	line "wearing swimsuits-"
	cont "just of this one!"
	
	para "All I need to do"
	line "is buy a new one!"
	done
	
SwimmerMarissaAfterText:
	text "I wonder which"
	line "town's boutique I"
	cont "should shop at for"
	cont "my new swimsuit!"
	
	para "Each boutique"
	line "carries different"
	cont "colours, so it's"
	cont "hard to make up my"
	cont "mind!"
	done
	
Route8LowerHeartScale:
	itemball HEART_SCALE
	
Route8LowerFruitTree:
	fruittree FRUITTREE_ROUTE_8_LOWER
	
Route8HiddenUltraBall:
	hiddenitem ULTRA_BALL, EVENT_ROUTE_8_LOWER_HIDDEN_ULTRA_BALL
	
Route8HiddenStardust:
	hiddenitem STARDUST, EVENT_ROUTE_8_LOWER_HIDDEN_STARDUST ; can reappear?
	
Route8HiddenPearl:
	hiddenitem PEARL, EVENT_ROUTE_8_LOWER_HIDDEN_PEARL ; can reappear?
	
Route8HiddenHeartScale:
	hiddenitem HEART_SCALE, EVENT_ROUTE_8_LOWER_HIDDEN_HEART_SCALE ; can reappear?
	
Route8AdvancedTipsSign:
	jumptext Route8AdvancedTipsSignText
	
Route8AdvancedTipsSignText:
	text "ADVANCED TIPS:"
	line "I see! You can use"
	cont "ROCK SMASH!"
	
	para "Use ROCK SMASH to"
	line "break rocks,"
	cont "and you'll"
	cont "sometimes find"
	cont "#MON or items!"
	done
	
Route8LowerRock:
	jumpstd SmashRockScript
	
Route8Lower_MapEvents:	
	db 0, 0 ; filler
	
	def_warp_events
	warp_event 23, 68, AMBRETTE_AQUARIUM, 3
	warp_event 23, 69, AMBRETTE_AQUARIUM, 4

	def_coord_events
	coord_event 37, 42, SCENE_ROUTE8LOWER_BLOCK, Route8LowerSwimmerStopsYou1
	coord_event 38, 42, SCENE_ROUTE8LOWER_BLOCK, Route8LowerSwimmerStopsYou2
	coord_event 39, 42, SCENE_ROUTE8LOWER_BLOCK, Route8LowerSwimmerStopsYou3
	coord_event 37, 42, SCENE_ROUTE8LOWER_DOWSING, Route8LowerSwimmerGivesDowsing1
	coord_event 38, 42, SCENE_ROUTE8LOWER_DOWSING, Route8LowerSwimmerGivesDowsing2
	coord_event 39, 42, SCENE_ROUTE8LOWER_DOWSING, Route8LowerSwimmerGivesDowsing3
	
	def_bg_events
	bg_event 33, 54, BGEVENT_ITEM, Route8HiddenUltraBall
	bg_event 19, 42, BGEVENT_ITEM, Route8HiddenStardust
	bg_event 34, 44, BGEVENT_ITEM, Route8HiddenPearl
	bg_event 25, 50, BGEVENT_ITEM, Route8HiddenHeartScale
	bg_event 32,  8, BGEVENT_READ, Route8AdvancedTipsSign
	
	def_object_events
	object_event 36, 42, SPRITE_BEAUTY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route8BeautyScript, -1
	object_event 30, 34, SPRITE_BEAUTY, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 5, TrainerSwimmerGenevieve, -1
	object_event 26, 31, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 0, TrainerFisherWharton, -1
	object_event 35, 26, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 0, TrainerSkyTrainerAveza, -1
	object_event 18, 19, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 0, TrainerFisherShad, -1
	object_event 24, 15, SPRITE_BEAUTY, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 3, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerSwimmerMarissa, -1
	object_event 38, 63, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Route8LowerHeartScale, EVENT_ROUTE_8_LOWER_HEART_SCALE
	object_event 23, 42, SPRITE_FRUIT_TREE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route8LowerFruitTree, -1
	object_event 31, 54, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route8LowerRock, -1
	object_event 27, 47, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route8LowerRock, -1
	object_event 28, 10, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route8LowerRock, -1
	object_event 28, 11, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route8LowerRock, -1
