	object_const_def
	
Route6_MapScripts:
	def_scene_scripts
	
	def_callbacks

Route6Sign:
	jumptext Route6SignText
	
Route6SignText:
	text "ROUTE 6:"
	line "Palais Lane"
	done
	
TrainerTouristHiroko:
	trainer TOURIST_LADY, HIROKO, EVENT_BEAT_TOURIST_HIROKO, TouristHirokoSeenText, TouristHirokoBeatenText, 0, .Script
	
.Script:
	endifjustbattled
	opentext
	writetext TouristHirokoAfterText
	waitbutton
	closetext
	end
	
TrainerTouristEriko:
	trainer TOURIST_LADY, ERIKO, EVENT_BEAT_TOURIST_ERIKO, TouristErikoSeenText, TouristErikoBeatenText, 0, .Script
	
.Script:
	endifjustbattled
	opentext
	writetext TouristErikoAfterText
	waitbutton
	closetext
	end
	
TrainerPokefanFamilyJanErin1:
	trainer POKEFAN_FAMILY, JANANDERIN1, EVENT_BEAT_POKEFAN_FAMILY_JAN_ERIN, PokefanFamilyJanErinSeenText, PokefanFamilyJanErinBeatenText, 0, .Script
	
.Script:
	endifjustbattled
	opentext
	writetext PokefanFamilyJanAfterText
	waitbutton
	closetext
	end
	
TrainerPokefanFamilyJanErin2:
	trainer POKEFAN_FAMILY, JANANDERIN2, EVENT_BEAT_POKEFAN_FAMILY_JAN_ERIN, PokefanFamilyJanErinSeenText, PokefanFamilyJanErinBeatenText, 0, .Script
	
.Script:
	endifjustbattled
	opentext
	writetext PokefanFamilyErinAfterText
	waitbutton
	closetext
	end
	
TrainerBeautyBrigitte:
	trainer BEAUTY, BRIGITTE, EVENT_BEAT_BEAUTY_BRIGITTE, BeautyBrigitteSeenText, BeautyBrigitteBeatenText, 0, .Script
	
.Script:
	endifjustbattled
	opentext
	writetext BeautyBrigitteAfterText
	waitbutton
	closetext
	end
	
TrainerYoungsterTyler:
	trainer YOUNGSTER, TYLER, EVENT_BEAT_YOUNGSTER_TYLER, YoungsterTylerSeenText, YoungsterTylerBeatenText, 0, .Script
	
.Script:
	endifjustbattled
	opentext
	writetext YoungsterTylerAfterText
	waitbutton
	closetext
	end
	
TrainerBackpackerRoderick:
	trainer BACKPACKER, RODERICK, EVENT_BEAT_BACKPACKER_RODERICK, BackpackerRoderickSeenText, BackpackerRoderickBeatenText, 0, .Script
	
.Script:
	endifjustbattled
	opentext
	writetext BackpackerRoderickAfterText
	waitbutton
	closetext
	end
	
TrainerBackpackerJerome:
	trainer BACKPACKER, JEROME, EVENT_BEAT_BACKPACKER_JEROME, BackpackerJeromeSeenText, BackpackerJeromeBeatenText, 0, .Script
	
.Script:
	endifjustbattled
	opentext
	writetext BackpackerJeromeAfterText
	waitbutton
	closetext
	end
	
TrainerTouristTakemi:
	trainer TOURISTM, TAKEMI, EVENT_BEAT_TOURIST_TAKEMI, TouristTakemiSeenText, TouristTakemiBeatenText, 0, .Script
	
.Script:
	endifjustbattled
	opentext
	writetext TouristTakemiAfterText
	waitbutton
	closetext
	end
	
TrainerTouristMari:
	trainer TOURISTF, MARI, EVENT_BEAT_TOURIST_MARI, TouristMariSeenText, TouristMariBeatenText, 0, .Script
	
.Script:
	endifjustbattled
	opentext
	writetext TouristMariAfterText
	waitbutton
	closetext
	end
	
TrainerYoungsterJacob:
	trainer YOUNGSTER, JACOB, EVENT_BEAT_YOUNGSTER_JACOB, YoungsterJacobSeenText, YoungsterJacobBeatenText, 0, .Script
	
.Script:
	endifjustbattled
	opentext
	writetext YoungsterJacobAfterText
	waitbutton
	closetext
	end
	
YoungsterJacobSeenText:
	text "Today I begin my"
	line "path to becoming"
	cont "CHAMPION!"
	
	para "I'll start off"
	line "by defeating you!"
	done
	
