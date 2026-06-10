	object_const_def
	const GEOSENGEPOKECENTER1F_NURSE
	
GeosengePokecenter1F_MapScripts:
	def_scene_scripts
	
	def_callbacks
	
GeosengePokecenter1FNurseScript:
	jumpstd PokecenterNurseScript
	
GeosengePokecenter1FPokefanmScript:
	jumptextfaceplayer GeosengePokecenter1FPokefanmText
	
GeosengePokecenter1FPokefanmText:
	text "These big stones"
	line "are resistant to"
	cont "weathering,"
	
	para "which has made"
	line "them a symbol of"
	cont "the eternal for"
	cont "many people."
	
	para "Lots of folks even"
	line "think the stones"
	cont "possess some kind"
	cont "of mysterious"
	cont "power."
	done
	
GeosengePokecenter1FLassScript:
	jumptextfaceplayer GeosengePokecenter1FLassText
	
GeosengePokecenter1FLassText:
	text "Did you come here"
	line "to see the big"
	cont "stones with your"
	cont "#MON?"
	
	para "Maybe you'll get"
	line "lucky, and the"
	cont "stones will impart"
	cont "some of their"
	cont "power to your"
	cont "#MON!"
	done

GeosengePokecenter1F_MapEvents:
	db 0, 0 ; filler
	
	def_warp_events
	warp_event  3,  7, GEOSENGE_TOWN, 1
	warp_event  4,  7, GEOSENGE_TOWN, 1

	def_coord_events
	
	def_bg_events
	
	def_object_events
	object_event  3,  1, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GeosengePokecenter1FNurseScript, -1
	object_event  0,  4, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GeosengePokecenter1FPokefanmScript, -1
	object_event  7,  4, SPRITE_LASS, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GeosengePokecenter1FLassScript, -1