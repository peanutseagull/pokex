	object_const_def
	
CyllageMart_MapScripts:
	def_scene_scripts
	
	def_callbacks
	
CyllageMartGeneralClerkScript:
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
	
CyllageMartSecondClerkScript:
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
	
CyllageMartBallClerkScript:
	faceplayer
	opentext
	pokemart MARTTYPE_STANDARD, MART_CYLLAGE_BALLS
	closetext
	end
	
CyllageMartCooltrainerfScript:
	jumptextfaceplayer CyllageMartCooltrainerfText
	
CyllageMartCooltrainerfText:
	text "I have potions…"
	line "I'm totally ready!"
	
	para "I'll challenge the"
	line "GYM LEADER now!"
	
	para "Brace yourself,"
	line "GRANT!"
	done
	
CyllageMart_MapEvents:
	db 0, 0 ; filler
	
	def_warp_events
	warp_event  2,  7, CYLLAGE_CITY, 2
	warp_event  3,  7, CYLLAGE_CITY, 2
	
	def_coord_events
	
	def_bg_events
	
	def_object_events
	object_event  1,  3, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CyllageMartGeneralClerkScript, -1
	object_event  1,  2, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CyllageMartSecondClerkScript, -1
	object_event  2,  5, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CyllageMartBallClerkScript, -1
	object_event  6,  2, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, CyllageMartCooltrainerfScript, -1