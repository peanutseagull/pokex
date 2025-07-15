	object_const_def
	
Route9_MapScripts:
	def_scene_scripts
	
	def_callbacks
	callback MAPCALLBACK_TILES, Route9RhyhornCallback

Route9RhyhornCallback:
	checkevent EVENT_IS_RHYHORN
	iffalse .skip1
	changeblock  8, 14, $3e
	changeblock 64,  4, $72
	changeblock 12, 16, $0a
	changeblock 12, 18, $0a
	changeblock 28, 14, $0a
	changeblock 30, 14, $0a
	changeblock 52,  8, $0a
	changeblock 54, 10, $0a
	changeblock 56, 10, $0a
	changeblock 58, 12, $0a
	changeblock 58, 14, $0a
	changeblock 58, 16, $0a
	changeblock 44, 16, $0a
	changeblock 44, 18, $0a
.skip1
	endcallback
	
RhyhornSign:
	opentext
	checkevent EVENT_IS_RHYHORN
	iftrue .IsRhyhorn
	writetext RideRhyhornText
	yesorno
	iffalse .No
	closetext
	setevent EVENT_IS_RHYHORN
	reloadmap
	loadvar VAR_MOVEMENT, PLAYER_RHYHORN
	special UpdatePlayerSprite
	changeblock  8, 14, $3e
	changeblock 64,  4, $72
	changeblock 12, 16, $0a
	changeblock 12, 18, $0a
	changeblock 28, 14, $0a
	changeblock 30, 14, $0a
	changeblock 52,  8, $0a
	changeblock 54, 10, $0a
	changeblock 56, 10, $0a
	changeblock 58, 12, $0a
	changeblock 58, 14, $0a
	changeblock 58, 16, $0a
	changeblock 44, 16, $0a
	changeblock 44, 18, $0a
.No:
	closetext
	end
	
.IsRhyhorn:
	writetext RhyhornDisembarkText
	yesorno
	iffalse .No
	clearevent EVENT_IS_RHYHORN
	reloadmap
	loadvar VAR_MOVEMENT, PLAYER_NORMAL
	special UpdatePlayerSprite
	changeblock  8, 14, $3c
	changeblock 64,  4, $73
	changeblock 12, 16, $57
	changeblock 12, 18, $57
	changeblock 28, 14, $57
	changeblock 30, 14, $57
	changeblock 52,  8, $57
	changeblock 54, 10, $57
	changeblock 56, 10, $57
	changeblock 58, 12, $57
	changeblock 58, 14, $57
	changeblock 58, 16, $57
	changeblock 44, 16, $57
	changeblock 44, 18, $57
	end
	
RideRhyhornText:
	text "Ride the RHYHORN"
	line "Express?"
	done
	
RhyhornDisembarkText:
	text "Disembark from"
	line "RHYHORN?"
	done
	
Route9_MapEvents:
	db 0, 0 ; filler
	
	def_warp_events
	warp_event  4, 12, ROUTE_9_GATE, 3
	warp_event  4, 13, ROUTE_9_GATE, 4
	; warp_event 64,  5, GLITTERING_CAVE, 1
	
	def_coord_events
	
	def_bg_events
	bg_event 11, 21, BGEVENT_READ, RhyhornSign
	bg_event 28,  8, BGEVENT_READ, RhyhornSign
	bg_event 47, 21, BGEVENT_READ, RhyhornSign
	bg_event 54,  6, BGEVENT_READ, RhyhornSign
	bg_event 62, 12, BGEVENT_READ, RhyhornSign
	
	def_object_events
	