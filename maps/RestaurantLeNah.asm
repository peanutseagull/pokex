DEF RESTAURANTLENAH_MEALFEE EQU 3000

	object_const_def
	const RESTAURANTLENAH_CHEF
	const RESTAURANTLENAH_WAITER

RestaurantLeNah_MapScripts:
	def_scene_scripts

	def_callbacks

RestaurantLeNahChefScript:
	faceplayer
	; setevent EVENT_RESTAURANT_LE_NAH_WAITER
	opentext
	checkevent EVENT_RESTAURANT_LE_NAH_WAITER
	iffalse .WaiterWaiting
	writetext RestaurantLeNahChefIntroText
	yesorno
	iffalse .SaidNo
	writetext RestaurantLeNahYesText
	yesorno
	iffalse .SaidNo
	checkmoney YOUR_MONEY, PARFUMPALACE_ENTRANCEFEE - 1
	ifequal HAVE_MORE, RestaurantLeNahMeal
	sjump RestaurantLeNahYoureBroke

.SaidNo
	writetext RestaurantLeNahChefGoodbyeText
	waitbutton
	closetext
	end

.WaiterWaiting
	writetext RestaurantLeNahDelightedText
	waitbutton
	closetext
	end

RestaurantLeNahYoureBroke:
	writetext RestaurantLeNahYoureBrokeText
	waitbutton
	writetext RestaurantLeNahChefGoodbyeText
	waitbutton
	closetext
	end

RestaurantLeNahMeal:
	writetext RestaurantLeNahDelightedText
	waitbutton
	closetext
; IDK HOW TO MAKE THEM TELEPORT
	appear RESTAURANTLENAH_WAITER
	clearevent EVENT_RESTAURANT_LE_NAH_WAITER
	end

RestaurantLeNahEntreeScript:
	faceplayer
	; readmem wRestaurantLeNahVictories
	setval 0
	writemem wRestaurantLeNahVictories
	opentext
	writetext RestaurantLeNahEntreeIntroText
	waitbutton
	closetext
	winlosstext RestaurantLeNahEntreeWinText, RestaurantLeNahLossText
	setlasttalked RESTAURANTLENAH_WAITER
	loadtrainer CHEF, ROGER_1
	loadvar VAR_BATTLETYPE, BATTLETYPE_CANLOSE
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	iftrue .EntreeVictory
	sjump .EntreeDefeat

.EntreeVictory
	; readmem wRestaurantLeNahVictories
	addval 1
	writemem wRestaurantLeNahVictories
.EntreeDefeat
; Hmm. You took x turns and had x #MON faint
	opentext
	writetext RestaurantLeNahEnjoyText
	waitbutton
	closetext
	special HealParty
	reloadmap
	opentext
	writetext RestaurantLeNahSoupIntroText
	waitbutton
	closetext
	winlosstext RestaurantLeNahSoupWinText, RestaurantLeNahLossText
	setlasttalked RESTAURANTLENAH_WAITER
	loadtrainer CHEF, ROGER_2
	loadvar VAR_BATTLETYPE, BATTLETYPE_CANLOSE
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	iftrue .SoupVictory
	sjump .SoupDefeat

.SoupVictory
	; readmem wRestaurantLeNahVictories
	addval 1
	writemem wRestaurantLeNahVictories
.SoupDefeat
	opentext
	writetext RestaurantLeNahEnjoyText
	waitbutton
	closetext
	special HealParty
	reloadmap
	opentext
	writetext RestaurantLeNahMainIntroText
	waitbutton
	closetext
	winlosstext RestaurantLeNahMainWinText, RestaurantLeNahLossText
	setlasttalked RESTAURANTLENAH_WAITER
	loadtrainer CHEF, ROGER_3
	loadvar VAR_BATTLETYPE, BATTLETYPE_CANLOSE
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	iftrue .MainVictory
	sjump .MainDefeat

.MainVictory
	; readmem wRestaurantLeNahVictories
	addval 1
	writemem wRestaurantLeNahVictories
