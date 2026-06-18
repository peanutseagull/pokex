	object_const_def
	const REFLECTIONCAVEB1F_TIERNO
	
ReflectionCaveB1F_MapScripts:
	def_scene_scripts
	scene_script ReflectionCaveB1FNoop1Scene, SCENE_REFLECTIONCAVEB1F_TIERNO
	scene_script ReflectionCaveB1FNoop2Scene, SCENE_REFLECTIONCAVEB1F_NOOP
	
	def_callbacks
	
ReflectionCaveB1FNoop1Scene:
	end

ReflectionCaveB1FNoop2Scene:
	end
	
ReflectionCaveB1FTierno1:
	showemote REFLECTIONCAVEB1F_TIERNO, EMOTE_SHOCK, 15
	special FadeOutMusic
	turnobject REFLECTIONCAVEB1F_TIERNO, UP
	opentext
	writetext ReflectionCaveB1FTiernoText1
	waitbutton
	closetext
	applymovement REFLECTIONCAVEB1F_TIERNO, ReflectionCaveB1FTiernoApproaches1
	playmusic MUSIC_RIVAL_ENCOUNTER
	opentext
	writetext ReflectionCaveB1FTiernoText2
	promptbutton
	verbosegiveitem HM_FLASH ; TM70
	writetext ReflectionCaveB1FTiernoText3
	waitbutton
	closetext
	winlosstext ReflectionCaveB1FTiernoWinText, ReflectionCaveB1FTiernoLossText
	setlasttalked REFLECTIONCAVEB1F_TIERNO
	loadtrainer TIERNO, TIERNO_2
	loadvar VAR_BATTLETYPE, BATTLETYPE_CANLOSE
	startbattle
	dontrestartmapmusic
	reloadmap
	iftrue .AfterVictorious
	sjump .AfterYourDefeat
.AfterVictorious:
	playmusic MUSIC_RIVAL_AFTER
	opentext
	writetext ReflectionCaveB1FTierno_YouWonText
	waitbutton
	closetext
	sjump .FinishRival

.AfterYourDefeat:
	playmusic MUSIC_RIVAL_AFTER
	opentext
	writetext ReflectionCaveB1FTierno_YouLostText
	waitbutton
	closetext
.FinishRival:
	applymovement REFLECTIONCAVEB1F_TIERNO, ReflectionCaveB1FTiernoLeavesMovement
	disappear REFLECTIONCAVEB1F_TIERNO
	setevent EVENT_REFLECTION_CAVE_B1F_TIERNO
	setscene SCENE_REFLECTIONCAVEB1F_NOOP
	special HealParty
	playmapmusic
	end
	
ReflectionCaveB1FTierno2:
	showemote REFLECTIONCAVEB1F_TIERNO, EMOTE_SHOCK, 15
	special FadeOutMusic
	turnobject REFLECTIONCAVEB1F_TIERNO, UP
	opentext
	writetext ReflectionCaveB1FTiernoText1
	waitbutton
	closetext
	applymovement REFLECTIONCAVEB1F_TIERNO, ReflectionCaveB1FTiernoApproaches2
	playmusic MUSIC_RIVAL_ENCOUNTER
	opentext
	writetext ReflectionCaveB1FTiernoText2
	promptbutton
	verbosegiveitem HM_FLASH ; TM70
	writetext ReflectionCaveB1FTiernoText3
	waitbutton
	closetext
	winlosstext ReflectionCaveB1FTiernoWinText, ReflectionCaveB1FTiernoLossText
	setlasttalked REFLECTIONCAVEB1F_TIERNO
	loadtrainer TIERNO, TIERNO_2
	loadvar VAR_BATTLETYPE, BATTLETYPE_CANLOSE
	startbattle
	dontrestartmapmusic
	reloadmap
	iftrue .AfterVictorious
	sjump .AfterYourDefeat
.AfterVictorious:
	playmusic MUSIC_RIVAL_AFTER
	opentext
	writetext ReflectionCaveB1FTierno_YouWonText
	waitbutton
	closetext
	sjump .FinishRival

.AfterYourDefeat:
	playmusic MUSIC_RIVAL_AFTER
	opentext
	writetext ReflectionCaveB1FTierno_YouLostText
	waitbutton
	closetext
.FinishRival:
	applymovement REFLECTIONCAVEB1F_TIERNO, ReflectionCaveB1FTiernoLeavesMovement
	disappear REFLECTIONCAVEB1F_TIERNO
	setevent EVENT_REFLECTION_CAVE_B1F_TIERNO
	setscene SCENE_REFLECTIONCAVEB1F_NOOP
	special HealParty
	playmapmusic
	end	
	
ReflectionCaveB1FTiernoText1:
	text "Hey, <PLAYER>!"
	done
	
ReflectionCaveB1FTiernoText2:
	text "If you use the"
	line "move FLASH, not as"
	cont "many wild #MON"
	cont "will turn up."
	
	para "You should try it!"
	done

