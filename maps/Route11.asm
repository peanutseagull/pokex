	object_const_def
	
Route11_MapScripts:
	def_scene_scripts
	
	def_callbacks
	
Route11HikerScript:
	jumptextfaceplayer Route11HikerText
	
Route11HikerText:
	text "Do you like smooth"
	line "stones?"
	
	para "I think they're"
	line "neat!"
	done
	
TrainerPsychicEmanuel:
	trainer PSYCHIC_T, EMANUEL, EVENT_BEAT_PSYCHIC_EMANUEL, PsychicEmanuelSeenText, PsychicEmanuelBeatenText, 0, .Script
	
.Script
	endifjustbattled
	opentext
	writetext PsychicEmanuelAfterText
	waitbutton
	closetext
	end
	
PsychicEmanuelSeenText:
	text "I use everything"
	line "as a source of my"
	cont "power:"
	
	para "my body,"
	line "my spirit, and"
	cont "my emotions!"
	done
	
PsychicEmanuelBeatenText:
	text "You and your"
	line "#MON were far"
	cont "more powerful than"
	cont "I could have"
	cont "imagined…"
	done
	
PsychicEmanuelAfterText:
	text "I use the power"
	line "from my body,"
	cont "spirit, and"
	cont "emotions to fore-"
	cont "see what tactics"
	cont "my opponents may"
	cont "enjoy!"
	done
	
TrainerSkyTrainerYvette:
	trainer SKYTRAINERF, YVETTE, EVENT_BEAT_SKY_TRAINER_YVETTE, SkyTrainerYvetteSeenText, SkyTrainerYvetteBeatenText, 0, .Script
	
.Script:
	endifjustbattled
	opentext
	writetext SkyTrainerYvetteBeatenText
	waitbutton
	closetext
	end
	
SkyTrainerYvetteSeenText:
	text "Care for a SKY"
	line "BATTLE with a"
	cont "SKY TRAINER?"
	
	para "This suit has"
	line "been specifically"
	cont "designed to reduce"
	cont "wind resistance"
	
	para "Off I go!"
	done
	
SkyTrainerYvetteBeatenText:
	text "It appears that"
	line "the damage"
	cont "resistance was"
	cont "reduced as well!"
	done
	
TrainerBrainsBrawnFrankandsly1:
	trainer BRAINS_BRAWN, FRANKANDSLY1, EVENT_BEAT_BRAINS_BRAWN_FRANK_SLY, BrainsBrawnFrankandslySeenText, BrainsBrawnFrankandslyBeatenText, 0, .Script
	
.Script:
	endifjustbattled
	opentext
	writetext BrainsBrawnFrankAfterText
	waitbutton
	closetext
	end

TrainerBrainsBrawnFrankandsly2:
	trainer BRAINS_BRAWN, FRANKANDSLY2, EVENT_BEAT_BRAINS_BRAWN_FRANK_SLY, BrainsBrawnFrankandslySeenText, BrainsBrawnFrankandslyBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BrainsBrawnSlyAfterText
	waitbutton
	closetext
	end
	
BrainsBrawnFrankandslySeenText:
	text "Hi-yah! Ichi! Ni!"
	line "San! All of my"
	cont "training was for"
	cont "this match"
	
	para "Rah! Huh! Hi-yah!"
	line "Behold the results"
	cont "of my training!"
	done
	
BrainsBrawnFrankandslyBeatenText:
	text "FRANK: Ahh… Ahh…"
	line "Arrrggghhh! Waahh!"
	
	para "SLY: It's going to"
	line "be OK! Don't cry!"
	cont "We did our best!"
	done
	
BrainsBrawnFrankAfterText:
	text "I really need to"
	line "stop crying every"
	cont "time I lose a"
	cont "battle…"
	done
	
BrainsBrawnSlyAfterText:
	text "You only cry"
	line "because #MON"
	cont "battles are so"
	cont "important to you!"
	
	para "That's a good"
	line "thing!"
	done

TrainerBattleGirlGerardine:
	trainer BATTLE_GIRL, GERARDINE, EVENT_BEAT_BATTLE_GIRL_GERARDINE, BattleGirlGerardineSeenText, BattleGirlGerardineBeatenText, 0, .Script
	
.Script:
	endifjustbattled
	opentext
	writetext BattleGirlGerardineAfterText
	waitbutton
	closetext
	end
	
