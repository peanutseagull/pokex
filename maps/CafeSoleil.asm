	object_const_def
	const CAFESOLEIL_COOLTRAINER_F
	const CAFESOLEIL_CLAIR
	const CAFESOLEIL_LANCE
	
CafeSoleil_MapScripts:
	def_scene_scripts
	scene_script CafeSoleilNoop1Scene, SCENE_CAFESOLEIL_LYSANDRE
	scene_script CafeSoleilNoop2Scene, SCENE_CAFESOLEIL_NOOP
	
	def_callbacks
	
CafeSoleilNoop1Scene:
	end
	
CafeSoleilNoop2Scene:
	end
	
CafeSoleilLysandreScene:
	showemote EMOTE_SHOCK, CAFESOLEIL_COOLTRAINER_F, 15
	showemote EMOTE_SHOCK, PLAYER, 15
	applymovement CAFESOLEIL_COOLTRAINER_F, CafeSoleilStepForward
	opentext
	writetext CafeSoleilText1
	waitbutton
	closetext
	turnobject CAFESOLEIL_CLAIR, DOWN
	turnobject CAFESOLEIL_LANCE, DOWN
	opentext
	writetext CafeSoleilText2
	waitbutton
	closetext
	applymovement CAFESOLEIL_LANCE, CafeSoleilLysandreExits
	disappear CAFESOLEIL_LANCE
	opentext
	writetext CafeSoleilText3
	waitbutton
	closetext
	applymovement CAFESOLEIL_CLAIR, CafeSoleilDianthaExits
	disappear CAFESOLEIL_CLAIR
	turnobject CAFESOLEIL_COOLTRAINER_F, RIGHT
	turnobject PLAYER, LEFT
	opentext
	writetext CafeSoleilText4
	waitbutton
	closetext
	applymovement CAFESOLEIL_COOLTRAINER_F, CafeSoleilSerenaExits
	disappear CAFESOLEIL_COOLTRAINER_F
	setscene SCENE_CAFESOLEIL_NOOP
	setevent EVENT_CAFE_SOLEIL_LYSANDRE
	setevent EVENT_TREVOR_LUMIOSE_SOUTH
	end
	
CafeSoleilText1:
	text "SERENA: Oh, it's"
	line "LYSANDRE and..."
	
	para "Is that DIANTHA?"
	
	para "LYSANDRE is the"
	line "head of Lysandre"
	cont "Labs,"
	
	para "which created the"
	line "#gear."
	
	para "You know DIANTHA,"
	line "right? She's a"
	cont "famous movie star."
	
	para "I wonder what"
	line "they're doing"
	cont "here together..."
	
	para "LYSANDRE: Beauty"
	line "is such a fragile"
	cont "thing..."
	
	para "You always played"
	line "youthful roles."
	
	para "Wouldn't it be"
	line "better to remain"
	cont "beautiful forever?"
	
	para "To continue to"
	line "play those roles?"
	
	para "DIANTHA: What a"
	line "strange question.."
	
	para "Why would I want"
	line "to play the same"
	cont "old roles forever?"
	
	para "There is more to"
	line "life than youth"
	cont "and beauty."
	
	para "Everything in life"
	line "changes. I want to"
	cont "live and change."
	
	para "LYSANDRE: Isn't it"
	line "your duty to be"
	cont "ever beautiful?"
	
	para "As a movie star?"
	
	para "Beauty should"
	line "stay beautiful"
	cont "forever."
	
	para "I would make the"
	line "world unchanging"
	cont "and eternal,"
	
	para "so all beauty will"
	line "last forever."
	
	para "I can't stand the"
	line "thought..."
	
	para "of the world"
	line "deteriorating."
	done
	
CafeSoleilText2:
	text "Oh. Hello,"
	line "<PLAYER>."
	
	para "DIANTHA here is"
	line "an accomplished"
	cont "actress..."

	para "That is, she"
	line "strives to make"
	cont "others happier."
	
	para "If others were"
	line "more like her..."
	
	para "What a beautiful"
	line "world it would be."
	
	para "If you'll excuse"
	line "me..."
	done
	
CafeSoleilText3:
	text "DIANTHA: And who"
	line "are you two?"
	
	para "SERENA: My name"
	line "is SERENA, and"
	line "this is..."
	
	para "DIANTHA: <PLAYER>,"
	line "right?"
	
	para "You both have"
	line "lovely names."
	
	para "Oh, and you're"
	line "both #MON"
	cont "trainers!"
	
	para "How wonderful!"
	
	para "I'm a trainer"
	line "myself, in my"
	cont "off time."
	
	para "Hopefully we can"
	line "battle someday!"
	done
	
CafeSoleilText4:
	text "SERENA: Hmm..."
	
	para "I guess #MON"
	line "trainers battle"
	cont "everyone,"
	
	para "no matter who"
	line "they are."
	
	para "Oh, that's right!"
	line "I have something"
	cont "to ask you!"
	
	para "Would you be"
	line "willing to compete"
	cont "with me?"
	
	para "To see who will"
	line "become stronger?"
	
	para "We're neighbours,"
	line "after all, and I"
	cont "think it'd be fun!"
	
	para "Just so you know,"
	line "I won't lose"
	cont "though!"
	
	para "Anyway, I should"
	line "be off! See ya!"
	done
	
CafeSoleilLysandreExits:
	step DOWN
	step LEFT
	step LEFT
	step DOWN
	step DOWN
	step RIGHT
	step DOWN
	step_end
	
CafeSoleilDianthaExits:
	step LEFT
	step DOWN
	step DOWN
	step DOWN
	step RIGHT
	step DOWN
	step_end
	
CafeSoleilSerenaExits:
	step DOWN
	step DOWN
	step_end
	
CafeSoleilStepForward:
	step UP
	step_end
	
CafeSoleil_MapEvents:
	db 0, 0 ; filler
	
	def_warp_events
	warp_event  6,  7, LUMIOSE_SOUTHWEST, 4
	warp_event  7,  7, LUMIOSE_SOUTHWEST, 4
	
	def_coord_events
	coord_event  7,  6, SCENE_CAFESOLEIL_LYSANDRE, CafeSoleilLysandreScene
	
	def_bg_events
	
	def_object_events
	object_event  6,  7, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_CAFE_SOLEIL_LYSANDRE
	object_event  6,  4, SPRITE_CLAIR, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_CAFE_SOLEIL_LYSANDRE
	object_event  7,  4, SPRITE_LANCE, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_CAFE_SOLEIL_LYSANDRE
