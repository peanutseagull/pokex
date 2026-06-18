	object_const_def
	
ReflectionCaveB2F_MapScripts:
	def_scene_scripts
	
	def_callbacks
	
; ReflectionCaveB2FEarthPlate:
	; itemball EARTH_PLATE
	
ReflectionCaveB2F_MapEvents:
	db 0, 0 ; filler
	
	def_warp_events
	warp_event 25, 21, REFLECTION_CAVE_B1F, 3
	warp_event 13,  3, REFLECTION_CAVE_TM_ROOM, 1
	warp_event 13, 17, REFLECTION_CAVE_TM_ROOM, 2
	
	def_coord_events
	
	def_bg_events
	
	def_object_events
	; object_event 25, 10, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, ReflectionCaveB2FEarthPlate, EVENT_REFLECTION_CAVE_B2F_EARTH_PLATE