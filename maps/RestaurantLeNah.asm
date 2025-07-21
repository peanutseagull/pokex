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
	verbosegiveitem TINYMUSHROOM, $a
	sjump .Finish

.ThreeVictories
	verbosegiveitem TINYMUSHROOM, $f
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