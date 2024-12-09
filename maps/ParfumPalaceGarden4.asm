	object_const_def
	
ParfumPalaceGarden4_MapScripts:
	def_scene_scripts
	
	def_callbacks
	
ParfumPalaceGarden4SuperPotion:
	itemball SUPER_POTION
	
ParfumPalaceGarden4RichBoyScript:
	jumptextfaceplayer ParfumPalaceGarden4RichBoyText
	
ParfumPalaceGarden4RichBoyText:
	text "I wonder how many"
	line "people and #MON"
	cont "it takes to make"
	cont "a garden this"
	cont "big!"
	done
	
ParfumPalaceGarden4ChefScript:
	jumptextfaceplayer ParfumPalaceGarden4ChefText
	
ParfumPalaceGarden4ChefText:
	text "I heard in the"
	line "past, the king"
	cont "would invite"
	cont "everyone here for"
	cont "parties."
	
	para "Imagine the"
	line "opulence!"
	done
	
ParfumPalaceGarden4HiddenRareCandy:
	hiddenitem RARE_CANDY, EVENT_PARFUM_PALACE_GARDEN_4_HIDDEN_RARE_CANDY
	
ParfumPalaceGarden4_MapEvents:
	db 0, 0 ; filler
	
	def_warp_events
	warp_event 34,  0, PARFUM_PALACE_GARDEN_MAZE, 1
	warp_event 35,  0, PARFUM_PALACE_GARDEN_MAZE, 2
	
	def_coord_events
	
	def_bg_events
	bg_event 69,  3, BGEVENT_ITEM, ParfumPalaceGarden4HiddenRareCandy
	
	def_object_events
	object_event 23, 20, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, ParfumPalaceGarden4SuperPotion, EVENT_PARFUM_PALACE_GARDEN_4_SUPER_POTION
	object_event 69,  8, SPRITE_YOUNGSTER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ParfumPalaceGarden4RichBoyScript, -1
	object_event 48,  5, SPRITE_CLERK, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ParfumPalaceGarden4ChefScript, -1
