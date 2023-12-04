	object_const_def
	
LumioseSoutheast_MapScripts:
	def_scene_scripts
	
	def_callbacks
	callback MAPCALLBACK_TILES, LumioseSoutheastBlackoutCallback

LumioseSoutheastBlackoutCallback:
	checkevent EVENT_BLACKOUT_OVER_2
	iffalse .skip1
	changeblock 20, 2, $06
	changeblock 22, 2, $06
	changeblock 24, 2, $04
	changeblock 26, 2, $06
.skip1
	checkevent EVENT_BLACKOUT_OVER_1
	iffalse .skip2
	changeblock 10, 12, $06
	changeblock 10, 14, $06
	changeblock 10, 16, $06
	changeblock 10, 18, $06
	changeblock 10, 20, $06
	changeblock 10, 22, $06
	changeblock 10, 24, $06
.skip2
	endcallback
	
LumioseSoutheastBeautyScript:
	jumptextfaceplayer LumioseSoutheastBeautyText
	
LumioseSoutheastBeautyText:
	text "Wow! This"
	line "restaurant looks"
	cont "comfortable and"
	
	para "unpretentious!"
	done
	
LumioseSoutheastOverheardScript1:
	jumptext LumioseSoutheastOverheardText1
	
LumioseSoutheastOverheardText1:
	text "MAN: Do you know"
	line "how many cafés are"
	cont "in this city?"
	
	para "WOMAN: I'm not"
	line "sure,"
	
	para "But I know Café"
	line "Soleil is next"
	cont "on my list!"
	done
	
LumioseSoutheastPokefanfScript:
	jumptextfaceplayer LumioseSoutheastPokefanfText
	
LumioseSoutheastPokefanfText:
	text "Am I imagining"
	line "things?"
	
	para "#MON centers"
	line "have the same"
	cont "design everywhere,"
	
	para "but LUMIOSE's look"
	line "so fashionable..."
	done
	
LumioseSoutheastOverheardScript2:
	jumptext LumioseSoutheastOverheardText2
	
LumioseSoutheastOverheardText2:
	text "WOMAN 1: I wish"
	line "we could use the"
	cont "PR Video Studio."
	
	para "WOMAN 2: If only"
	line "we weren't 2D!"
	done
	
LumioseSoutheastGentlemanScript:
	jumptextfaceplayer LumioseSoutheastGentlemanText
	
LumioseSoutheastGentlemanText:
	text "This is SOUTH"
	line "BOULEVARD."
	
	para "The #MON lab"
	line "and several cafés"
	cont "are here."
	done
	
LumioseSoutheastBlackoutGuyScript:
	jumptextfaceplayer LumioseSoutheastBlackoutGuyText
	
LumioseSoutheastBlackoutGuyText:
	text "I'm sorry. There's"
	line "a blackout."
	
	para "You can't go any"
	line "further until"
	cont "it's fixed."
	done
	
LumioseSoutheastTrevorScript:
	jumptextfaceplayer LumioseSoutheastTrevorText
	
LumioseSoutheastTrevorText:
	text "Huh? You've"
	line "already been"
	cont "to the café?"
	done
	
LumioseSoutheastPokecenterSign:
	jumpstd PokecenterSignScript
	
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
	
SycamoreLabSign:
	jumptext SycamoreLabSignText
	
SycamoreLabSignText:
	text "SYCAMORE #MON"
	line "Lab"
	done
	
LumioseSoutheast_MapEvents:
	db 0, 0 ; filler
	
	def_warp_events
	warp_event 31,  6, ROUTE_4_LUMIOSE_GATE, 3
	warp_event 31,  7, ROUTE_4_LUMIOSE_GATE, 4
	warp_event  5, 10, VERNAL_AVENUE, 1
	warp_event  6, 10, VERNAL_AVENUE, 2
	warp_event  1, 13, LUMIOSE_SOUTH_POKECENTER_1F, 1
	warp_event  8, 11, CAFE_INTROVERSION, 2
	warp_event 26, 15, LUMIOSE_SOUTH_OFFICE_GROUND_1, 1
	warp_event 27, 15, LUMIOSE_SOUTH_OFFICE_GROUND_1, 2
	warp_event 16, 23, SYCAMORE_LAB_1F, 1
	warp_event 17, 23, SYCAMORE_LAB_1F, 2
	
	def_coord_events
	
	def_bg_events
	bg_event  2, 13, BGEVENT_READ, LumioseSoutheastPokecenterSign
	bg_event 41, 12, BGEVENT_READ, CafeIntroversionSign
	bg_event 51,  4, BGEVENT_READ, RestaurantLeNahSign
	bg_event 47, 23, BGEVENT_READ, SycamoreLabSign
	bg_event 63,  5, BGEVENT_READ, Route4GateSign
	
	def_object_events
	object_event 18,  6, SPRITE_BEAUTY, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, LumioseSoutheastBeautyScript, -1
	object_event 10, 10, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, LumioseSoutheastOverheardScript1, -1
	object_event 11, 10, SPRITE_LASS, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, LumioseSoutheastOverheardScript1, -1
	object_event  1, 16, SPRITE_POKEFAN_F, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, LumioseSoutheastPokefanfScript, -1
	object_event  8, 25, SPRITE_POKEFAN_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, LumioseSoutheastOverheardScript2, -1
	object_event  7, 25, SPRITE_POKEFAN_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, LumioseSoutheastOverheardScript2, -1
	object_event 21, 19, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, LumioseSoutheastGentlemanScript, -1
	object_event 11, 21, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, LumioseSoutheastBlackoutGuyScript, EVENT_BLACKOUT_OVER_1
	object_event 23,  4, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, LumioseSoutheastBlackoutGuyScript, EVENT_BLACKOUT_OVER_2
	object_event 12,  7, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, LumioseSoutheastBlackoutGuyScript, EVENT_BLACKOUT_OVER_2
	object_event  0, 31, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, LumioseSoutheastTrevorScript, EVENT_TREVOR_LUMIOSE_SOUTH
	object_event  1, 31, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, LumioseSoutheastTrevorScript, EVENT_TREVOR_LUMIOSE_SOUTH
