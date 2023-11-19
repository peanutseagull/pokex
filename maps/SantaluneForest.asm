	object_const_def
	const SANTALUNEFOREST_POKE_BALL1
	const SANTALUNEFOREST_POKE_BALL2
	const SANTALUNEFOREST_POKE_BALL3
	const SANTALUNEFOREST_POKE_BALL4

SantaluneForest_MapScripts:
	def_scene_scripts

	def_callbacks

SantaluneForestPotion:
	itemball POTION

SantaluneForestPokeBall:
	itemball POKE_BALL

SantaluneForestAntidote:
	itemball ANTIDOTE

SantaluneForestParlyzHeal:
	itemball PARLYZ_HEAL

SantaluneForestHiddenGreatBall:
	hiddenitem GREAT_BALL, EVENT_SANTALUNE_FOREST_HIDDEN_GREAT_BALL

SantaluneForestHiddenSuperPotion:
	hiddenitem SUPER_POTION, EVENT_SANTALUNE_FOREST_HIDDEN_SUPER_POTION

SantaluneForest_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  3, ROUTE_3, 1
	warp_event 19, 47, ROUTE_2_GATE, 3
	warp_event 20, 47, ROUTE_2_GATE, 4
	
	def_coord_events

	def_bg_events
	bg_event 14, 29, BGEVENT_ITEM, SantaluneForestHiddenGreatBall
	bg_event 37, 44, BGEVENT_ITEM, SantaluneForestHiddenSuperPotion
	
	def_object_events
	object_event  2, 25, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SantaluneForestPotion, EVENT_SANTALUNE_FOREST_POTION
	object_event  2, 32, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SantaluneForestPokeBall, EVENT_SANTALUNE_FOREST_POKE_BALL
	object_event 24, 40, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SantaluneForestAntidote, EVENT_SANTALUNE_FOREST_ANTIDOTE
	object_event  2, 40, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SantaluneForestParlyzHeal, EVENT_SANTALUNE_FOREST_PARLYZ_HEAL
