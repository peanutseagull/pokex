	object_const_def

BoutiqueCouture_MapScripts:
	def_scene_scripts

	def_callbacks
	
BoutiqueCoutureBeautyScript:
	jumptextfaceplayer BoutiqueCoutureBeautyText
	
BoutiqueCoutureBeautyText:
	text "How may I help"
	line "you?"
	
	para "Oh, you're not as"
	line "stylish as you"
	cont "could be!"
	
	para "I'm so sorry to"
	line "tell you this."
	
	para "Come again when"
	line "you're more"
	cont "stylish!"
	done	
	
BoutiqueCouture_MapEvents:	
	db 0, 0 ; filler
	
	def_warp_events
	warp_event  6,  7, VERNAL_AVENUE, 17
	warp_event  7,  7, VERNAL_AVENUE, 18

	def_coord_events

	def_bg_events

	def_object_events
	object_event  6,  5, SPRITE_BEAUTY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, BoutiqueCoutureBeautyScript, -1