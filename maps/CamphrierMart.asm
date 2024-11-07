	object_const_def
	
CamphrierMart_MapScripts:
	def_scene_scripts
	
	def_callbacks
	
CamphrierMartGeneralClerkScript:
	opentext
	checkflag ENGINE_STORMBADGE
	iftrue .FiveBadges
	checkflag ENGINE_FOGBADGE
	iftrue .FourBadges
	checkflag ENGINE_PLAINBADGE
	iftrue .ThreeBadges
	checkflag ENGINE_HIVEBADGE
	iftrue .TwoBadges
	checkflag ENGINE_ZEPHYRBADGE
	iftrue .OneBadge
	pokemart MARTTYPE_STANDARD, MART_DEFAULT
	closetext
	end
	
.FiveBadges:
	pokemart MARTTYPE_STANDARD, MART_FIVE_BADGES
	closetext
	end
	
.FourBadges:
	pokemart MARTTYPE_STANDARD, MART_FOUR_BADGES
	closetext
	end
	
.ThreeBadges:
	pokemart MARTTYPE_STANDARD, MART_THREE_BADGES
	closetext
	end
	
.TwoBadges:
	pokemart MARTTYPE_STANDARD, MART_TWO_BADGES
	closetext
	end
	
.OneBadge:
	pokemart MARTTYPE_STANDARD, MART_ONE_BADGE
	closetext
	end
	
CamphrierMartSecondClerkScript:
	opentext
	checkflag ENGINE_PLAINBADGE
	iftrue .StatusThreeBadges
	checkflag ENGINE_ZEPHYRBADGE
	iftrue .StatusOneBadge
	pokemart MARTTYPE_STANDARD, MART_STATUS_DEFAULT
	closetext
	end
	
.StatusThreeBadges:
	pokemart MARTTYPE_STANDARD, MART_STATUS_THREE
	closetext
	end
	
.StatusOneBadge:
	pokemart MARTTYPE_STANDARD, MART_STATUS_ONE
	closetext
	end
	
CamphrierMartPokefanmScript:
	jumptextfaceplayer CamphrierMartPokefanmText
	
CamphrierMartPokefanmText:
	text "Every new day is"
	line "just like the day"
	cont "before..."
	
	para "Don't you get"
	line "nervous being so"
	cont "happy?"
	done
	
CamphrierMartLassScript:
	jumptextfaceplayer CamphrierMartLassText
	
CamphrierMartLassText:
	text "I was shocked"
	line "when the weather"
	cont "changed during a"
	cont "#MON battle!"
	done
	
CamphrierMart_MapEvents:
	db 0, 0 ; filler
	
	def_warp_events
	warp_event  2,  7, CAMPHRIER_TOWN, 2
	warp_event  3,  7, CAMPHRIER_TOWN, 2
	
	def_coord_events
	
	def_bg_events
	
	def_object_events
	object_event  1,  3, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CamphrierMartGeneralClerkScript, -1
	object_event  1,  2, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CamphrierMartSecondClerkScript, -1
	object_event  9,  2, SPRITE_POKEFAN_M, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CamphrierMartPokefanmScript, -1
	object_event  5,  6, SPRITE_LASS, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CamphrierMartLassScript, -1