BattleGirlGerardineSeenText:
	text "A BATTLE GIRL's"
	line "power comes from"
	cont "her belt, you"
	cont "know?"
	done
	
BattleGirlGerardineBeatenText:
	text "Gotta keep my belt"
	line "tied tight, or I"
	cont "can't unleash my"
	cont "true power!"
	done
	
BattleGirlGerardineAfterText:
	text "With an EXPERT"
	line "BELT, super-"
	cont "effective moves do"
	cont "20 percent more"
	cont "damage!"
	cont "Cool, huh?"
	
	para "That's not all!"
	line "With a BLACK BELT,"
	cont "FIGHTING-type"
	cont "moves do 20"
	cont "percent more"
	cont "damage! Belts"
	cont "rule!"
	done
	
Route11BackpackerScript:
	jumptextfaceplayer Route11BackpackerText
	
Route11BackpackerText:
	text "There sure are a"
	line "lot of mysterious"
	cont "stones in the"
	cont "KALOS region."
	done	

Route11HyperPotion:
	itemball HYPER_POTION
	
; Route11Tm69:
	; itemball TM_ROCK_POLISH ; TM69
	
Route11FruitTree:
	fruittree FRUITTREE_ROUTE_11
	
Route11HiddenSuperPotion:
	hiddenitem SUPER_POTION, EVENT_ROUTE_11_HIDDEN_SUPER_POTION
	
Route11HiddenThunderstone:
	hiddenitem THUNDERSTONE, EVENT_ROUTE_11_HIDDEN_THUNDERSTONE
	
Route11Sign:
	jumptext Route11SignText
	
Route11SignText:
	text "ROUTE 11:"
	line "Miroir Way"
	done
	
Route11TrainerTipsSign:
	jumptext Route11TrainerTipsSignText
	
Route11TrainerTipsSignText:
	text "TRAINER TIPS:"
	
	para "When catching a"
	line "#MON, sometimes"
	cont "the #BALL you"
	cont "throw will rock"
	cont "only once."
	
	para "This is called a"
	line "critical capture,"
	cont "and the more"
	cont "#MON you catch,"
	cont "the more likely it"
	cont "will occur."
	done
	
; SycamoreCallsYou:
	; text "Hello there!"
	; line "Looks like you've"
	; cont "almost made it to"
	; cont "SHALOUR CITY!"
	
	; para "That's fantastic!"
	; line "It looks like your"
	; cont "journey with your"
	; cont "#MON around the"
	; cont "KALOS region is"
	; cont "going swimmingly!"
	
	; para "I wanted to tell"
	; line "you about a person"
	; cont "in SHALOUR who"
	; cont "knows a great deal"
	; cont "about MEGA"
	; cont "EVOLUTION."
	
	; para "People call him"
	; line "the MEGA EVOLUTION"
	; cont "guru."
	
	; para "I've told everyone"
	; line "else about him,"
	; cont "so if you have a"
	; cont "second, you should"
	; cont "give him a visit!"
	; done
	
Route11_MapEvents:
	db 0, 0 ; filler
	
	def_warp_events
	warp_event 22,  5, REFLECTION_CAVE_1F, 1
	
	def_coord_events
	
	def_bg_events
	bg_event 13, 13, BGEVENT_ITEM, Route11HiddenSuperPotion
	bg_event 45, 17, BGEVENT_ITEM, Route11HiddenThunderstone
	bg_event  5,  9, BGEVENT_READ, Route11Sign
	bg_event 17,  7, BGEVENT_READ, Route11TrainerTipsSign
	
	def_object_events
	object_event  3, 14, SPRITE_FISHER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, Route11HikerScript, -1
	object_event  8, 13, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 4, TrainerPsychicEmanuel, -1
	object_event 18, 17, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 2, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 3, TrainerBattleGirlGerardine, -1
	object_event 21,  9, SPRITE_BLACK_BELT, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 0, TrainerBrainsBrawnFrankandsly1, -1
	object_event 21, 10, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 0, TrainerBrainsBrawnFrankandsly2, -1
	object_event 43,  8, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 0, TrainerSkyTrainerYvette, -1
	object_event 24,  7, SPRITE_FISHER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route11BackpackerScript, -1
	object_event 25, 20, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Route11HyperPotion, EVENT_ROUTE_11_HYPER_POTION
	; object_event  9,  6, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Route11Tm69, EVENT_GOT_TM69_ROCK_POLISH
	object_event 11, 11, SPRITE_FRUIT_TREE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route11FruitTree, -1