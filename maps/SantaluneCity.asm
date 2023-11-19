	object_const_def

SantaluneCity_MapScripts:
	def_scene_scripts

	def_callbacks

SantaluneCity_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 23, 27, SANTALUNE_POKECENTER_1F, 1
	warp_event 24,  5, SANTALUNE_GYM, 1
	warp_event  3, 17, SANTALUNE_MART, 1
	
	def_coord_events

	def_bg_events

	def_object_events