.MainDefeat
	opentext
	writetext RestaurantLeNahEnjoyText
	waitbutton
	closetext
	special HealParty
	reloadmap
	opentext
	writetext RestaurantLeNahFinishText
	promptbutton
	; readmem wRestaurantLeNahVictories
	ifequal 0, .NoVictories
	ifequal 1, .OneVictory
	ifequal 2, .TwoVictories
	ifequal 3, .ThreeVictories

.NoVictories
	verbosegiveitem TINYMUSHROOM, $2
	sjump .Finish

.OneVictory
	verbosegiveitem TINYMUSHROOM, $5
	sjump .Finish

.TwoVictories
	verbosegiveitem TINYMUSHROOM, $0a
	sjump .Finish

.ThreeVictories
	verbosegiveitem TINYMUSHROOM, $0f
.Finish
	writetext RestaurantLeNahChefGoodbyeText
	waitbutton
	closetext
	reloadmap
	setevent EVENT_RESTAURANT_LE_NAH_WAITER
	disappear RESTAURANTLENAH_WAITER
	end


RestaurantLeNahChefIntroText:
	text "Welcome to"
	line "RESTAURANT LE NAH."

	para "Our flavours will"
	line "never overwhelm"
	cont "your palate."

	para "Would you like to"
	line "dine?"
	done

RestaurantLeNahChefGoodbyeText:
	text "We're always"
	line "waiting for your"
	cont "next visit."
	done

RestaurantLeNahYesText:
	text "The meal comes to"
	line "¥{d:RESTAURANTLENAH_MEALFEE}."

	para "Will you join us,"
	line "then?"
	done

RestaurantLeNahYoureBrokeText:
	text "Ah, yes, but…"
	line "You do not have"
	cont "that kind of"
	cont "money."

	para "While I appreciate"
	line "your sense of"
	cont "humour, we are"
	cont "running a serious"
	cont "business here…"
	done

RestaurantLeNahDelightedText:
	text "I'm delighted to"
	line "hear it."

	para "Our chef is"
	line "waiting with your"
	cont "entrée at the"
	cont "table behind us."
	done

RestaurantLeNahEntreeIntroText:
	text "Your entrée today…"
	line "A handpicked salad"
	cont "fresh from the"
	cont "garden."

	para "Enjoy."
	done

RestaurantLeNahEntreeWinText:
	text "You certainly know"
	line "how to enjoy your"
	cont "salad!"
	done

RestaurantLeNahLossText:
	text "Well fought!"
	done

RestaurantLeNahEnjoyText:
	text "I hope you enjoy"
	line "the dish."
	done

RestaurantLeNahSoupIntroText:
	text "Your soup…"

	para "Condiments were"
	line "added with great"
	cont "restraint so that"
	cont "you could truly"
	cont "savour its natural"
	cont "flavour."
	done

RestaurantLeNahSoupWinText:
	text "Come back again"
	line "when you've honed"
	cont "your palate enough"
	cont "to appreciate my"
	cont "fine dishes!"
	done

RestaurantLeNahMainIntroText:
	text "Your main course…"

	para "The fish was"
	line "caught just this"
	cont "morning and has"
	cont "been delicately"
	cont "breaded and pan-"
	cont "fried."
	done

RestaurantLeNahMainWinText:
	text "You vaguely remind"
	line "me of SIEBOLD of"
	cont "the ELITE FOUR…"
	done

RestaurantLeNahFinishText:
	text "How did you enjoy"
	line "your meal?"

	para "Here is your"
	line "dessert, and your"
	cont "receipt,"
	cont "of course."

	para "To thank you for"
	line "your visit, here"
	cont "is a small gift."
	done
	
RestaurantLeNahWaitressScript:
	jumptextfaceplayer RestaurantLeNahWaitressText
	
RestaurantLeNahWaitressText:
	text "May I offer you"
	line "some water?"
	
	para "Or does that just"
	line "make you think"
	cont "'Nah'?"
	done
	
