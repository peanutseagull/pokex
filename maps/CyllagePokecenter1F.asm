	object_const_def
	const CYLLAGEPOKECENTER1F_NURSE
	
CyllagePokecenter1F_MapScripts:
	def_scene_scripts
	
	def_callbacks
	
CyllagePokecenter1FNurseScript:
	jumpstd PokecenterNurseScript

Farris:
	faceplayer
	opentext
	trade NPC_TRADE_FARRIS ; LUVDISC isn't in game, asks for CORSOLA instead
	waitbutton
	closetext
	end
	
CyllagePokecenter1FYoungsterScript:
	jumptextfaceplayer CyllagePokecenter1FYoungsterText
	
CyllagePokecenter1FYoungsterText:
	text "Even if #MON"
	line "are of the same"
	cont "species,"
	
	para "#MON can have"
	line "two different"
	cont "abilities."
	
	done

CyllagePokecenter1F_MapEvents:
	db 0, 0 ; filler
	
	def_warp_events
	warp_event  3,  7, CYLLAGE_CITY, 1
	warp_event  4,  7, CYLLAGE_CITY, 1
	warp_event  0,  7, POKECENTER_2F, 1

	def_coord_events
	
	def_bg_events
	
	def_object_events
	object_event  3,  1, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CyllagePokecenter1FNurseScript, -1
	object_event  1,  4, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Farris, -1
	object_event  7,  2, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CyllagePokecenter1FYoungsterScript, -1