YoungsterJacobBeatenText:
	text "Hmm…"
	line "Maybe I should"
	cont "start tomorrow."
	done

YoungsterJacobAfterText:
	text "I'll be CHAMPION"
	line "someday…"
	cont "You'll see!"
	done
	
TouristMariSeenText:
	text "I wanna see all"
	line "that KALOS has to"
	cont "offer!"
	
	para "Come on-- bring"
	line "out your #MON!"
	done
	
TouristMariBeatenText:
	text "Wow! You're"
	line "amazing! Are you"
	cont "famous here?"
	done
	
TouristMariAfterText:
	text "They should write"
	line "about you in a"
	cont "travel guidebook!"
	done
	
TouristTakemiSeenText:
	text "Think you can"
	line "beat a man at his"
	cont "peak happiness?"
	
	para "Think again!"
	done
	
TouristTakemiBeatenText:
	text "A little defeat"
	line "can't get me"
	para "down!"
	
	para "I'm on my"
	line "honeymoon, after"
	cont "all!"
	done
	
TouristTakemiAfterText:
	text "A tree-lined lane"
	line "is the perfect"
	cont "spot to pledge"
	cont "dedication to a"
	cont "lover!"
	done
	
BackpackerJeromeSeenText:
	text "This here tall"
	line "grass is taller"
	cont "than I am!"
	
	para "Yer tellin' me"
	line "there're #MON"
	cont "lurkin' in here?"
	done

BackpackerJeromeBeatenText:
	text "Bwa ha ha! I love"
	line "findin' Trainers"
	cont "stronger than me!"
	
	para "Gives me a lil"
	line "somethin' to work"
	cont "toward!"
	done
	
BackpackerJeromeAfterText:
	text "I'm gonna keep"
	line "travellin' this"
	cont "wide world and"
	cont "become stronger."
	done
	
BackpackerRoderickSeenText:
	text "I came all the"
	line "way from UNOVA to"
	cont "see PARFUM PALACE"
	done
	
BackpackerRoderickBeatenText:
	text "Man… Talk about"
	line "culture shock…"
	done
	
BackpackerRoderickAfterText:
	text "I tell ya, you"
	line "really need to"
	cont "see the world to"
	cont "understand it."
	done

YoungsterTylerSeenText:
	text "Zoom! Zoom! Zoom!"
	line "With my shorts, I"
	cont "can run like the"
	cont "wind!"
	done
	
YoungsterTylerBeatenText:
	text "You may have"
	line "defeated me, but"
	cont "no one can stop"
	cont "me from running!"
	
	para "Zoom!"
	done
	
YoungsterTylerAfterText:
	text "Zoom! Zoom! Zoom!"
	
	para "Secret training"
	line "in the grass!"
	
	para "DODUO ain't got"
	line "nothin' on me!"
	done
	
BeautyBrigitteSeenText:
	text "Let's start a"
	line "secret battle in"
	cont "the tall grass!"
	done
	
BeautyBrigitteBeatenText:
	text "Oh, you're very"
	line "strong. What a"
	cont "surprise!"
	done
	
BeautyBrigitteAfterText:
	text "Why do I wrap"
	line "myself in tall"
	cont "grass?"
	
	para "Because I want to"
	line "be a #MON!"
	done
	
PokefanFamilyJanErinSeenText:
	text "JAN: Har har har!"
	line "I can see it on"
	cont "your face!"
	
	para "I can feel it in"
	line "the air around"
	cont "you!"
	
	para "You're a trainer"
	line "who loves #MON!"

	para "ERIN: Tee hee!"
	line "Come join us for"
	cont "a #MON battle!"
	
	para "You'll love your"
	line "#MON even more"
	cont "when we're done!"
	done
	
PokefanFamilyJanErinBeatenText:
	text "ERIN: Now I'm"
	line "head over heels"
	cont "for your #MON!"
	
	para "JAN: Har har har!"
	line "You're the best,"
	cont "my FURFROU!"
	done
	
PokefanFamilyJanAfterText:
	text "We are competing"
	line "over which one of"
	cont "us loves our"
	cont "FURFROU the most!"
	
	para "I think we're"
	line "pretty even at"
	cont "this point!"
	done
	
PokefanFamilyErinAfterText:
	text "When it comes to"
	line "who loves their"
	cont "#MON more,"
	
	para "I'm afraid I'm in"
	line "the lead over my"
	cont "husband!"
	
	para "Only by one"
	line "point, though!"
	done
	
