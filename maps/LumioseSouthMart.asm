	object_const_def
	
LumioseSouthMart_MapScripts:
	def_scene_scripts

	def_callbacks

LumioseSouthMartGeneralClerkScript:
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

LumioseSouthMartSecondClerkScript:
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
	
LumioseSouthMart_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, LUMIOSE_SOUTH, 11
	warp_event  3,  7, LUMIOSE_SOUTH, 11

	def_coord_events

	def_bg_events
	
	def_object_events
	object_event  1,  3, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, LumioseSouthMartGeneralClerkScript, -1
	object_event  1,  2, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, LumioseSouthMartSecondClerkScript, -1