RestaurantLeNahBeautyScript:
	jumptextfaceplayer RestaurantLeNahBeautyText
	
RestaurantLeNahBeautyText:
	text "You've got to eat"
	line "every last crumb"
	cont "of food!"
	
	para "If you waste food,"
	line "isn't it way too"
	cont "'mottainai'?"
	
	para "That's what we say"
	line "where I'm from in"
	cont "KANTO!"
	done
	
RestaurantLeNahTouristfScript:
	jumptextfaceplayer RestaurantLeNahTouristfText
	
RestaurantLeNahTouristfText:
	text "Totally averagely"
	line "good?"
	
	para "Is that supposed"
	line "to be a"
	cont "compliment?"
	done
	
RestaurantLeNahTouristmScript:
	jumptextfaceplayer RestaurantLeNahTouristmText
	
RestaurantLeNahTouristmText:
	text "Nah, nah, nah!"
	line "You just don't get"
	cont "it!"
	
	para "It's like totally"
	line "averagely good!"
	done
	
RestaurantLeNahCooltrainermScript:
	jumptextfaceplayer RestaurantLeNahCooltrainermText
	
RestaurantLeNahCooltrainermText:
	text "We eat here very"
	line "day."
	
	para "After all, every"
	line "day is our"
	cont "anniversary!"
	done
	
RestaurantLeNahCooltrainerfScript:
	jumptextfaceplayer RestaurantLeNahCooltrainerfText
	
RestaurantLeNahCooltrainerfText:
	text "The most important"
	line "thing in a Double"
	cont "Battle is the"
	cont "connection between"
	cont "two #MON."
	
	para "Yes, just like the"
	line "connection between"
	cont "him and me…"
	done
	
RestaurantLeNahMorty1Script:
	jumptextfaceplayer RestaurantLeNahMorty1Text
	
RestaurantLeNahMorty1Text:
	text "We're enjoying the"
	line "flavours and the"
	cont "atmosphere."
	
	para "And we're looking"
	line "good while we do"
	cont "it, too."
	done
	
RestaurantLeNahMorty2Script:
	jumptextfaceplayer RestaurantLeNahMorty2Text

RestaurantLeNahMorty2Text:
	text "So we're having a"
	line "meal together as"
	cont "men."
	
	para "Nothing wrong with"
	line "that."
	done
	
RestaurantLeNahGarconScript:
	jumptextfaceplayer RestaurantLeNahGarconText
	
RestaurantLeNahGarconText:
	text "So what if we've"
	line "just got one star?"
	
	para "We'll just have to"
	line "be the best one-"
	cont "star café, then!"
	done

RestaurantLeNah_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  9, 19, LUMIOSE_SOUTHEAST, 15
	warp_event 10, 19, LUMIOSE_SOUTHEAST, 15

	def_coord_events

	def_bg_events

	def_object_events
	object_event  9, 14, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, RestaurantLeNahChefScript, -1
	object_event  7,  3, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, RestaurantLeNahEntreeScript, EVENT_RESTAURANT_LE_NAH_WAITER
	object_event  4,  6, SPRITE_LASS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, RestaurantLeNahWaitressScript, -1
	object_event  1,  9, SPRITE_BEAUTY, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, RestaurantLeNahBeautyScript, -1
	object_event  1, 14, SPRITE_LASS, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, RestaurantLeNahTouristfScript, -1
	object_event  4, 14, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, RestaurantLeNahTouristmScript, -1
	object_event 13,  7, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, RestaurantLeNahCooltrainermScript, -1
	object_event 16,  7, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, RestaurantLeNahCooltrainerfScript, -1
	object_event 13, 12, SPRITE_MORTY, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, RestaurantLeNahMorty1Script, -1
	object_event 16, 12, SPRITE_MORTY, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, RestaurantLeNahMorty2Script, -1
	object_event 17,  1, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, RestaurantLeNahGarconScript, -1