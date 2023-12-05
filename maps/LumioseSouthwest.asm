	object_const_def
	
LumioseSouthwest_MapScripts:
	def_scene_scripts
	
	def_callbacks
	callback MAPCALLBACK_TILES, LumioseSouthwestBlackoutCallback

LumioseSouthwestBlackoutCallback:
	checkevent EVENT_BLACKOUT_OVER_2
	iffalse .skip1
	changeblock 6, 12, $06
	changeblock 8, 12, $06
	changeblock 10, 12, $06
	changeblock 12, 12, $06
	changeblock 14, 12, $06
	changeblock 14, 10, $06
	changeblock 14, 8, $06
	changeblock 14, 6, $06
.skip1
	endcallback
	
LumioseSouthwestBlackoutGuyScript:
	jumptextfaceplayer LumioseSouthwestBlackoutGuyText
	
LumioseSouthwestBlackoutGuyText:
	text "I'm sorry. There's"
	line "a blackout."
	
	para "You can't go any"
	line "further until"
	cont "it's fixed."
	done
	
LumioseSouthwestOverheardScript1:
	jumptext LumioseSouthwestOverheardText1
	
LumioseSouthwestOverheardText1:
	text "MAN: Hey! Did you"
	line "know that a"
	cont "super-famous movie"
	
	para "star sometimes"
	line "visits LUMIOSE's"
	cont "cafés?"
	
	para "WOMAN: I know!"
	line "I've seen her too!"
	cont "I love her movies!"
	done
	
LumioseSouthwestOverheardScript2:
	jumptext LumioseSouthwestOverheardText2
	
LumioseSouthwestOverheardText2:
	text "MAN: What's that"
	line "woman's name again?"
	
	para "She sure is a"
	line "popular movie"
	cont "star..."
	
	para "WOMAN: She is a"
	line "beautiful lady,"
	cont "for sure."
	
	para "No wonder she's"
	line "so famous!"
	done
	
LumioseSouthMartSign:
	jumpstd MartSignScript
	
ShutterbugCafeSign:
	jumptext ShutterbugCafeSignText
	
ShutterbugCafeSignText:
	text "Shutterbug Café"
	done
	
CafeSoleilSign:
	jumptext CafeSoleilSignText
	
CafeSoleilSignText:
	text "Café Soleil"
	done
	
Route5GateSign:
	jumptext Route5GateSignText
	
Route5GateSignText:
	text "To ROUTE 5 and"
	line "CAMPHRIER TOWN."
	done
	
Route13GateSign:
	jumptext Route13GateSignText
	
Route13GateSignText:
	text "To ROUTE 13 and"
	line "COUMARINE CITY."
	done

CoiffureClipsSign:
	jumptext CoiffureClipsSignText
	
CoiffureClipsSignText:
	text "Coiffure Clips"
	done
	
LumioseSouthwest_MapEvents:
	db 0, 0 ; filler
	
	def_warp_events
	warp_event 19,  6, ESTIVAL_AVENUE, 1
	warp_event 20,  6, ESTIVAL_AVENUE, 2
	warp_event 15,  3, SHUTTERBUG_CAFE, 2
	warp_event 17,  7, CAFE_SOLEIL, 2
	warp_event 23,  9, LUMIOSE_SOUTH_MART, 2
	warp_event 16, 23, LUMIOSE_SOUTH_OFFICE_GROUND_2, 1
	warp_event 17, 23, LUMIOSE_SOUTH_OFFICE_GROUND_2, 2
	warp_event  6, 15, LUMIOSE_SOUTH_OFFICE_GROUND_3, 1
	warp_event  7, 15, LUMIOSE_SOUTH_OFFICE_GROUND_3, 2
	
	def_coord_events
	
	def_bg_events
	bg_event 24,  9, BGEVENT_READ, LumioseSouthMartSign
	bg_event 14,  4, BGEVENT_READ, ShutterbugCafeSign
	bg_event 18,  8, BGEVENT_READ, CafeSoleilSign
	bg_event 31, 31, BGEVENT_READ, Route5GateSign
	bg_event  2,  8, BGEVENT_READ, Route13GateSign
	bg_event 26, 12, BGEVENT_READ, CoiffureClipsSign
	
	def_object_events
	object_event 16, 11, SPRITE_LASS, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, LumioseSouthwestOverheardScript1, -1
	object_event 17, 11, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, LumioseSouthwestOverheardScript1, -1
	object_event 25, 25, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, LumioseSouthwestOverheardScript2, -1
	object_event 26, 25, SPRITE_POKEFAN_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, LumioseSouthwestOverheardScript2, -1
	object_event 15, 13, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, LumioseSouthwestBlackoutGuyScript, EVENT_BLACKOUT_OVER_2
	object_event 20,  7, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, LumioseSouthwestBlackoutGuyScript, EVENT_BLACKOUT_OVER_2
	object_event 19,  7, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, LumioseSouthwestBlackoutGuyScript, EVENT_BLACKOUT_OVER_2
	object_event 29, 11, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, LumioseSouthwestBlackoutGuyScript, EVENT_BLACKOUT_OVER_2