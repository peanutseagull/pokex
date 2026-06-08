DEF CYLLAGECITY_SODAPOPPRICE EQU 300
DEF CYLLAGECITY_DOZENSODAPOPSPRICE EQU 3600

	object_const_def
	const CYLLAGECITY_GRANT
	
CyllageCity_MapScripts:
	def_scene_scripts
	
	def_callbacks
	
CyllageCityGrantScript:
	showemote PLAYER, EMOTE_SHOCK, 15
	opentext
	writetext CyllageCityGrantText1
	promptbutton
	verbosegiveitem HM_STRENGTH
	writetext CyllageCityGrantText2
	waitbutton
	closetext
	setevent EVENT_CYLLAGE_CITY_GRANT
	applymovement CYLLAGECITY_GRANT, GrantLeavesMovement
	disappear CYLLAGECITY_GRANT
	reloadmap
	end
	
GrantLeavesMovement:
	turn_head RIGHT
	step RIGHT
	step RIGHT
	step UP
	step_end
	
CyllageCityGrantText1:
	text "GRANT: Oh dear…"
	line "If you're here for"
	cont "the Bicycle race,"
	cont "I'm afraid you're"
	cont "too late."
	
	para "The race is over,"
	line "and I took first"
	cont "place."
	
	para "I feel bad that"
	line "you missed it."
	
	para "Here-- allow me to"
	line "give you this in"
	cont "consolation."
	done
	
CyllageCityGrantText2:
	text "If one of your"
	line "#MON uses the"
	cont "move, it will be"
	cont "able to push large"
	cont "rocks around."
	
	para "However, if you"
	line "want to use the"
	cont "move outside of"
	cont "battle, you'll"
	cont "first need a Badge"
	cont "from my Gym."
	
	para "Come challenge me"
	line "at your leisure."
	done
	
CyllageCityLassScript:
	jumptextfaceplayer CyllageCityLassText
	
CyllageCityLassText:
	text "I always think"
	line "very carefully"
	cont "about which #"
	cont "BALL I use when"
	cont "trying to catch a"
	cont "new #MON!"
	done
	
CyllageCityCooltrainerfScript:
	jumptextfaceplayer CyllageCityCooltrainerfText
	
CyllageCityCooltrainerfText:
	text "It's always so"
	line "hard for me to"
	cont "decide what items"
	cont "to give to my"
	cont "#MON…"
	
	para "Do I give them"
	line "something to boost"
	cont "their strengths?"
	
	para "Or something to"
	line "cover for their"
	cont "weaknesses?"
	done
	
CyllageCityYoungster1Script:
	jumptextfaceplayer CyllageCityYoungster1Text
	
CyllageCityYoungster1Text:
	text "I'm gonna get"
	line "better and then"
	cont "climb the TOWER OF"
	cont "MASTERY in SHALOUR"
	cont "CITY!"
	
	para "But first-- I'm"
	line "off to defeat"
	cont "GRANT!"
	done
	
; CyllageCityYoungster2Script:
	; jumptextfaceplayer CyllageCityYoungster2Text
	
; CyllageCityYoungster2Text:
	; text "Whether on the"
	; line "back of a #MON"
	; cont "or on a Bicycle,"
	; cont "I just love to"
	; cont "ride!"
	; done
	
CyllageCityBiker1Script:
	jumptextfaceplayer CyllageCityBiker1Text
	
CyllageCityBiker1Text:
	text "No luck fishing?"
	line "Try another spot!"
	
	para "Move not very"
	line "effective?"
	cont "Try another one!"
	
	para "When things don't"
	line "go well, it's"
	cont "always a good idea"
	cont "to try something"
	cont "else."
	done

CyllageCityBiker2Script:
	jumptextfaceplayer CyllageCityBiker2Text
	
CyllageCityBiker2Text:
	text "In a Bicycle race,"
	line "I have to work"
	cont "with my teammates"
	cont "to seize victory."
	
	para "It's a bit like"
	line "the relationship"
	cont "between a Trainer"
	cont "and a #MON."
	done
	
CyllageCityBiker3Script:
	jumptextfaceplayer CyllageCityBiker3Text
	
CyllageCityBiker3Text:
	text "I love being"
	line "connected with the"
	cont "HOLO CASTER."
	
	para "It feels good to"
	line "always be up to"
	cont "date on the latest"
	cont "and greatest news."
	done
	
