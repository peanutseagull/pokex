	object_const_def
	
CyllageHouse1_MapScripts:
	def_scene_scripts
	
	def_callbacks
	
CyllageHouse1BeautyScript:
	jumptextfaceplayer CyllageHouse1BeautyText
	
CyllageHouse1BeautyText:
	text "If you have a"
	line "#MON hold an"
	cont "item and trade it"
	cont "to someone,"
	
	para "you can give your"
	line "trading partner a"
	cont "nice surprise."
	done
	
CyllageHouse1TwinScript:
	jumptextfaceplayer CyllageHouse1TwinText
	
CyllageHouse1TwinText:
	text "Know what? Some"
	line "#MON evolve when"
	cont "you trade them"
	cont "with Friends!"
	done
	
CyllageHouse1PokefanmScript:
	faceplayer
	opentext
	checkevent EVENT_CYLLAGE_CITY_WHIPPED_DREAM
	iftrue .AlreadyGotItem
	writetext CyllageHouse1GiveWhippedDreamText
	promptbutton
	verbosegiveitem WHIPPED_DREAM
	writetext ConnectingCaveGotWhippedDreamText
	waitbutton
	closetext
	setevent EVENT_CYLLAGE_CITY_WHIPPED_DREAM
	end
	
.AlreadyGotItem:
	writetext ConnectingCaveGotWhippedDreamText
	waitbutton
	closetext
	end
	
CyllageHouse1GiveWhippedDreamText:
	text "Hi, Trainer!"
	line "Take this with"
	cont "you!"
	done
	
ConnectingCaveGotWhippedDreamText:
	text "Some #MON like"
	line "whipped cream, and"
	cont "others like aromas"
	cont "and flavours."
	
	para "It takes all kinds"
	line "of #MON to make"
	cont "the world go"
	cont "round."
	done
	
CyllageHouse1_MapEvents:
	db 0, 0 ; filler
	
	def_warp_events
	warp_event  2,  7, CYLLAGE_CITY, 3
	warp_event  3,  7, CYLLAGE_CITY, 3
	
	def_coord_events
	
	def_bg_events
	
	def_object_events
	object_event  1,  3, SPRITE_BEAUTY, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CyllageHouse1BeautyScript, -1
	object_event  5,  6, SPRITE_TWIN, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CyllageHouse1TwinScript, -1
	object_event  5,  3, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CyllageHouse1PokefanmScript, -1