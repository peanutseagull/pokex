	object_const_def
	
ParfumPalace1FRoom1_MapScripts:
	def_scene_scripts
	
	def_callbacks
	
ParfumPalace1FRoom1ChefScript:
	jumptextfaceplayer ParfumPalace1FRoom1ChefText
	
ParfumPalace1FRoom1MaidScript:
	jumptextfaceplayer ParfumPalace1FRoom1MaidText

ParfumPalace1FRoom1MaidText:
	text "The owner of this"
	line "palace only"
	cont "inherited it,"
	cont "you know."
	
	para "It's not as"
	line "though he earned"
	cont "it."
	done
	
ParfumPalace1FRoom1ChefText:
	text "Just because the"
	line "parents were"
	cont "great,"
	
	para "it surely does"
	line "not mean that"
	cont "their children"
	cont "will also be"
	cont "great."
	
	para "In fact, I often"
	line "find the opposite"
	cont "to be true!"
	done
	
ParfumPalace1FRoom1_MapEvents:
	db 0, 0 ; filler
	
	def_warp_events
	warp_event  4, 11, PARFUM_PALACE_1F, 7
	warp_event  5, 11, PARFUM_PALACE_1F, 8
	
	def_coord_events
	
	def_bg_events
	
	def_object_events
	object_event  3,  4, SPRITE_CLERK, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ParfumPalace1FRoom1ChefScript, -1
	object_event  8,  7, SPRITE_LINK_RECEPTIONIST, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ParfumPalace1FRoom1MaidScript, -1