; CyllageCityBlackBeltScript:
	; jumptextfaceplayer CyllageCityBlackBeltText
	
; CyllageCityBlackBeltText:
	; ; text "You'll find the"
	; ; line "GYM LEADER in this"
	; ; cont "city at the top of"
	; ; cont "that hill there!"
	
	; text "I may have lost to"
	; line "GRANT in the"
	; cont "Bicycle race,"
	
	; para "but I'll get my"
	; line "revenge in a"
	; cont "#MON battle!"
	; done
	
CyllageCitySodaPopLadyScript:
	faceplayer
	opentext
	writetext CyllageCityOffersSodaPopText
	loadmenu .BuySodaPopMenu
	verticalmenu
	closewindow
	ifequal 1, .one
	ifequal 2, .dozen
	ifequal 3, .refuse
	iffalse .refuse
	
.one
	checkmoney YOUR_MONEY, CYLLAGECITY_SODAPOPPRICE - 1
	ifequal HAVE_LESS, CyllageCityYoureBroke
	takemoney YOUR_MONEY, CYLLAGECITY_SODAPOPPRICE
	writetext CyllageCityBoughtOneSodaPopText
	promptbutton
	verbosegiveitem SODA_POP
	sjump .refuse
	
.dozen
	checkmoney YOUR_MONEY, CYLLAGECITY_DOZENSODAPOPSPRICE - 1 
	ifequal HAVE_LESS, CyllageCityYoureBroke
	takemoney YOUR_MONEY, CYLLAGECITY_DOZENSODAPOPSPRICE
	writetext CyllageCityBoughtDozenText
	promptbutton
	verbosegiveitem SODA_POP, $0c
.refuse
	writetext CyllageCityRefusedSodaPopText
	waitbutton
	closetext
	end
	
.BuySodaPopMenu:
	db MENU_BACKUP_TILES ; flags
	menu_coords 5, 0, 19, TEXTBOX_Y - 5
	dw .MenuData
	db 1 ; default option

.MenuData:
	db STATICMENU_CURSOR ; flags
	db 3 ; items
	db "One, please.@"
	db "A dozen!@"
	db "I'll pass.@"
	
CyllageCityYoureBroke:
	writetext CyllageCityYoureBrokeText
	promptbutton
	writetext CyllageCityRefusedSodaPopText
	waitbutton
	closetext
	end
	
CyllageCityOffersSodaPopText:
	text "Hello there!"
	
	para "Could I tempt you"
	line "with some super-"
	cont "refreshing SODA"
	cont "POP?"
	
	para "Only ¥{d:CYLLAGECITY_SODAPOPPRICE} a"
	line "bottle!"
	cont "How about it?"
	done
	
CyllageCityBoughtOneSodaPopText:
	text "Here's your SODA"
	line "POP! Enjoy!"
	done
	
CyllageCityBoughtDozenText:
	text "OK! Twelve bottles"
	line "of SODA POP!"
	cont "Enjoy!"
	done
	
CyllageCityRefusedSodaPopText:
	text "I'll be here, so"
	line "come back anytime"
	cont "you'd like some"
	cont "tasty SODA POP!"
	done
	
CyllageCityYoureBrokeText:
	text "Sorry, but I'm"
	line "not running a"
	cont "charity here!"
	done
	
CyllageCitySign:
	jumptext CyllageCitySignText
	
CyllageBoutiqueSignText:
	text "CYLLAGE BOUTIQUE"
	done
	
CyllageBoutiqueSign:
	jumptext CyllageBoutiqueSignText	

CyllageCitySignText:
	text "CYLLAGE CITY:"
	line "The city of"
	cont "peaceful strolls."
	done

CyllageTrainerTipsSign:
	jumptext CyllageTrainerTipsSignText
	
CyllageTrainerTipsSignText:
	text "TRAINER TIPS!"
	line "To teach a #MON"
	cont "a move from a TM,"
	cont "open your bag and"
	cont "go to the TM/HM"
	cont "pocket."
	
	para "Choose the TM that"
	line "contains the move"
	cont "you want to teach"
	cont "your #MON."
	
	para "Once you've done"
	line "that, you'll be"
	cont "able to select a"
	cont "#MON that can"
	cont "learn the move."
	
	para "All that's left is"
	line "to confirm your"
	cont "selection,"
	
	para "and your #MON"
	line "will learn the"
	cont "move!"
	done

CyllageCityPokecenterSign:
	jumpstd PokecenterSignScript
	
