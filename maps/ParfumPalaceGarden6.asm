	object_const_def
	
ParfumPalaceGarden6_MapScripts:
	def_scene_scripts
	
	def_callbacks
	
ParfumPalaceGarden6HiddenSilverLeaf:
	hiddenitem SILVER_LEAF, EVENT_PARFUM_PALACE_GARDEN_6_HIDDEN_SILVER_LEAF
	
ParfumPalaceGarden6Revive:
	itemball REVIVE
	
ParfumPalaceGarden6_MapEvents:
	db 0, 0 ; filler
	
	def_warp_events
	
	def_coord_events
	
	def_bg_events
	bg_event 94, 18, BGEVENT_ITEM, ParfumPalaceGarden6HiddenSilverLeaf ; Pretty Wing?
	
	def_object_events
	object_event 137, 17, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, ParfumPalaceGarden6Revive, EVENT_PARFUM_PALACE_GARDEN_6_REVIVE