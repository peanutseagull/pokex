	object_const_def
	
ReflectionCaveTmRoom_MapScripts:
	def_scene_scripts
	
	def_callbacks
	
; ReflectionCaveTm74:
	; itemball TM_GYRO_BALL
	
ReflectionCaveTmRoom_MapEvents:
	db 0, 0 ; filler
	
	def_warp_events
	warp_event 11,  1, REFLECTION_CAVE_B2F, 2
	warp_event 11, 15, REFLECTION_CAVE_B2F, 3
	
	def_coord_events
	
	def_bg_events
	
	def_object_events
	; object_event  4,  8, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, ReflectionCaveTm74, EVENT_GOT_TM74_GYRO_BALL
	