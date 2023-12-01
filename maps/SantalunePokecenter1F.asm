	object_const_def
	const SANTALUNEPOKECENTER1F_NURSE
	const SANTALUNEPOKECENTER1F_GAMEBOY_KID
	const SANTALUNEPOKECENTER1F_GENTLEMAN
	const SANTALUNEPOKECENTER1F_YOUNGSTER

SantalunePokecenter1F_MapScripts:
	def_scene_scripts

	def_callbacks

SantalunePokecenterNurse:
	jumpstd PokecenterNurseScript

SantalunePokecenter1FGameboyKidScript:
	jumptextfaceplayer SantalunePokecenter1FGameboyKidText

SantalunePokecenter1FGentlemanScript:
	jumptextfaceplayer SantalunePokecenter1FGentlemanText

SantalunePokecenter1FYoungsterScript:
	jumptextfaceplayer SantalunePokecenter1FYoungsterText

SantalunePokecenter1FGameboyKidText:
	text "A guy named BILL"
	line "made the #MON"
	cont "PC storage system."
	done

SantalunePokecenter1FGentlemanText:
	text "#MON are easier"
	line "to catch if they"
	cont "are asleep!"
	
	para "Try carrying a"
	line "#MON with"
	cont "status moves!"
	done

SantalunePokecenter1FYoungsterText:
	text "#MON are smart."
	line "They won't obey a"

	para "trainer they don't"
	line "respect."

	para "Without the right"
	line "GYM BADGES, they"

	para "will just do as"
	line "they please."
	done

SantalunePokecenter1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  7, SANTALUNE_CITY, 1
	warp_event  4,  7, SANTALUNE_CITY, 1
	warp_event  0,  7, POKECENTER_2F, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  3,  1, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SantalunePokecenterNurse, -1
	object_event  7,  6, SPRITE_GAMEBOY_KID, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, SantalunePokecenter1FGameboyKidScript, -1
	object_event  1,  4, SPRITE_GENTLEMAN, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SantalunePokecenter1FGentlemanScript, -1
	object_event  8,  1, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, SantalunePokecenter1FYoungsterScript, -1