CyllageCityMartSign:
	jumpstd MartSignScript
	
CyllageCitySuperPotion:
	itemball SUPER_POTION

CyllageCityXDefend:
	itemball X_DEFEND
	
CyllageCityXSpecial:
	itemball X_SPECIAL
	
CyllageCityHiddenEther:
	hiddenitem ETHER, EVENT_CYLLAGE_CITY_HIDDEN_ETHER
	
CyllageCityHiddenXSpeed:
	hiddenitem X_SPEED, EVENT_CYLLAGE_CITY_HIDDEN_X_SPEED
	
CyllageCityHiddenProtein:
	hiddenitem PROTEIN, EVENT_CYLLAGE_CITY_HIDDEN_PROTEIN
	
CyllageCityHiddenPearl:
	hiddenitem PEARL, EVENT_CYLLAGE_CITY_HIDDEN_PEARL
	
CyllageCityRock:
	jumpstd SmashRockScript
	
CyllageCity_MapEvents:
	db 0, 0 ; filler
	
	def_warp_events
	warp_event 27, 23, CYLLAGE_POKECENTER_1F, 1
	warp_event 33, 37, CYLLAGE_MART, 2
	warp_event 39, 35, CYLLAGE_HOUSE_1, 1
	warp_event 25, 29, CYLLAGE_HOUSE_2, 1
	warp_event 23, 23, CYLLAGE_HOUSE_3, 1
	warp_event 23, 17, CYLLAGE_HOUSE_4, 1
	warp_event  6, 35, CYLLAGE_SURF_HOUSE, 1
	warp_event 33, 23, CYLLAGE_BIKE_SHOP, 1
	warp_event 31, 13, CYLLAGE_BOUTIQUE, 1
	warp_event 25,  9, HOTEL_CYLLAGE_1F, 1
	warp_event 21,  7, CYLLAGE_CAFE, 1
	warp_event 46, 29, CYLLAGE_GYM, 1
	warp_event 46, 11, CONNECTING_CAVE, 4
	
	def_coord_events
	
	def_bg_events
	bg_event 33, 29, BGEVENT_READ, CyllageCitySign
	bg_event 34, 37, BGEVENT_READ, CyllageCityMartSign
	bg_event 28, 23, BGEVENT_READ, CyllageCityPokecenterSign
	bg_event 32, 14, BGEVENT_READ, CyllageBoutiqueSign
	bg_event 23,  9, BGEVENT_READ, CyllageTrainerTipsSign
	bg_event 36, 30, BGEVENT_ITEM, CyllageCityHiddenEther
	bg_event 33,  3, BGEVENT_ITEM, CyllageCityHiddenXSpeed
	bg_event 47, 32, BGEVENT_ITEM, CyllageCityHiddenProtein
	bg_event  5, 14, BGEVENT_ITEM, CyllageCityHiddenPearl
	
	def_object_events
	object_event 44, 30, SPRITE_ROCKER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, CyllageCityGrantScript, EVENT_CYLLAGE_CITY_GRANT
	object_event 37,  6, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, CyllageCitySuperPotion, EVENT_CYLLAGE_CITY_SUPER_POTION
	object_event 47, 35, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, CyllageCityXDefend, EVENT_CYLLAGE_CITY_X_DEFEND
	object_event 39,  6, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, CyllageCityXSpecial, EVENT_CYLLAGE_CITY_X_SPECIAL
	object_event  9, 21, SPRITE_LASS, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, CyllageCityLassScript, -1
	object_event 21, 11, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, CyllageCityCooltrainerfScript, -1
	object_event 16,  5, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, CyllageCityYoungster1Script, -1
	; object_event 32, 26, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, CyllageCityYoungster2Script, -1
	object_event 21, 36, SPRITE_BIKER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CyllageCityBiker1Script, -1
	object_event 31,  2, SPRITE_BIKER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CyllageCityBiker2Script, -1
	object_event 37, 14, SPRITE_BIKER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CyllageCityBiker3Script, -1
	; object_event 27, 36, SPRITE_BLACK_BELT, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CyllageCityBlackBeltScript, -1
	object_event 33, 17, SPRITE_BEAUTY, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CyllageCitySodaPopLadyScript, -1
	object_event 17, 24, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CyllageCityRock, -1
	object_event 15, 17, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CyllageCityRock, -1
	object_event  8,  3, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CyllageCityRock, -1
	object_event  5,  7, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CyllageCityRock, -1
