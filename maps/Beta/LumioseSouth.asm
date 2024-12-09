	object_const_def
	
LumioseSouth_MapScripts:
	def_scene_scripts
	
	def_callbacks
	callback MAPCALLBACK_TILES, LumioseSouthBlackoutCallback

LumioseSouthBlackoutCallback:
	checkevent EVENT_BLACKOUT_OVER_2
	iffalse .skip1
	changeblock 52, 0, $06
	changeblock 54, 0, $06
	changeblock 56, 0, $06
	changeblock 58, 0, $06	
	changeblock 6, 12, $06
	changeblock 8, 12, $06
	changeblock 10, 12, $06
	changeblock 12, 12, $06
	changeblock 14, 12, $06
	changeblock 14, 10, $06
	changeblock 14, 8, $06
	changeblock 14, 6, $06
.skip1
	checkevent EVENT_BLACKOUT_OVER_1
	iffalse .skip2
	changeblock 32, 14, $06
	changeblock 32, 16, $06
	changeblock 32, 18, $06
	changeblock 32, 20, $06
	changeblock 32, 22, $06
	changeblock 32, 24, $06
	changeblock 32, 26, $06
	changeblock 32, 28, $06
	changeblock 34, 28, $06
	changeblock 36, 28, $06
.skip2
	endcallback
	
LumioseSouthBeautyScript:
	jumptextfaceplayer LumioseSouthBeautyText
	
LumioseSouthBeautyText:
	text "Wow! This"
	line "restaurant looks"
	cont "comfortable and"
	
	para "unpretentious!"
	done
	
LumioseSouthOverheardScript1:
	jumptext LumioseSouthOverheardText1
	
LumioseSouthOverheardText1:
	text "MAN: Do you know"
	line "how many cafés are"
	cont "in this city?"
	
	para "WOMAN: I'm not"
	line "sure,"
	
	para "But I know Café"
	line "Soleil is next"
	cont "on my list!"
	done
	
LumioseSouthPokefanfScript:
	jumptextfaceplayer LumioseSouthPokefanfText
	
LumioseSouthPokefanfText:
	text "Am I imagining"
	line "things?"
	
	para "#MON centers"
	line "have the same"
	cont "design everywhere,"
	
	para "but LUMIOSE's look"
	line "so fashionable…"
	done
	
LumioseSouthOverheardScript2:
	jumptext LumioseSouthOverheardText2
	
LumioseSouthOverheardText2:
	text "WOMAN 1: I wish"
	line "we could use the"
	cont "PR Video Studio."
	
	para "WOMAN 2: If only"
	line "we weren't 2D!"
	done
	
LumioseSouthGentlemanScript:
	jumptextfaceplayer LumioseSouthGentlemanText
	
LumioseSouthGentlemanText:
	text "This is SOUTH"
	line "BOULEVARD."
	
	para "The #MON lab"
	line "and several cafés"
	cont "are here."
	done
	
LumioseSouthBlackoutGuyScript:
	jumptextfaceplayer LumioseSouthBlackoutGuyText
	
LumioseSouthBlackoutGuyText:
	text "I'm sorry. There's"
	line "a blackout."
	
	para "You can't go any"
	line "further until"
	cont "it's fixed."
	done
	
LumioseSouthTrevorScript:
	jumptextfaceplayer LumioseSouthTrevorText
	
LumioseSouthTrevorText:
	text "Huh? You've"
	line "already been"
	cont "to the café?"
	done
	
LumioseSouthPokecenterSign:
	jumpstd PokecenterSignScript

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
	
CafeIntroversionSign:
	jumptext CafeIntroversionSignText
	
CafeIntroversionSignText:
	text "Café"
	line "Introversion"
	done
	
RestaurantLeNahSign:
	jumptext RestaurantLeNahSignText
	
RestaurantLeNahSignText:
	text "Restaurant Le Nah"
	done
	
Route4GateSign:
	jumptext Route4GateSignText
	
Route4GateSignText:
	text "To ROUTE 4 and"
	line "SANTALUNE CITY."
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
	
SycamoreLabSign:
	jumptext SycamoreLabSignText
	
SycamoreLabSignText:
	text "SYCAMORE #MON"
	line "Lab"
	done
	
