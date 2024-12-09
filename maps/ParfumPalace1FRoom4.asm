	object_const_def
	
ParfumPalace1FRoom4_MapScripts:
	def_scene_scripts
	
	def_callbacks
	
ParfumPalace1FRoom4MaidScript:
	jumptextfaceplayer ParfumPalace1FRoom4MaidText
	
ParfumPalace1FRoom4BackpackerScript:
	jumptextfaceplayer ParfumPalace1FRoom4BackpackerText
	
ParfumPalace1FRoom4BackpackerText:
	text "Whoa…"
	done
	
ParfumPalace1FRoom4MaidText:
	text "This room was"
	line "once completely"
	cont "adorned with all"
	cont "manner of gold"
	cont "and silver works"
	cont "and jewels!"
	done	
	
ParfumPalace1FRoom4_MapEvents:
	db 0, 0 ; filler
	
	def_warp_events
	warp_event  4, 11, PARFUM_PALACE_1F, 13
	warp_event  5, 11, PARFUM_PALACE_1F, 14
	
	def_coord_events
	
	def_bg_events
	
	def_object_events
	object_event  6,  5, SPRITE_FISHER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ParfumPalace1FRoom4BackpackerScript, -1
	object_event  2,  7, SPRITE_LINK_RECEPTIONIST, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ParfumPalace1FRoom4MaidScript, -1