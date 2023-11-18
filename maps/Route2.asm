	object_const_def

Route2_MapScripts:
	def_scene_scripts

	def_callbacks

Route2Sign:
	jumptext Route2SignText
	
Route2SignText:
	text "ROUTE 2:"
	line "Avance Trail"
	done

Route2_MapEvents:
	db 0, 0 ; filler

	def_warp_events

	def_coord_events

	def_bg_events
	bg_event 15, 21, BGEVENT_READ, Route2Sign

	def_object_events