ReflectionCaveB1FTiernoText3:
	text "I kinda depend on"
	line "FLASH."
	
	para "I'm still not very"
	line "good at battling,"
	cont "so I keep running"
	cont "into trouble…"
	
	para "I sure wish I"
	line "could be as good"
	cont "as you."
	
	para "I've got an idea!"
	line "Why don't we see"
	cont "just how good you"
	cont "have gotten?"
	
	para "Let's battle!!!"
	done
	
ReflectionCaveB1FTiernoWinText:
	text "Wow! I definitely"
	line "have to train"
	cont "harder!"
	done
	
ReflectionCaveB1FTierno_YouWonText:
	text "You're amazing,"
	line "<PLAYER>!"
	
	para "I'll get you next"
	line "time!"
	
	para "Anyway, I need"
	line "to go look for"
	cont "TREVOR."
	
	para "I'll see you"
	line "around!"
	done
	
ReflectionCaveB1FTiernoLossText:
	text "Hey! I'm not as"
	line "bad as I thought!"
	done
	
ReflectionCaveB1FTierno_YouLostText:
	text "That was so fun!"
	line "Let's battle again"
	cont "sometime soon!"
	
	para "Anyway, I need"
	line "to go look for"
	cont "TREVOR."
	
	para "I'll see you"
	line "around!"
	done
	
ReflectionCaveB1FTiernoApproaches1:
	step UP
	step UP
	step_end
	
ReflectionCaveB1FTiernoApproaches2:
	step RIGHT
	step UP
	step UP
	step_end
	
ReflectionCaveB1FTiernoLeavesMovement:
	step DOWN
	step DOWN
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step_end
	
ReflectionCaveB1FBreederScript:
	jumptextfaceplayer ReflectionCaveB1FBreederText
	
ReflectionCaveB1FBreederText:
	text "Before deciding"
	line "whether to go back"
	cont "or press onward,"
	cont "make sure to check"
	cont "the condition of"
	cont "your #MON."
	done
	
TrainerTouristMonami:
	trainer TOURISTF, MONAMI, EVENT_BEAT_TOURIST_MONAMI, TouristMonamiSeenText, TouristMonamiBeatenText, 0, .Script
	
.Script:
	endifjustbattled
	opentext
	writetext TouristMonamiAfterText
	waitbutton
	closetext
	end
	
TouristMonamiSeenText:
	text "I left my darling"
	line "fiancé behind and"
	cont "came over here all"
	cont "by myself."
	done
	
TouristMonamiBeatenText:
	text "Ooh, you're so"
	line "strong!"
	
	para "Perhaps even"
	line "stronger than my"
	cont "fiancé."
	done
	
TouristMonamiAfterText:
	text "I like to leave"
	line "my fiancé behind"
	cont "and wander off by"
	cont "myself sometimes."
	
	para "He's so cute when"
	line "he's scared!"
	done
	
TrainerBlackBeltIgor:
	trainer BLACKBELT_T, IGOR, EVENT_BEAT_BLACK_BELT_IGOR, BlackBeltIgorSeenText, BlackBeltIgorBeatenText, 0, .Script
	
.Script:
	endifjustbattled
	opentext
	writetext BlackBeltIgorAfterText
	waitbutton
	closetext
	end
	
BlackBeltIgorSeenText:
	text "BATTLE!"
	done
	
BlackBeltIgorBeatenText:
	text "DESPAIR!"
	done
	
BlackBeltIgorAfterText:
	text "TRAIN!"
	done
	
TrainerPsychicFranz:
	trainer PSYCHIC_T, FRANZ, EVENT_BEAT_PSYCHIC_FRANZ, PsychicFranzSeenText, PsychicFranzBeatenText, 0, .Script
	
.Script:
	endifjustbattled
	opentext
	writetext PsychicFranzAfterText
	waitbutton
	closetext
	end

PsychicFranzSeenText:
	text "Mirrors have" ; Since ancient times
	line "always possessed"
	cont "a kind of mystical"
	cont "power."
	
	para "I will take"
	line "advantage of that"
	cont "power and use it"
	cont "to defeat you!"
	done
	
PsychicFranzBeatenText:
	text "The mystical power"
	line "bounced back and"
	cont "defeated me"
	cont "instead!"
	done
	
PsychicFranzAfterText:
	text "One look at your"
	line "#MON, and I can"
	cont "tell what kind of"
	cont "Trainer you are…"
	
	para "You might say that"
	line "#MON are a sort"
	cont "of mirror to their"
	cont "Trainers."
	done

TrainerTouristHaruto:
	trainer TOURISTM, HARUTO, EVENT_BEAT_TOURIST_HARUTO, TouristHarutoSeenText, TouristHarutoBeatenText, 0, .Script
	
.Script:
	endifjustbattled
	opentext
	writetext TouristHarutoAfterText
	waitbutton
	closetext
	end

TouristHarutoSeenText:
	text "Oh no… Just where"
	line "has my darling"
	cont "gone off to?"
	cont "Sob…"
	done
	
TouristHarutoBeatenText:
	text "I… I can't win"
	line "without my"
	cont "darling! Sob…"
	done
	
TouristHarutoAfterText:
	text "I'm completely"
	line "lost without my"
	cont "darling! Sob…"
	done

