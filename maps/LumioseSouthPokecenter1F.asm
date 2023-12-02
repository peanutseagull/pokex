	object_const_def
	const LUMIOSESOUTHPOKECENTER1F_NURSE

LumioseSouthPokecenter1F_MapScripts:
	def_scene_scripts
	scene_const SCENE_GOLDENRODPOKECENTER1F_GS_BALL

	def_callbacks

LumioseSouthPokecenter1FNurseScript:
	jumpstd PokecenterNurseScript

LumioseSouthPokecenter1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  7, LUMIOSE_SOUTH, 7
	warp_event  4,  7, LUMIOSE_SOUTH, 7
	warp_event  0,  7, POKECENTER_2F, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  3,  1, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, LumioseSouthPokecenter1FNurseScript, -1
