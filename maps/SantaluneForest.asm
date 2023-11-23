	object_const_def
	const SANTALUNEFOREST_POKE_BALL1
	const SANTALUNEFOREST_POKE_BALL2
	const SANTALUNEFOREST_POKE_BALL3
	const SANTALUNEFOREST_POKE_BALL4
	const SANTALUNEFOREST_YOUNGSTER

SantaluneForest_MapScripts:
	def_scene_scripts

	def_callbacks
	
TrainerYoungsterJoey:
	trainer YOUNGSTER, JOEY, EVENT_BEAT_YOUNGSTER_JOEY, YoungsterJoeySeenText, YoungsterJoeyBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext YoungsterJoeyAfterText
	waitbutton
	closetext
	end
	
TrainerLassAnna:
	trainer LASS, ANNA, EVENT_BEAT_LASS_ANNA, LassAnnaSeenText, LassAnnaBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext LassAnnaAfterText
	waitbutton
	closetext
	end
	
TrainerLassLise:
	trainer LASS, LISE, EVENT_BEAT_LASS_LISE, LassLiseSeenText, LassLiseBeatenText, 0, .Script
	
.Script:
	endifjustbattled
	opentext
	writetext LassLiseAfterText
	waitbutton
	closetext
	end

SantaluneForestPotion:
	itemball POTION

SantaluneForestPokeBall:
	itemball POKE_BALL

SantaluneForestAntidote:
	itemball ANTIDOTE

SantaluneForestParlyzHeal:
	itemball PARLYZ_HEAL

SantaluneForestHiddenGreatBall:
	hiddenitem GREAT_BALL, EVENT_SANTALUNE_FOREST_HIDDEN_GREAT_BALL

SantaluneForestHiddenSuperPotion:
	hiddenitem SUPER_POTION, EVENT_SANTALUNE_FOREST_HIDDEN_SUPER_POTION
	
YoungsterJoeySeenText:
	text "Come on team!"
	
	para "Let's beat this"
	line "punk!"
	done

YoungsterJoeyBeatenText:
	text "Cheer up, team."
	line "We lost but we'll"
	cont "win next time!"
	done

YoungsterJoeyAfterText:
	text "Keep many types"
	line "of #MON with"
	cont "you!"
	
	para "You'll never be"
	line "caught off guard!"
	done
	
LassAnnaSeenText:
	text "Your #MON are"
	line "in for a shock!"
	done
	
LassAnnaBeatenText:
	text "Eep! I was the"
	line "one who was"
	cont "shocked!"
	done
	
LassAnnaAfterText:
	text "Not just anyone"
	line "can find Pikachu,"
	cont "okay?"
	
	para "No need to"
	line "compliment me!"
	done

LassLiseSeenText:
	text "The best part of"
	line "#MON battles is"
	cont "that they happen"
	
	para "anytime, with"
	line "anyone, anywhere!"
	done
	
LassLiseBeatenText:
	text "Darn! I've got"
	line "to keep training!"
	done
	
LassLiseAfterText:
	text "Duh! I forgot that"
	line "I can use Potions"
	cont "even DURING battle!"
	done
	
SantaluneForest_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  3, ROUTE_3, 1
	warp_event 19, 47, ROUTE_2_GATE, 3
	warp_event 20, 47, ROUTE_2_GATE, 4
	
	def_coord_events

	def_bg_events
	bg_event 14, 29, BGEVENT_ITEM, SantaluneForestHiddenGreatBall
	bg_event 37, 44, BGEVENT_ITEM, SantaluneForestHiddenSuperPotion
	
	def_object_events
	object_event  2, 25, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SantaluneForestPotion, EVENT_SANTALUNE_FOREST_POTION
	object_event  2, 32, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SantaluneForestPokeBall, EVENT_SANTALUNE_FOREST_POKE_BALL
	object_event 24, 40, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SantaluneForestAntidote, EVENT_SANTALUNE_FOREST_ANTIDOTE
	object_event  2, 40, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SantaluneForestParlyzHeal, EVENT_SANTALUNE_FOREST_PARLYZ_HEAL
	object_event 28,  8, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, TrainerYoungsterJoey, -1
	object_event  8,  6, SPRITE_LASS, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 4, TrainerLassAnna, -1
	object_event 12, 24, SPRITE_LASS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 1, TrainerLassLise, -1