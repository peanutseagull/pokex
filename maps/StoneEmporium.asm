	object_const_def
	const STONEEMPORIUM_CLERK

StoneEmporium_MapScripts:
	def_scene_scripts

	def_callbacks

StoneEmporiumClerkScript:
	opentext
	pokemart MARTTYPE_STANDARD, MART_STONE_EMPORIUM
	closetext
	end

StoneEmporium_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  5,  7, VERNAL_AVENUE, 7
	warp_event  6,  7, VERNAL_AVENUE, 8

	def_coord_events

	def_bg_events

	def_object_events
	object_event  5,  1, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, StoneEmporiumClerkScript, -1