TouristErikoSeenText:
	text "Why do I travel?"
	line "Why do I battle?"
	cont "Let me show you!"
	done
	
TouristErikoBeatenText:
	text "Did you see your"
	line "#MON smile"
	cont "just now?"
	done
	
TouristErikoAfterText:
	text "I travel around"
	line "the world,"
	
	para "because I just"
	line "love seeing"
	cont "#MON smile!"
	done
	
TouristHirokoSeenText:
	text "I bet you thought"
	line "I was just some"
	cont "Tourist! Hah!"
	
	para "I happen to be a"
	line "seasoned battler,"
	cont "too!"
	done
	
TouristHirokoBeatenText:
	text "Wha-what?!"
	done
	
TouristHirokoAfterText:
	text "I wish I could"
	line "take your #MON"
	cont "home with me!"
	
	para "Just joking! I"
	line "couldn't separate"
	cont "you and your"
	cont "#MON!"
	done
	
Route6BackpackerScript:
	jumptextfaceplayer Route6BackpackerText

Route6BackpackerText:
	text "The Palais Lane"
	line "actually has two"
	cont "different faces."
	
	para "One is this easy"
	line "stroll here, and"
	cont "the other is…"
	
	para "Well… I guess"
	line "you'll find out"
	cont "on your way back."
	done
	
Route6SuperRepel:
	itemball SUPER_REPEL
	
Route6Antidote:
	itemball ANTIDOTE
	
Route6Awakening:
	itemball AWAKENING
	
Route6XSpecial:
	itemball X_SPECIAL
	
Route6UltraBall:
	itemball ULTRA_BALL
	
Route6Tm06:
	itemball TM_TOXIC
	
; Route6XSpeed:
	; itemball X_SPEED
	
Route6HiddenAntidote:
	hiddenitem ANTIDOTE, EVENT_ROUTE_6_HIDDEN_ANTIDOTE
	
Route6HiddenTinyMushroom:
	hiddenitem TINYMUSHROOM, EVENT_ROUTE_6_HIDDEN_TINY_MUSHROOM
	
; Route6Antidote:
	; itemball ANTIDOTE

; Route6FruitTree:
	; fruittree FRUITTREE_ROUTE_6
	
Route6_MapEvents:
	db 0, 0 ; filler
	
	def_warp_events
	
	def_coord_events
	
	def_bg_events
	bg_event 33, 41, BGEVENT_READ, Route6Sign
	bg_event 25, 10, BGEVENT_ITEM, Route6HiddenAntidote
	bg_event 56, 26, BGEVENT_ITEM, Route6HiddenTinyMushroom
	
	def_object_events
	object_event  0,  6, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Route6SuperRepel, EVENT_ROUTE_6_SUPER_REPEL
	object_event 14,  5, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Route6Awakening, EVENT_ROUTE_6_AWAKENING
	object_event 12, 47, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Route6XSpecial, EVENT_ROUTE_6_X_SPECIAL
	object_event  0, 45, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Route6UltraBall, EVENT_ROUTE_6_ULTRA_BALL
	object_event 40, 34, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Route6Tm06, EVENT_GOT_TM_06
	object_event 33, 43, SPRITE_FISHER, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route6BackpackerScript, -1
	object_event 32, 33, SPRITE_TEACHER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 5, TrainerTouristHiroko, -1
	object_event 27, 17, SPRITE_TEACHER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 5, TrainerTouristEriko, -1
	object_event  4,  3, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 1, TrainerPokefanFamilyJanErin1, -1
	object_event  4,  4, SPRITE_POKEFAN_F, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 1, TrainerPokefanFamilyJanErin2, -1
	object_event  2, 11, SPRITE_BEAUTY, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 4, TrainerBeautyBrigitte, -1
	object_event  2, 29, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 3, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerYoungsterTyler, -1
	object_event 10, 38, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerBackpackerRoderick, -1
	object_event 44, 24, SPRITE_BEAUTY, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerTouristMari, -1
	object_event 48, 12, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerBackpackerJerome, -1
	object_event 54, 22, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerTouristTakemi, -1
	object_event 58, 38, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerYoungsterJacob, -1
	; object_event 59, 13, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Route6Antidote, EVENT_ROUTE_6_ANTIDOTE
	; object_event 40, 20, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Route6XSpeed, EVENT_ROUTE_6_X_SPEED
	; object_event  2, 17, SPRITE_FRUIT_TREE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route6FruitTree, -1