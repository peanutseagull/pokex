	object_const_def
	const SHABBONEAUCASTLE2F_POKE_BALL1
	
ShabboneauCastle2F_MapScripts:
	def_scene_scripts
	
	def_callbacks
	
ShabboneauCastle2FEscapeRope:
	itemball ESCAPE_ROPE
	
ShabboneauCastle2F_MapEvents:
	db 0, 0 ; filler
	
	def_warp_events
	warp_event  2, 12, SHABBONEAU_CASTLE, 3
	warp_event  6, 12, SHABBONEAU_CASTLE, 4
	warp_event  4,  0, SHABBONEAU_CASTLE_BEDROOM, 1
	warp_event  5,  0, SHABBONEAU_CASTLE_BEDROOM, 2
	
	def_coord_events
	
	def_bg_events
	
	def_object_events
	object_event  4, 15, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, ShabboneauCastle2FEscapeRope, EVENT_SHABBONEAU_CASTLE_ESCAPE_ROPE
