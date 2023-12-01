	object_const_def
	const SANTALUNEMART_CLERK
	const SANTALUNEMART_GRANNY
	const SANTALUNEMART_COOLTRAINER_M

SantaluneMart_MapScripts:
	def_scene_scripts

	def_callbacks

SantaluneMartClerkScript:
	opentext
	pokemart MARTTYPE_STANDARD, MART_SANTALUNE
	closetext
	end

SantaluneMartGrannyScript:
	jumptextfaceplayer SantaluneMartGrannyText

SantaluneMartCooltrainerMScript:
	jumptextfaceplayer SantaluneMartCooltrainerMText

SantaluneMartGrannyText:
	text "When you first"
	line "catch a #MON,"
	cont "it may be weak."

	para "But it will even-"
	line "tually grow to be"
	cont "strong."

	para "It's important to"
	line "treat #MON with"
	cont "love."
	done

SantaluneMartCooltrainerMText:
	text "#MON can hold"
	line "items like POTION"
	cont "and ANTIDOTE."

	para "But they don't"
	line "appear to know how"

	para "to use manmade"
	line "items."
	done

SantaluneMart_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, SANTALUNE_CITY, 3
	warp_event  3,  7, SANTALUNE_CITY, 3

	def_coord_events

	def_bg_events

	def_object_events
	object_event  1,  3, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SantaluneMartClerkScript, -1
	object_event  7,  6, SPRITE_GRANNY, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SantaluneMartGrannyScript, -1
	object_event  5,  2, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, SantaluneMartCooltrainerMScript, -1
