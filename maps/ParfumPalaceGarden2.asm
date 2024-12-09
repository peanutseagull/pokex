	object_const_def
	
ParfumPalaceGarden2_MapScripts:
	def_scene_scripts
	
	def_callbacks
	
ParfumPalaceGarden2GardenerScript:
	checkevent EVENT_GOT_HM01_CUT
	iftrue .GotCut
	faceplayer
	opentext
	writetext ParfumPalaceGarden2GardenerText
	waitbutton
	closetext
	end
	
.GotCut:
	jumptextfaceplayer ParfumPalaceGarden2GardenerFoundText
	
ParfumPalaceGarden2MadameScript:
	jumptextfaceplayer ParfumPalaceGarden2MadameText
	
ParfumPalaceGarden2MadameText:
	text "I could have"
	line "sworn I just saw"
	cont "a FURFROU fly by!"
	
	para "But who knows,"
	line "my eyesight isn't"
	cont "that good these"
	cont "days."
	done
	
ParfumPalaceGarden2GardenerText:
	text "Folks with the"
	line "BUG BADGE can use"
	cont "the move CUT to"
	cont "chop down those"
	cont "prickly trees."
	
	para "I had the HM for"
	line "it, but I think I"
	cont "misplaced it…"
	done
	
ParfumPalaceGarden2GardenerFoundText:
	text "Oh, you found my"
	line "CUT HM!"
	
	para "You know what,"
	line "you keep it!"
	done
	
ParfumPalaceGarden2HM01:
	itemball HM_CUT
	
ParfumPalaceGarden2HiddenXSpecial:
	hiddenitem X_SPECIAL, EVENT_PARFUM_PALACE_GARDEN_2_HIDDEN_X_SPECIAL
	
ParfumPalaceGarden2_MapEvents:
	db 0, 0 ; filler
	
	def_warp_events
	
	def_coord_events
	
	def_bg_events
	bg_event 27,  1, BGEVENT_ITEM, ParfumPalaceGarden2HiddenXSpecial
	
	def_object_events
	object_event 41,  1, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, ParfumPalaceGarden2HM01, EVENT_GOT_HM01_CUT
	object_event 34, 14, SPRITE_OFFICER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ParfumPalaceGarden2GardenerScript, -1
	object_event 65,  5, SPRITE_ERIKA, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ParfumPalaceGarden2MadameScript, -1