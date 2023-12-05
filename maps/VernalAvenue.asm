	object_const_def
	
VernalAvenue_MapScripts:
	def_scene_scripts
	
	def_callbacks
	
VernalAvenueBlackoutGuyScript:
	jumptextfaceplayer VernalAvenueBlackoutGuyText
	
VernalAvenueBlackoutGuyText:
	text "I'm sorry. There's"
	line "a blackout."
	
	para "You can't go any"
	line "further until"
	cont "it's fixed."
	done
	
VernalAvenueOverheardScript1:
	jumptext VernalAvenueOverheardText1
	
VernalAvenueOverheardText1:
	text "WOMAN 1: Being"
	line "stylish means"
	cont "knowing all about"
	
	para "everything in"
	line "LUMIOSE CITY!"
	
	para "WOMAN 2: We shall"
	line "go everywhere in"
	cont "LUMIOSE,"
	
	para "and the city will"
	line "love us for it,"
	cont "darling!"
	done
	
VernalAvenueOverheardScript2:
	jumptext VernalAvenueOverheardText2
	
VernalAvenueOverheardText2:
	text "BOY 1: Snip-snip!"
	line "Snippity-snip!"
	cont "It's a salon!"
	
	para "BOY 2: Another day"
	line "to while away..."
	cont "trimming Furfrou!"
	done
	
VernalAvenueCooltrainermScript:
	jumptextfaceplayer VernalAvenueCooltrainermText
	
VernalAvenueCooltrainermText:
	text "I like taking a"
	line "break by resting"
	cont "in the shade"
	
	para "of a tree. Don't"
	line "forget to take"
	cont "a break too!"
	done
	
VernalAvenuePokefanfScript:
	jumptextfaceplayer VernalAvenuePokefanfText
	
VernalAvenuePokefanfText:
	text "This place exudes"
	line "such a stylish"
	cont "atmosphere,"
	
	para "doesn't it?"
	done
	
VernalAvenueOverheardScript3:
	jumptext VernalAvenueOverheardText3
	
VernalAvenueOverheardText3:
	text "WOMAN 1: You can"
	line "get anywhere in"
	cont "LUMIOSE in no"
	
	para "time flat if"
	line "you use a taxi!"
	
	para "WOMAN 2: You're"
	line "already like a "
	cont "LUMIOSE native!"
	done
	
StoneEmporiumSign:
	jumptext StoneEmporiumSignText
	
StoneEmporiumSignText:
	text "Stone Emporium"
	done
	
HerboristeSign:
	jumptext HerboristeSignText
	
HerboristeSignText:
	text "Herboriste"
	done
	
FriseurFurfrouSign:
	jumptext FriseurFurfrouSignText
	
FriseurFurfrouSignText:
	text "Friseur Furfrou"
	done
	
CafeWoofSign:
	jumptext CafeWoofSignText
	
CafeWoofSignText:
	text "Café Woof"
	done
	
BoutiqueCoutureSign:
	jumptext BoutiqueCoutureSignText
	
BoutiqueCoutureSignText:
	text "Boutique Couture"
	done
	
CafeClasseSign:
	jumptext CafeClasseSignText
	
CafeClasseSignText:
	text "Café Classe"
	done
	
VernalAvenue_MapEvents:
	db 0, 0 ; filler
	
	def_warp_events
	warp_event  7, 41, LUMIOSE_SOUTHEAST, 3
	warp_event  8, 41, LUMIOSE_SOUTHEAST, 4
	warp_event  0, 11, BLEU_PLAZA, 2
	warp_event 15, 11, VERT_PLAZA, 1
	warp_event  7,  2, CENTRICO_PLAZA, 1
	warp_event  8,  2, CENTRICO_PLAZA, 2
	warp_event  2, 33, STONE_EMPORIUM, 1
	warp_event  2, 32, STONE_EMPORIUM, 2
	
	def_coord_events
	
	def_bg_events
	bg_event  2, 34, BGEVENT_READ, StoneEmporiumSign
	bg_event  2, 28, BGEVENT_READ, HerboristeSign
	bg_event  2, 22, BGEVENT_READ, FriseurFurfrouSign
	bg_event  2, 16, BGEVENT_READ, CafeWoofSign
	bg_event 13, 30, BGEVENT_READ, BoutiqueCoutureSign
	bg_event 13, 18, BGEVENT_READ, CafeClasseSign
	
	def_object_events
	object_event  8,  3, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VernalAvenueBlackoutGuyScript, EVENT_BLACKOUT_OVER_2
	object_event  7,  3, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VernalAvenueBlackoutGuyScript, EVENT_BLACKOUT_OVER_2
	object_event  1, 11, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VernalAvenueBlackoutGuyScript, EVENT_BLACKOUT_OVER_2
	object_event 14, 11, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VernalAvenueBlackoutGuyScript, EVENT_BLACKOUT_OVER_2
	object_event 13, 14, SPRITE_LASS, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VernalAvenueOverheardScript1, -1
	object_event 13, 15, SPRITE_LASS, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VernalAvenueOverheardScript1, -1
	object_event  6, 18, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VernalAvenueOverheardScript2, -1
	object_event  6, 19, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VernalAvenueOverheardScript2, -1
	object_event 11, 20, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VernalAvenueCooltrainermScript, -1
	object_event 10, 29, SPRITE_POKEFAN_F, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VernalAvenuePokefanfScript, -1
	object_event  4, 35, SPRITE_POKEFAN_F, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VernalAvenueOverheardScript3, -1
	object_event  5, 35, SPRITE_POKEFAN_F, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VernalAvenueOverheardScript3, -1