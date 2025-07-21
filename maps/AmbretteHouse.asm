	object_const_def
	
AmbretteHouse_MapScripts:
	def_scene_scripts
	
	def_callbacks
	
AmbretteHousePokefanmScript:
	jumptextfaceplayer AmbretteHousePokefanmText
	
AmbretteHousePokefanmText:
	text "There are lots of"
	line "stones that can"
	cont "bring out new"
	cont "power in #MON."
	
	para "The KALOS region"
	line "just so happens to"
	cont "have a lot of"
	cont "stones."
	
	para "That makes me"
	line "think anything"
	cont "could happen here."
	done

AmbretteHouseCooltrainerfScript:
; Show her pokemon with specific speed and get feather in return ?
	jumptextfaceplayer AmbretteHouseCooltrainerfText
	
AmbretteHouseCooltrainerfText:
	text "#MON with high"
	line "SPEED have the"
	cont "advantage in"
	cont "battle!"
	done

AmbretteHouseTwinScript:
	jumptextfaceplayer AmbretteHouseTwinText
	
AmbretteHouseTwinText:
	text "Hi! Guess what!"
	
	para "I heard that some"
	line "#MON can evolve"
	cont "during a battle!"
	
	para "Did you know that?"
	done
	
AmbretteHouse_MapEvents:
	db 0, 0 ; filler
	
	def_warp_events
	warp_event  2,  7, AMBRETTE_TOWN, 3
	warp_event  3,  7, AMBRETTE_TOWN, 3
	
	def_coord_events
	
	def_bg_events
	
	def_object_events
	object_event  2,  3, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, AmbretteHousePokefanmScript, -1
	object_event  5,  3, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, AmbretteHouseCooltrainerfScript, -1
	object_event  5,  6, SPRITE_TWIN, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, AmbretteHouseTwinScript, -1