LumioseSouth_MapEvents:
	db 0, 0 ; filler
	
	def_warp_events
	warp_event 63,  6, ROUTE_4_LUMIOSE_GATE, 3
	warp_event 63,  7, ROUTE_4_LUMIOSE_GATE, 4
	warp_event 37, 10, VERNAL_AVENUE, 1
	warp_event 38, 10, VERNAL_AVENUE, 2
	warp_event 19,  6, ESTIVAL_AVENUE, 1
	warp_event 20,  6, ESTIVAL_AVENUE, 2
	warp_event 33, 13, LUMIOSE_SOUTH_POKECENTER_1F, 2
	warp_event 15,  3, SHUTTERBUG_CAFE, 2
	warp_event 17,  7, CAFE_SOLEIL, 2
	warp_event 40, 11, CAFE_INTROVERSION, 2
	warp_event 23,  9, LUMIOSE_SOUTH_MART, 2
	warp_event 58, 15, LUMIOSE_SOUTH_OFFICE_GROUND_1, 1
	warp_event 59, 15, LUMIOSE_SOUTH_OFFICE_GROUND_1, 2
	warp_event 16, 23, LUMIOSE_SOUTH_OFFICE_GROUND_2, 1
	warp_event 17, 23, LUMIOSE_SOUTH_OFFICE_GROUND_2, 2
	warp_event  6, 15, LUMIOSE_SOUTH_OFFICE_GROUND_3, 1
	warp_event  7, 15, LUMIOSE_SOUTH_OFFICE_GROUND_3, 2
	warp_event 48, 23, SYCAMORE_LAB_1F, 1
	warp_event 49, 23, SYCAMORE_LAB_1F, 2
	
	def_coord_events
	
	def_bg_events
	bg_event 24,  9, BGEVENT_READ, LumioseSouthMartSign
	bg_event 34, 13, BGEVENT_READ, LumioseSouthPokecenterSign
	bg_event 14,  4, BGEVENT_READ, ShutterbugCafeSign
	bg_event 18,  8, BGEVENT_READ, CafeSoleilSign
	bg_event 41, 12, BGEVENT_READ, CafeIntroversionSign
	bg_event 51,  4, BGEVENT_READ, RestaurantLeNahSign
	bg_event 47, 23, BGEVENT_READ, SycamoreLabSign
	bg_event 63,  5, BGEVENT_READ, Route4GateSign
	bg_event 31, 31, BGEVENT_READ, Route5GateSign
	bg_event  2,  8, BGEVENT_READ, Route13GateSign
	bg_event 26, 12, BGEVENT_READ, CoiffureClipsSign
	
	def_object_events
	object_event 50,  6, SPRITE_BEAUTY, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, LumioseSouthBeautyScript, -1
	object_event 42, 10, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, LumioseSouthOverheardScript1, -1
	object_event 43, 10, SPRITE_LASS, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, LumioseSouthOverheardScript1, -1
	object_event 33, 16, SPRITE_POKEFAN_F, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, LumioseSouthPokefanfScript, -1
	object_event 39, 25, SPRITE_POKEFAN_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, LumioseSouthOverheardScript2, -1
	object_event 40, 25, SPRITE_POKEFAN_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, LumioseSouthOverheardScript2, -1
	object_event 53, 19, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, LumioseSouthGentlemanScript, -1
	object_event 33, 28, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, LumioseSouthBlackoutGuyScript, EVENT_BLACKOUT_OVER_1
	object_event 56,  1, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, LumioseSouthBlackoutGuyScript, EVENT_BLACKOUT_OVER_2
	object_event 44,  7, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, LumioseSouthBlackoutGuyScript, EVENT_BLACKOUT_OVER_2
	object_event 38, 11, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, LumioseSouthBlackoutGuyScript, EVENT_BLACKOUT_OVER_1
	object_event 37, 11, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, LumioseSouthBlackoutGuyScript, EVENT_BLACKOUT_OVER_1
	object_event 15, 13, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, LumioseSouthBlackoutGuyScript, EVENT_BLACKOUT_OVER_2
	object_event 20,  7, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, LumioseSouthBlackoutGuyScript, EVENT_BLACKOUT_OVER_2
	object_event 19,  7, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, LumioseSouthBlackoutGuyScript, EVENT_BLACKOUT_OVER_2
	object_event 29, 11, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, LumioseSouthBlackoutGuyScript, EVENT_BLACKOUT_OVER_2
	; object_event 32, 31, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, LumioseSouthTrevorScript, EVENT_TREVOR_LUMIOSE_SOUTH
	; object_event 33, 31, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, LumioseSouthTrevorScript, EVENT_TREVOR_LUMIOSE_SOUTH