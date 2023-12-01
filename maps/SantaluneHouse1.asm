	object_const_def
	
SantaluneHouse1_MapScripts:
	def_scene_scripts
	
	def_callbacks
	
Cliff:
	faceplayer
	opentext
	trade NPC_TRADE_CLIFF
	waitbutton
	closetext
	end
	
SantaluneHouse1BeautyScript:
	jumptextfaceplayer SantaluneHouse1BeautyText
	
SantaluneHouse1BeautyText:
	text "#MON that you"
	line "get from trades"
	cont "tend to grow"
	
	para "more easily, but"
	line "make sure you have"
	cont "enough GYM badges!"
	done
	
SantaluneHouse1_MapEvents:
	db 0, 0 ; filler
	
	def_warp_events
	warp_event  2,  7, SANTALUNE_CITY, 5
	warp_event  3,  7, SANTALUNE_CITY, 5
	
	def_coord_events
	
	def_bg_events
	
	def_object_events
	object_event  5,  3, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Cliff, -1
	object_event  2,  4, SPRITE_BEAUTY, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SantaluneHouse1BeautyScript, -1