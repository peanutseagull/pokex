	object_const_def
	const AMBRETTEPOKECENTER1F_NURSE
	
AmbrettePokecenter1F_MapScripts:
	def_scene_scripts
	
	def_callbacks
	
AmbrettePokecenter1FNurseScript:
	jumpstd PokecenterNurseScript
	
AmbrettePokecenter1FBackpackerScript:
	jumptextfaceplayer AmbrettePokecenter1FBackpackerText
	
AmbrettePokecenter1FBackpackerText:
	text "#MON fossils…"
	
	para "What do you think"
	line "they dream about?"
	done

AmbrettePokecenter1F_MapEvents:
	db 0, 0 ; filler
	
	def_warp_events
	warp_event  3,  7, AMBRETTE_TOWN, 1
	warp_event  4,  7, AMBRETTE_TOWN, 1
	warp_event  0,  7, POKECENTER_2F, 1

	def_coord_events
	
	def_bg_events
	
	def_object_events
	object_event  3,  1, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, AmbrettePokecenter1FNurseScript, -1
	object_event  1,  4, SPRITE_FISHER, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, AmbrettePokecenter1FBackpackerScript, -1