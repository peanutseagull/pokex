	object_const_def
	
ReflectionCave1F_MapScripts:
	def_scene_scripts
	
	def_callbacks
	
TrainerBackpackerLane:
	trainer BACKPACKER, LANE, EVENT_BEAT_BACKPACKER_LANE, BackpackerLaneSeenText, BackpackerLaneBeatenText, 0, .Script
	
.Script:
	endifjustbattled
	opentext
	writetext BackpackerLaneAfterText
	waitbutton
	closetext
	end

BackpackerLaneSeenText:
	text "To tell you the"
	line "truth,"
	
	para "I'm thinking of"
	line "never leaving this"
	cont "place."
	done
	
BackpackerLaneBeatenText:
	text "To tell you the"
	line "truth, I'm not"
	cont "even sure if this"
	cont "place is real!"
	done
	
BackpackerLaneAfterText:
	text "To tell you the"
	line "truth, I'm so"
	cont "enchanted by my"
	cont "reflection here,"
	cont "I'm thinking of"
	cont "never leaving this"
	cont "place!"
	done
	
TrainerBattleGirlHedvig:
	trainer BATTLE_GIRL, HEDVIG, EVENT_BEAT_BATTLE_GIRL_HEDVIG, BattleGirlHedvigSeenText, BattleGirlHedvigBeatenText, 0, .Script
	
.Script:
	endifjustbattled
	opentext
	writetext BattleGirlAfterText
	waitbutton
	closetext
	end

BattleGirlHedvigSeenText:
	text "Mirror, mirror on"
	line "the wall, who's"
	cont "the strongest of"
	cont "them all?"
	done
	
BattleGirlHedvigBeatenText:
	text "So, you're the"
	line "strongest Trainer!"
	done
	
BattleGirlAfterText:
	text "Next, I'm going to"
	line "try challenging my"
	cont "own reflection"
	cont "to see who is"
	cont "stronger!"
	done
	
TrainerCooltrainerMonique:
	trainer COOLTRAINERF, MONIQUE, EVENT_BEAT_COOLTRAINER_MONIQUE, CooltrainerMoniqueSeenText, CooltrainerMoniqueBeatenText, 0, .Script
	
.Script:
	endifjustbattled
	opentext
	writetext CooltrainerMoniqueAfterText
	waitbutton
	closetext
	end

CooltrainerMoniqueSeenText:
	text "ACE TRAINER?"
	line "I don't know about"
	cont "all that."
	
	para "I just love"
	line "#MON!"
	done
	
CooltrainerMoniqueBeatenText:
	text "As a fellow"
	line "#MON lover,"
	cont "you're an ace"
	cont "yourself!"
	done
	
CooltrainerMoniqueAfterText:
	text "My heart is filled"
	line "with my love for"
	cont "#MON!"
	done
	
TrainerHikerDunstan:
	trainer HIKER, DUNSTAN, EVENT_BEAT_HIKER_DUNSTAN, HikerDunstanSeenText, HikerDunstanBeatenText, 0, .Script
	
.Script:
	endifjustbattled
	opentext
	writetext HikerDunstanAfterText
	waitbutton
	closetext
	end

HikerDunstanSeenText:
	text "Whose shadow rests" ; stands
	line "on the walls of"
	cont "REFLECTION CAVE?"
	
	para "'Tis that of a"
	line "HIKER!"
	done
	
HikerDunstanBeatenText:
	text "This battle got my"
	line "clothes in such a"
	cont "disarray!"
	
	para "I'd better use"
	line "this mirror here"
	cont "to tidy up!"
	done
	
HikerDunstanAfterText:
	text "What #MON comes"
	line "to mind for you"
	cont "when you hear the"
	cont "word 'mirror'?"
	
	para "For me, it's"
	line "BRONZOR!"
	done
	
ReflectionCave1FScientistScript:
	jumptextfaceplayer ReflectionCave1FScientistText

ReflectionCave1FScientistText:
	text "There may be more"
	line "than one example"
	cont "of the REVEAL"
	cont "GLASS first found"
	cont "in UNOVA."
	
	para "That's what the"
	line "latest reserach"
	cont "seems to suggest."
	
	para "It's a real"
	line "breakthrough!"
	
	para "Oh, sorry. Didn't"
	line "you know?"
	
	para "A REVEAL GLASS"
	line "is a mirror that"
	cont "has the ability"
	cont "to transform"
	cont "LANDORUS,"
	cont "THUNDURUS, and"
	cont "TORNADUS back to"
	cont "their original"
	cont "forms."
	done

ReflectionCave1FNestBall:
	itemball NEST_BALL
	
ReflectionCave1FRevive:
	itemball REVIVE
	
ReflectionCave1FMoonStone:
	itemball MOON_STONE

ReflectionCave1FBoulder:
	jumpstd StrengthBoulderScript
	
ReflectionCave1F_MapEvents:
	db 0, 0 ; filler
	
	def_warp_events
	warp_event  5, 27, ROUTE_11, 1
	warp_event 39, 39, REFLECTION_CAVE_B1F, 1
	warp_event 43, 13, REFLECTION_CAVE_B1F, 2
	warp_event 39, 11, SHALOUR_CITY, 1
	
	def_coord_events
	
	def_bg_events
	
	def_object_events
	object_event  9, 12, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 3, TrainerBackpackerLane, -1
	object_event 20, 34, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 2, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 2, TrainerBattleGirlHedvig, -1
	object_event 32, 32, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 4, TrainerCooltrainerMonique, -1
	object_event 37, 15, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 2, TrainerHikerDunstan, -1
	object_event 33, 15, SPRITE_SCIENTIST, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ReflectionCave1FScientistScript, -1 ; WOMAN SCIENTIST
	object_event 15,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, ReflectionCave1FNestBall, EVENT_REFLECTION_CAVE_1F_NEST_BALL
	object_event 31, 12, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, ReflectionCave1FRevive, EVENT_REFLECTION_CAVE_1F_REVIVE
	object_event 25, 41, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, ReflectionCave1FMoonStone, EVENT_REFLECTION_CAVE_1F_MOON_STONE
	object_event 39, 19, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ReflectionCave1FBoulder, -1