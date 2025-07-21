	object_const_def
	
ParfumPalaceGarden5_MapScripts:
	def_scene_scripts
	
	def_callbacks
	
ParfumPalaceGarden5MadameScript:
	jumptextfaceplayer ParfumPalaceGarden5MadameText
	
ParfumPalaceGarden5MaidScript:
	jumptextfaceplayer ParfumPalaceGarden5MaidText
	
ParfumPalaceGarden5BeautyScript:
	jumptextfaceplayer ParfumPalaceGarden5BeautyText
	
ParfumPalaceGarden5BeautyText:
	text "I always wanted"
	line "to be a princess,"
	
	para "but I've given up"
	line "on that dream!"
	
	para "It seems boring!"
	line "And I'd get lost"
	cont "in here all the"
	cont "time!"
	done
	
	
ParfumPalaceGarden5MaidText:
	text "The king who"
	line "built this palace"
	cont "ruled the entire"
	cont "KALOS region,"
	
	para "Just like that"
	line "ancient king from"
	cont "3,000 years ago."
	done
	
ParfumPalaceGarden5MadameText:
	text "PARFUM PALACE is"
	line "a palace among"
	cont "palaces!"
	
	para "You could say"
	line "it's the king of"
	cont "palaces,"
	
	para "the premier"
	line "palace!"
	done
	
ParfumPalaceGarden5_MapEvents:
	db 0, 0 ; filler
	
	def_warp_events
	
	def_coord_events
	
	def_bg_events
	
	def_object_events
	object_event  3, 17, SPRITE_ERIKA, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ParfumPalaceGarden5MadameScript, -1
	object_event 73, 13, SPRITE_LINK_RECEPTIONIST, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ParfumPalaceGarden5MaidScript, -1
	object_event 100,  1, SPRITE_BEAUTY, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ParfumPalaceGarden5BeautyScript, -1