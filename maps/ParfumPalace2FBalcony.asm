	object_const_def
	
ParfumPalace2FBalcony_MapScripts:
	def_scene_scripts
	scene_script ParfumPalace2FBalconyNoop1, SCENE_PARFUMPALACE2FBALCONY_SHAUNA
	scene_script ParfumPalace2FBalconyNoop2, SCENE_PARFUMPALACE2FBALCONY_NOOP
	
	def_callbacks

ParfumPalace2FBalconyNoop1:
	end
ParfumPalace2FBalconyNoop2:
	end

ParfumPalace2FBalcony_MapEvents:
	db 0, 0 ; filler
	
	def_warp_events
	warp_event  7, 11, PARFUM_PALACE_2F, 3
	warp_event  8, 11, PARFUM_PALACE_2F, 4
	
	def_coord_events
	
	def_bg_events
	
	def_object_events
	