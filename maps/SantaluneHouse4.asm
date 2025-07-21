	object_const_def
	
SantaluneHouse4_MapScripts:
	def_scene_scripts
	
	def_callbacks
	
SantaluneHouse4YoungsterScript:
	faceplayer
	opentext
	checkevent EVENT_SANTALUNE_CITY_GREAT_BALL
	iftrue .AlreadyGotItem
	writetext SantaluneYoungsterGreatBallText
	promptbutton
	verbosegiveitem GREAT_BALL
	writetext SantaluneYoungsterGotText
	waitbutton
	closetext
	setevent EVENT_SANTALUNE_CITY_GREAT_BALL
	end
	
.AlreadyGotItem:
	writetext SantaluneYoungsterGotText
	waitbutton
	closetext
	end
	
SantaluneYoungsterGreatBallText:
	text "I'm a real grown-"
	line "up, you see, so"
	cont "I got GREAT BALLs!"
	
	para "Here, Trainer. I'm"
	line "feeling generous,"
	cont "so I'll share one!"
	done
	
SantaluneYoungsterGotText:
	text "A GREAT BALL is"
	line "a really great"
	cont "#BALL! Get it?"
	
	para "It makes it even"
	line "easier to catch"
	cont "#MON!"
	done
	
SantaluneHouse4PokefanScript:
	jumptextfaceplayer SantaluneHouse4PokefanText
	
SantaluneHouse4PokefanText:
	text "I still remember"
	line "my own first big"
	cont "adventure."
	
	para "I travelled far"
	line "with my #MON."
	
	para "I still feel my"
	line "heart racing like"
	cont "it was yesterday."
	done
	
SantaluneHouse4_MapEvents:
	db 0, 0 ; filler
	
	def_warp_events
	warp_event  2,  7, SANTALUNE_CITY, 8
	warp_event  3,  7, SANTALUNE_CITY, 8
	
	def_coord_events
	
	def_bg_events
	
	def_object_events
	object_event  5,  3, SPRITE_POKEFAN_F, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SantaluneHouse4PokefanScript, -1
	object_event  5,  4, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SantaluneHouse4YoungsterScript, -1