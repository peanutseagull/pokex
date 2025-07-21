	object_const_def
	
ShabboneauCastleBedroom_MapScripts:
	def_scene_scripts
	
	def_callbacks
	
ShabboneauCastleBedroomBlackBeltScript:
	jumptextfaceplayer ShabboneauCastleBedroomBlackBeltText
	
ShabboneauCastleBedroomBlackBeltText:
	text "Still, I think a"
	line "bridge that can"
	cont "support all 460kg"
	cont "of SNORLAX is"
	cont "pretty darn"
	cont "impressive!"
	
	para "Oh, this is off"
	line "topic, but I'm so"
	cont "grateful for your"
	cont "help."
	
	para "And, you know"
	line "what? I don't"
	cont "care about not"
	cont "having lots of"
	cont "things."
	
	para "You can hoard all"
	line "the stuff you"
	cont "want, but you"
	cont "still can't use"
	cont "it when you're"
	cont "gone…"
	
	para "Oh, and that #"
	line "FLUTE- you keep"
	cont "it, I think it's"
	cont "caused me enough"
	cont "trouble already."
	done
	
ShabboneauCastleBedroom_MapEvents:
	db 0, 0 ; filler
	
	def_warp_events
	warp_event  4,  9, SHABBONEAU_CASTLE_2F, 3
	warp_event  5,  9, SHABBONEAU_CASTLE_2F, 4
	
	def_coord_events
	
	def_bg_events
	
	def_object_events
	object_event  4,  3, SPRITE_BLACK_BELT, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ShabboneauCastleBedroomBlackBeltScript, EVENT_SHABBONEAU_CASTLE_BLACK_BELT