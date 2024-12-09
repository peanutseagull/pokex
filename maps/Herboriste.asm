	object_const_def

Herboriste_MapScripts:
	def_scene_scripts

	def_callbacks
	
HerboristeShopkeeperScript:
	opentext
	pokemart MARTTYPE_BITTER, MART_HERBORISTE
	closetext
	end
	
HerboristeClerkScript:
	jumptextfaceplayer HerboristeClerkText
	
HerboristeGrampsScript:
	jumptextfaceplayer HerboristeGrampsText
	
HerboristeBeautyScript:
	jumptextfaceplayer HerboristeBeautyText
	
HerboristeEspurrScript:
	jumptextfaceplayer HerboristeEspurrText
	
HerboristeEspurrText:
	text "ESPURR: Raaawr!"
	done
	
HerboristeBeautyText:
	text "I kept feeding my"
	line "#MON herbal"
	cont "medicine,"
	
	para "and I think they"
	line "ended up hating"
	cont "me…"
	done
	
HerboristeGrampsText:
	text "I like to mash my"
	line "ENERGYPOWDER in"
	cont "with rice and"
	cont "swallow it whole!"
	
	para "Just thinking"
	line "about it gets me"
	cont "raring to go!"
	done
	
HerboristeClerkText:
	text "ENERGYPOWDER is"
	line "great for healing"
	cont "HP!"
	
	para "ENERGY ROOT is"
	line "even better!"
	
	para "It's bursting"
	line "with nutrients!"
	done
	
Herboriste_MapEvents:	
	db 0, 0 ; filler
	
	def_warp_events
	warp_event  5,  7, VERNAL_AVENUE, 9
	warp_event  6,  7, VERNAL_AVENUE, 10

	def_coord_events

	def_bg_events

	def_object_events
	object_event  5,  1, SPRITE_LINK_RECEPTIONIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, HerboristeShopkeeperScript, -1
	object_event  7,  1, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, HerboristeClerkScript, -1
	object_event  0,  2, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, HerboristeGrampsScript, -1
	object_event  8,  5, SPRITE_BEAUTY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, HerboristeBeautyScript, -1
	object_event  8,  6, SPRITE_FAIRY, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, HerboristeEspurrScript, -1