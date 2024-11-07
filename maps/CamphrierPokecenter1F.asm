	object_const_def
	const CAMPHRIERPOKECENTER1F_NURSE
	
CamphrierPokecenter1F_MapScripts:
	def_scene_scripts
	
	def_callbacks
	
CamphrierPokecenter1FNurseScript:
	jumpstd PokecenterNurseScript
	
CamphrierPokecenter1FBeautyScript:
	jumptextfaceplayer CamphrierPokecenter1FBeautyText
	
CamphrierPokecenter1FBeautyText:
	text "Are red suits the"
	line "new hot trend?"
	
	para "It's so hard to"
	line "keep up nowadays!"
	done
	
CamphrierNameRater:
	faceplayer
	opentext
	special NameRater
	waitbutton
	closetext
	end
	
CamphrierPokecenter1F_MapEvents:
	db 0, 0 ; filler
	
	def_warp_events
	warp_event  3,  7, CAMPHRIER_TOWN, 1
	warp_event  4,  7, CAMPHRIER_TOWN, 1
	warp_event  0,  7, POKECENTER_2F, 1

	def_coord_events
	
	def_bg_events
	
	def_object_events
	object_event  3,  1, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CamphrierPokecenter1FNurseScript, -1
	object_event  1,  5, SPRITE_BEAUTY, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CamphrierPokecenter1FBeautyScript, -1
	object_event  9,  7, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CamphrierNameRater, -1
	