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
	
Route8LowerRock:
	jumpstd SmashRockScript
	
Route8Lower_MapEvents:	
	db 0, 0 ; filler
	
	def_warp_events
	warp_event 13, 30, AMBRETTE_AQUARIUM, 3
	warp_event 13, 31, AMBRETTE_AQUARIUM, 4

	def_coord_events
	coord_event 27, 4, SCENE_ROUTE8LOWER_BLOCK, Route8LowerSwimmerStopsYou1
	coord_event 28, 4, SCENE_ROUTE8LOWER_BLOCK, Route8LowerSwimmerStopsYou2
	coord_event 29, 4, SCENE_ROUTE8LOWER_BLOCK, Route8LowerSwimmerStopsYou3
	coord_event 27, 4, SCENE_ROUTE8LOWER_DOWSING, Route8LowerSwimmerGivesDowsing1
	coord_event 28, 4, SCENE_ROUTE8LOWER_DOWSING, Route8LowerSwimmerGivesDowsing2
	coord_event 29, 4, SCENE_ROUTE8LOWER_DOWSING, Route8LowerSwimmerGivesDowsing3
	
	def_bg_events
	bg_event 23, 16, BGEVENT_ITEM, Route8HiddenUltraBall
	bg_event  9,  4, BGEVENT_ITEM, Route8HiddenStardust
	bg_event 24,  6, BGEVENT_ITEM, Route8HiddenPearl
	bg_event 15, 12, BGEVENT_ITEM, Route8HiddenHeartScale
	
	def_object_events
	object_event 26,  4, SPRITE_BEAUTY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route8BeautyScript, -1
	object_event 28, 25, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Route8LowerHeartScale, EVENT_ROUTE_8_LOWER_HEART_SCALE
	object_event 13,  4, SPRITE_FRUIT_TREE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route8LowerFruitTree, -1
	object_event 21, 16, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route8LowerRock, -1
	object_event 17,  9, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route8LowerRock, -1
