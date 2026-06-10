	object_const_def
	
GeosengeMart_MapScripts:
	def_scene_scripts
	
	def_callbacks
	
GeosengeMartGeneralClerkScript:
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
	
GeosengeMartSecondClerkScript:
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
	
GeosengeMartGrampsScript:
	jumptextfaceplayer PaybackAfterText
	; faceplayer
	; opentext
	; checkevent EVENT_GOT_TM66_PAYBACK
	; iftrue .AlreadyHavePayback
	; writetext GivePaybackText
	; promptbutton
	; verbosegiveitem TM_PAYBACK
	; setevent EVENT_GOT_TM66_PAYBACK
; .AlreadyHaveDestinyKnot:
	; writetext PaybackAfterText
	; waitbutton
	; closetext
	; end	
	
; GivePaybackText:
	; text "If you have a"
	; line "#MON that is"
	; cont "pretty slow,"
	; cont "give this one a"
	; cont "try!"
	; done
	
PaybackAfterText:
	text "PAYBACK doubles in"
	line "power if it goes"
	cont "off after its"
	cont "target makes its"
	cont "move!"
	done
	
GeosengeMart_MapEvents:
	db 0, 0 ; filler
	
	def_warp_events
	warp_event  2,  7, GEOSENGE_TOWN, 2
	warp_event  3,  7, GEOSENGE_TOWN, 2
	
	def_coord_events
	
	def_bg_events
	
	def_object_events
	object_event  1,  3, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GeosengeMartGeneralClerkScript, -1
	object_event  1,  2, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GeosengeMartSecondClerkScript, -1
	object_event  7,  6, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GeosengeMartGrampsScript, -1