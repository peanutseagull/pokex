	object_const_def

CafeClasse_MapScripts:
	def_scene_scripts

	def_callbacks
	
; Implement as menu like in Pokemon X? This works just as well though
CafeClasseErikaScript:
	faceplayer
	opentext
	writetext CafeClasseErikaText
	yesorno ; You bet/Not really...
	iftrue .Yes
	writetext CafeClasseErikaNoText
	waitbutton
	closetext
	end
	
.Yes:
	writetext CafeClasseErikaYesText
	waitbutton
	closetext
	end
	
CafeClasseBeautyScript:
	jumptextfaceplayer CafeClasseBeautyText
	
CafeClasseCooltrainerfScript:
	jumptextfaceplayer CafeClasseCooltrainerfText
	
CafeClasseFletchlingScript:
	jumptextfaceplayer CafeClasseFletchlingText
	
CafeClasseWaitressScript:
	jumptextfaceplayer CafeClasseWaitressText
	
CafeClasseWaitressText:
	text "You can be"
	line "fashionable no"
	cont "matter what type"
	cont "of body you have."
	
	para "So I enjoy both"
	line "fashion and food!"
	done
	
CafeClasseFletchlingText:
	text "FLETCHLING: Chi-"
	line "chi-chiirp!"
	done
	
CafeClasseCooltrainerfText:
	text "I always want to"
	line "wear the same"
	cont "things as my"
	cont "#MON."
	
	para "So I have several"
	line "of the same"
	cont "outfit."
	done
	
CafeClasseBeautyText:
	text "Don't ever doubt"
	line "yourself because"
	cont "of what people"
	cont "say or because of"
	cont "the times!"
	done	
	
CafeClasseErikaText:
	text "Aren't you not"
	line "DYING to not know"
	cont "the line-ups of"
	cont "various boutiques"
	cont "around KALOS?"
	done
	
CafeClasseErikaNoText:
	text "Oh, OK. Come by"
	line "again when you"
	cont "don't want to"
	cont "not know about"
	cont "one."
	done
	
CafeClasseErikaYesText:
	text "SANTALUNE CITY's"
	line "boutique is known"
	cont "for its hats! All"
	cont "different kinds!"
	
	para "Whereas, LUMIOSE"
	line "has ALL the"
	cont "classiest items."
	
	para "CYLLAGE CITY, on"
	line "the other hand,"
	cont "definitely caters"
	cont "to the sporty"
	cont "crowd."
	
	para "And yet, LAVERRE"
	line "also excels in"
	cont "the comfortable,"
	cont "casual fit."
	
	para "On the contrary,"
	line "ANISTAR CITY has"
	cont "ALL the hottest,"
	cont "latest street"
	cont "fashions!"
	
	para "Oppositely,"
	line "SNOWBELLE is the"
	cont "best for basic"
	cont "items PERFECT to"
	cont "mix and match!"
	
	para "Hope this helps!"
	line "Come back any"
	cont "time!"
	done

CafeClasse_MapEvents:	
	db 0, 0 ; filler
	
	def_warp_events
	warp_event  6,  7, VERNAL_AVENUE, 15
	warp_event  7,  7, VERNAL_AVENUE, 16

	def_coord_events

	def_bg_events

	def_object_events
	object_event  2,  3, SPRITE_ERIKA, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CafeClasseErikaScript, -1
	object_event  4,  2, SPRITE_BEAUTY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CafeClasseBeautyScript, -1
	object_event 10,  6, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CafeClasseCooltrainerfScript, -1
	object_event 11,  6, SPRITE_BIRD, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CafeClasseFletchlingScript, -1
	object_event  7,  3, SPRITE_BEAUTY, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CafeClasseWaitressScript, -1