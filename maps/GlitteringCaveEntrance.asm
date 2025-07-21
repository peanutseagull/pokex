	object_const_def
	
GlitteringCaveEntrance_MapScripts:
	def_scene_scripts
	
	def_callbacks
	
GlitteringCaveEntranceHardStone:
	itemball HARD_STONE
	
; GlitteringCaveEntranceTm65:
	; itemball TM_65 ; SHADOW_CLAW
	
GlitteringCaveEntrance_MapEvents:
	db 0, 0 ; filler
	
	def_warp_events
	warp_event 15, 57, ROUTE_9, 3
	warp_event 21,  5, GLITTERING_CAVE_DEEP, 1
	
	def_coord_events
	
	def_bg_events
	
	def_object_events
	object_event  6, 49, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, GlitteringCaveEntranceHardStone, EVENT_GLITTERING_CAVE_ENTRANCE_HARD_STONE
	; object_event  4,  7, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, GlitteringCaveEntranceTm65, EVENT_GOT_TM_65