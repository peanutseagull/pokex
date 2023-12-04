	object_const_def
	
VernalAvenue_MapScripts:
	def_scene_scripts
	
	def_callbacks
	
StoneEmporiumSign:
	jumptext StoneEmporiumSignText
	
StoneEmporiumSignText:
	text "STONE EMPORIUM"
	done
	
VernalAvenue_MapEvents:
	db 0, 0 ; filler
	
	def_warp_events
	warp_event  7, 59, LUMIOSE_SOUTHEAST, 3
	warp_event  8, 59, LUMIOSE_SOUTHEAST, 4
	warp_event  0,  9, BLEU_PLAZA, 2
	warp_event 15,  9, VERT_PLAZA, 1
	warp_event  7,  2, CENTRICO_PLAZA, 1
	warp_event  8,  2, CENTRICO_PLAZA, 2
	warp_event  2, 47, STONE_EMPORIUM, 1
	warp_event  2, 46, STONE_EMPORIUM, 2
	
	def_coord_events
	
	def_bg_events
	bg_event  2, 48, BGEVENT_READ, StoneEmporiumSign
	def_warp_events
	