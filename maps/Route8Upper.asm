	object_const_def
	
Route8Upper_MapScripts:
	def_scene_scripts
	
	def_callbacks
	
TrainerRisingStarPaulette:
	trainer RISINGSTARF, PAULETTE, EVENT_BEAT_RISING_STAR_PAULETTE, RisingStarPauletteSeenText, RisingStarPauletteBeatenText, 0, .Script
	
.Script:
	endifjustbattled
	opentext
	writetext RisingStarPauletteAfterText
	waitbutton
	closetext
	end

RisingStarPauletteSeenText:
	text "DREAM BIG is what"
	line "I say!"
	
	para "You're looking"
	line "at the future"
	cont "CHAMPION! Bring"
	cont "it on!!!"
	done
	
RisingStarPauletteBeatenText:
	text "Wha-wha-what?!"
	line "Is that CHAMPION"
	cont "stuff all just a"
	cont "dream?"
	done
; Perhaps that future Champion stuff is all just a dream in the end…

RisingStarPauletteAfterText:
	text "OK. I'll settle"
	line "for being part of"
	cont "the ELITE FOUR!"
	
	para "OK. OK. I'll"
	line "settle for being"
	cont "a GYM LEADER."
	
	para "But then again,"
	line "I did say I"
	cont "should dream big…"
	
	para "Got it! I'll be"
	line "the BEST GYM"
	cont "LEADER ever!"
	done
	
TrainerRisingStarRhys:
	trainer RISINGSTARM, RHYS, EVENT_BEAT_RISING_STAR_RHYS, RisingStarRhysSeenText, RisingStarRhysBeatenText, 0, .Script
	
.Script:
	endifjustbattled
	opentext
	writetext RisingStarRhysAfterText
	waitbutton
	closetext
	end
	
RisingStarRhysSeenText:
	text "According to my"
	line "predictions, this"
	cont "victory is as good"
	cont "as mine!"
	
	para "Now to put them to"
	line "the test!"
	done
	
RisingStarRhysBeatenText:
	text "Hmm… That didn't"
	line "go as it did in"
	cont "my predictions…"
	done
	
RisingStarRhysAfterText:
	text "If I keep up these"
	line "predictions, I'm"
	cont "sure reality will"
	cont "catch up to me"
	cont "eventually!"
	done
	
TrainerBlackBeltCadoc:
	trainer BLACKBELT_T, CADOC, EVENT_BEAT_BLACK_BELT_CADOC, BlackBeltCadocSeenText, BlackBeltCadocBeatenText, BlackBeltCadocAfterText, 0, .Script
	
.Script:
	endifjustbattled
	opentext
	writetext BlackBeltCadocAfterText
	waitbutton
	closetext
	end
	
BlackBeltCadocSeenText:
	text "My MACHOP and I"
	line "walk these paths"
	cont "in our bare feet!"
	
	para "Think you can"
	line "take us on?"
	done

BlackBeltCadocBeatenText:
	text "It appears that"
	line "building a thick"
	cont "skin on one's"
	cont "feet does not"
	cont "make one stronger"
	cont "in battle…"
	done
	
BlackBeltCadocAfterText:
	text "It's great to"
	line "feel the earth"
	cont "between your toes!"
	
	para "Walking around in"
	line "bare feet is the"
	cont "best!"
	done
	
TrainerSkyTrainerHowe:
	trainer SKYTRAINERM, HOWE, EVENT_BEAT_SKY_TRAINER_HOWE, SkyTrainerHoweSeenText, SkyTrainerHoweBeatenText, 0, .Script
	
.Script:
	endifjustbattled
	opentext
	writetext SkyTrainerHoweBeatenText
	waitbutton
	closetext
	end
	
SkyTrainerHoweSeenText:
	text "Care for a SKY"
	line "BATTLE?"
	
	para "We're flying high!"
	line "High as the sky!"
	done
	
SkyTrainerHoweBeatenText:
	text "We're falling down"
	line "to the ground!"
	done

Route8UpperHpUp:
	itemball HP_UP
	
Route8UpperLeafStone:
	itemball LEAF_STONE
	
Route8UpperWaterStone:
	itemball WATER_STONE
	
Route8UpperBoulder:
	jumpstd StrengthBoulderScript
	
Route8Sign:
	jumptext Route8SignText
	
Route8SignText:
	text "ROUTE 8:"
	line "Muraille Coast"
	done
	
Route8HiddenSuperPotion:
	hiddenitem SUPER_POTION, EVENT_ROUTE_8_UPPER_HIDDEN_SUPER_POTION
	
Route8HiddenEscapeRope:
	hiddenitem ESCAPE_ROPE, EVENT_ROUTE_8_UPPER_HIDDEN_ESCAPE_ROPE
	
Route8Upper_MapEvents:
	db 0, 0 ; filler
	
	def_warp_events
	warp_event 24,  7, CONNECTING_CAVE, 3
	
	def_coord_events
	
	def_bg_events
	bg_event  8,  6, BGEVENT_READ, Route8Sign
	bg_event 21,  5, BGEVENT_ITEM, Route8HiddenSuperPotion
	bg_event  9, 40, BGEVENT_ITEM, Route8HiddenEscapeRope
	
	def_object_events
	object_event 16, 26, SPRITE_LASS, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 0, TrainerRisingStarPaulette, -1
	object_event 24, 31, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 0, TrainerRisingStarRhys, -1
	object_event 13, 39, SPRITE_BLACK_BELT, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 0, TrainerBlackBeltCadoc, -1
	object_event 27, 54, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 0, TrainerSkyTrainerHowe, -1
	object_event 12, 18, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Route8UpperHpUp, EVENT_ROUTE_8_UPPER_HP_UP
	object_event 24, 56, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Route8UpperLeafStone, EVENT_ROUTE_8_UPPER_LEAF_STONE
	object_event 19, 38, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Route8UpperWaterStone, EVENT_ROUTE_8_UPPER_WATER_STONE
	object_event 18, 31, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route8UpperBoulder, -1
	object_event 19, 30, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route8UpperBoulder, -1
