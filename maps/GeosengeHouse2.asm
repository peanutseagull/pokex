	object_const_def
	
GeosengeHouse2_MapScripts:
	def_scene_scripts
	
	def_callbacks
	
GeosengeHouse2GrampsScript:
	jumptextfaceplayer GeosengeHouse2GrampsText
	
GeosengeHouse2GrampsText:
	text "Some wandering for"
	line "3,000 years trying"
	cont "to find a"
	cont "#MON…"
	
	para "I've heard a story"
	line "about a man like"
	cont "that, but you"
	cont "can't believe"
	cont "everything you"
	cont "hear."
	done
	
GeosengeHouse2_MapEvents:
	db 0, 0 ; filler
	
	def_warp_events
	warp_event  2,  7, GEOSENGE_TOWN, 4
	warp_event  3,  7, GEOSENGE_TOWN, 4
	
	def_coord_events
	
	def_bg_events
	
	def_object_events
	object_event  5,  1, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GeosengeHouse2GrampsScript, -1