TrainerHoneymoonersYuuandami1:
	trainer HONEYMOONERS, YUUANDAMI1, EVENT_BEAT_HONEYMOONERS_YUU_AMI, HoneymoonersYuuandamiSeenText, HoneymoonersYuuandamiBeatenText, 0, .Script
	
.Script:
	endifjustbattled
	opentext
	writetext HoneymoonersAmiAfterText
	waitbutton
	closetext
	end

TrainerHoneymoonersYuuandami2:
	trainer HONEYMOONERS, YUUANDAMI2, EVENT_BEAT_HONEYMOONERS_YUU_AMI, HoneymoonersYuuandamiSeenText, HoneymoonersYuuandamiBeatenText, 0, .Script
	
.Script:
	endifjustbattled
	opentext
	writetext HoneymoonersYuuAfterText
	waitbutton
	closetext
	end
	
HoneymoonersYuuandamiSeenText:
	text "What do you think,"
	line "honey?"
	
	para "Should we share"
	line "our happiness" ; some of
	cont "with this young"
	cont "Trainer?"
	
	para "Do we really look"
	line "so happy? Hmm…"
	done

HoneymoonersYuuandamiBeatenText:
	text "YUU: I don't mind"
	line "if I lose! As long"
	cont "as I'm with my"
	cont "darling, I feel"
	cont "like I'm on top"
	cont "of the world!"
	
	para "AMI: Well… I"
	line "suppose I am"
	cont "rather happy."
	done

HoneymoonersYuuAfterText:
	text "My #MON on one"
	line "side and my wife"
	cont "on the other."
	
	para "I tell you, life"
	line "doesn't get much"
	cont "better than this!"
	done

HoneymoonersAmiAfterText:
	text "Is it selfish of"
	line "me to not be"
	cont "satisfied with"
	cont "what I have?"
	done

TrainerCooltrainerEmil:
	trainer COOLTRAINERM, EMIL, EVENT_BEAT_COOLTRAINER_EMIL, CooltrainerEmilSeenText, CooltrainerEmilBeatenText, 0, .Script
	
.Script:
	endifjustbattled
	opentext
	writetext CooltrainerEmilAfterText
	waitbutton
	closetext
	end

CooltrainerEmilSeenText:
	text "My only desire is"
	line "to brighten my"
	cont "#MON's day by"
	cont "defeating you in"
	cont "battle!"
	done
	
CooltrainerEmilBeatenText:
	text "I've made my"
	line "#MON sad…"
	
	para "It's all my"
	line "fault! I'm too"
	cont "weak…"
	done
	
CooltrainerEmilAfterText:
	text "Here's a tip for"
	line "you!"
	
	para "Go down the hill"
	line "up ahead, and"
	cont "you'll return to"
	cont "ROUTE 11."
	done

ReflectionCaveB1FIron:
	itemball IRON
	
ReflectionCaveB1FHyperPotion:
	itemball HYPER_POTION
	
ReflectionCaveB1FBlackBelt:
	itemball BLACKBELT_I
	
ReflectionCaveB1FEscapeRope:
	itemball ESCAPE_ROPE
	
ReflectionCaveB1F_MapEvents:
	db 0, 0 ; filler
	
	def_warp_events
	warp_event  3, 23, REFLECTION_CAVE_1F, 2
	warp_event  9,  3, REFLECTION_CAVE_1F, 3
	warp_event  5, 11, REFLECTION_CAVE_B2F, 1
	
	def_coord_events
	coord_event 18, 34, SCENE_REFLECTIONCAVEB1F_TIERNO, ReflectionCaveB1FTierno1
	coord_event 19, 34, SCENE_REFLECTIONCAVEB1F_TIERNO, ReflectionCaveB1FTierno2
	
	def_bg_events
	
	def_object_events
	object_event 18, 37, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_REFLECTION_CAVE_B1F_TIERNO
	object_event  6, 21, SPRITE_TEACHER, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ReflectionCaveB1FBreederScript, -1
	object_event 20, 27, SPRITE_BEAUTY, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerTouristMonami, -1
	object_event 31, 42, SPRITE_BLACK_BELT, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 2, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerBlackBeltIgor, -1
	object_event 39, 32, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 1, TrainerPsychicFranz, -1
	object_event 37, 11, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 2, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerTouristHaruto, -1
	object_event 29,  2, SPRITE_BEAUTY, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 0, TrainerHoneymoonersYuuandami1, -1
	object_event 28,  2, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 0, TrainerHoneymoonersYuuandami2, -1
	object_event 19,  4, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerCooltrainerEmil, -1
	object_event 11,  2, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, ReflectionCaveB1FIron, EVENT_REFLECTION_CAVE_B1F_IRON
	object_event 41,  2, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, ReflectionCaveB1FHyperPotion, EVENT_REFLECTION_CAVE_B1F_HYPER_POTION
	object_event 21, 23, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, ReflectionCaveB1FBlackBelt, EVENT_REFLECTION_CAVE_B1F_BLACK_BELT
	object_event 32, 37, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, ReflectionCaveB1FEscapeRope, EVENT_REFLECTION_CAVE_B1F_ESCAPE_ROPE