	object_const_def

Route8Lower_MapScripts:
	def_scene_scripts

	def_callbacks
	
Route8DemoOverScript:
	opentext
	checkevent EVENT_FOUND_ASSISTANT
	iftrue .DemoOver
	writetext Route8CantFindFossilText
	waitbutton
	closetext
	end
	
.DemoOver
	writetext Route8DemoOverText
	waitbutton
	closetext
	end
	
Route8CantFindFossilText:
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
	
Route8DemoOverText:
	text "You have reached"
	line "the current end"
	cont "of #X."
	
	para "The dev is working"
	line "hard to add more"
	cont "to the game!"
	
	para "Thank you so much"
	line "for playing!"
	
	para "Please leave your"
	line "feedback on Github"
	done
	
Route8LowerHeartScale:
	itemball PEARL ; HEART_SCALE
	
Route8LowerFruitTree:
	fruittree FRUITTREE_ROUTE_8_LOWER
	
Route8HiddenUltraBall:
	hiddenitem ULTRA_BALL, EVENT_ROUTE_8_LOWER_HIDDEN_ULTRA_BALL
	
Route8HiddenStardust:
	hiddenitem STARDUST, EVENT_ROUTE_8_LOWER_HIDDEN_STARDUST ; can reappear?
	
Route8HiddenPearl:
	hiddenitem PEARL, EVENT_ROUTE_8_LOWER_HIDDEN_PEARL ; can reappear?
	
Route8HiddenHeartScale:
	hiddenitem PEARL, EVENT_ROUTE_8_LOWER_HIDDEN_HEART_SCALE ; HEART_SCALE, can reappear?
	
Route8LowerRock:
	jumpstd SmashRockScript
	
Route8Lower_MapEvents:	
	db 0, 0 ; filler
	
	def_warp_events
	warp_event 13, 30, AMBRETTE_AQUARIUM, 3
	warp_event 13, 31, AMBRETTE_AQUARIUM, 4

	def_coord_events

	def_bg_events
	bg_event 23, 16, BGEVENT_ITEM, Route8HiddenUltraBall
	bg_event  9,  4, BGEVENT_ITEM, Route8HiddenStardust
	bg_event 24,  6, BGEVENT_ITEM, Route8HiddenPearl
	bg_event 15, 12, BGEVENT_ITEM, Route8HiddenHeartScale
	
	def_object_events
	object_event 27,  4, SPRITE_BEAUTY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route8DemoOverScript, -1
	object_event 28, 25, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route8LowerHeartScale, EVENT_ROUTE_8_LOWER_HEART_SCALE
	object_event 13,  4, SPRITE_FRUIT_TREE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route8LowerFruitTree, -1
	object_event 21, 16, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route8LowerRock, -1
	object_event 17,  9, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route8LowerRock, -1
