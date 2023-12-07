	object_const_def
	
Route5West_MapScripts:
	def_scene_scripts
	
	def_callbacks
	
TrainerSkaterFlorin:
	trainer SKATERM, FLORIN, EVENT_BEAT_SKATER_FLORIN, SkaterFlorinSeenText, SkaterFlorinBeatenText, 0, .Script
	
.Script:
	endifjustbattled
	opentext
	writetext SkaterFlorinAfterText
	waitbutton
	closetext
	end
	
TrainerSkaterWinnie:
	trainer SKATERF, WINNIE, EVENT_BEAT_SKATER_WINNIE, SkaterWinnieSeenText, SkaterWinnieBeatenText, 0, .Script
	
.Script:
	endifjustbattled
	opentext
	writetext SkaterWinnieAfterText
	waitbutton
	closetext
	end
	
TrainerRisingStarTyson:
	trainer RISINGSTARM, TYSON, EVENT_BEAT_RISING_STAR_TYSON, RisingStarTysonSeenText, RisingStarTysonBeatenText, 0, .Script
	
.Script:
	endifjustbattled
	opentext
	writetext RisingStarTysonAfterText
	waitbutton
	closetext
	end
	
TrainerBackpackerHeike:
	trainer BACKPACKER, HEIKE, EVENT_BEAT_BACKPACKER_HEIKE, BackpackerHeikeSeenText, BackpackerHeikeBeatenText, 0, .Script
	
.Script:
	endifjustbattled
	opentext
	writetext BackpackerHeikeAfterText
	waitbutton
	closetext
	end
	
TrainerYoungsterKeita:
	trainer YOUNGSTER, KEITA, EVENT_BEAT_YOUNGSTER_KEITA, YoungsterKeitaSeenText, YoungsterKeitaBeatenText, 0, .Script
	
.Script:
	endifjustbattled
	opentext
	writetext YoungsterKeitaAfterText
	waitbutton
	closetext
	end
	
; TrainerYoungsterAnthony:
	; trainer YOUNGSTER, ANTHONY, EVENT_BEAT_YOUNGSTER_ANTHONY, YoungsterAnthonySeenText, YoungsterAnthonyBeatenText, 0, .Script
	
; .Script:
	; endifjustbattled
	; opentext
	; writetext YoungsterAnthonyAfterText
	; waitbutton
	; closetext
	; end
	
YoungsterKeitaSeenText:
	text "Wanna know why I"
	line "always wear shorts"
	cont "through grass?"
	done
	
YoungsterKeitaBeatenText:
	text "Because they're"
	line "comfy and easy"
	cont "to wear!"
	done
	
YoungsterKeitaAfterText:
	text "I really like"
	line "shorts! You should"
	cont "try them sometime!"
	done

BackpackerHeikeSeenText:	
	text "You look like"
	line "a seasoned"
	cont "traveler!"
	
	para "I bet you're"
	line "good at battling,"
	cont "too!"
	done
	
BackpackerHeikeBeatenText:
	text "You're just as"
	line "good as I thought!"
	done
	
BackpackerHeikeAfterText:
	text "Seasoned travelers"
	line "stride with"
	cont "confidence."
	
	para "I can identify"
	line "one at a glance!"
	done
	
RisingStarTysonSeenText:
	text "As long I'm with"
	line "my #MON"
	
	para "I get to meet"
	line "all kinds of"
	cont "people!"
	done
	
RisingStarTysonBeatenText:
	text "Thanks to my"
	line "#MON, I got"
	cont "meet you!"
	done
	
RisingStarTysonAfterText:
	text "Being with #MON"
	line "helps broaden"
	cont "your world!"
	done
	
SkaterFlorinSeenText:
	text "The rules of a"
	line "#MON battle"
	cont "are simple!"
	
	para "Rule One: Battle."
	line "Rule Two: Win!"
	done
	
SkaterFlorinBeatenText:
	text "You followed"
	line "the rules"
	cont "perfectly!"
	done
	
SkaterFlorinAfterText:
	text "ROUTE 5 is our"
	line "street, you"
	cont "know?"
	done
	
SkaterWinnieSeenText:
	text "I'm working on"
	line "some tricks with"
	cont "my #MON!"
	done
	
SkaterWinnieBeatenText:
	text "Gah!"
	done
	
SkaterWinnieAfterText:
	text "I want a trick"
	line "that works in"
	cont "both BUNNELBY's"
	
	para "and SKIDDO's"
	line "cool moves!"
	done
	
Route5XAttack:
	itemball X_ATTACK
	
Route5SharpBeak:
	itemball SHARP_BEAK
	
Route5TM01:
	itemball TM_DYNAMICPUNCH
	
Route5West_MapEvents:
	db 0, 0 ; filler
	
	def_warp_events
	
	def_coord_events
	
	def_bg_events
	
	def_object_events
	object_event 18,  7, SPRITE_ROCKER, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 3, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerSkaterFlorin, -1
	object_event 21,  8, SPRITE_BEAUTY, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 3, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerSkaterWinnie, -1
	object_event 11, 20, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerRisingStarTyson, -1
	object_event  5, 30, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 4, TrainerBackpackerHeike, -1
	object_event  4, 38, SPRITE_YOUNGSTER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerYoungsterKeita, -1
	; object_event 21, 48, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 4, TrainerYoungsterAnthony, -1
	object_event 11, 33, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Route5XAttack, EVENT_ROUTE_5_X_ATTACK
	object_event 21, 42, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Route5SharpBeak, EVENT_ROUTE_5_SHARP_BEAK
	object_event 10, 15, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Route5TM01, EVENT_GOT_TM01_DYNAMICPUNCH
