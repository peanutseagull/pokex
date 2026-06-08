	object_const_def
	const CYLLAGEBIKESHOP_EMPLOYEE
	
CyllageBikeShop_MapScripts:
	def_scene_scripts
	
	def_callbacks
	
BikeShopEmployee:
	faceplayer
	opentext
	checkevent EVENT_GOT_BICYCLE
	iftrue .AlreadyGotBicycle
	showemote CYLLAGEBIKESHOP_EMPLOYEE, EMOTE_SHOCK, 15
	writetext BikeShopEmployeeQuizText
	yesorno
	iftrue .Correct
.loop
	writetext BikeShopAreYouSureText
	yesorno
	iftrue .Correct
	sjump .loop
.Correct
	playsound SFX_1ST_PLACE
	writetext BikeShopCorrectText
	loadmenu .MenuHeader
	verticalmenu
	closewindow
	ifequal 1, .yellow
	ifequal 2, .green
	
.yellow
	writetext BikeShopChoseYellowText
	setevent EVENT_CHOSE_YELLOW_BICYCLE
	sjump .Continue
.green
	writetext BikeShopChoseGreenText
	setevent EVENT_CHOSE_GREEN_BICYCLE
.Continue
	promptbutton
	verbosegiveitem BICYCLE
	waitbutton
	closetext
	setevent EVENT_GOT_BICYCLE
	end
	
.MenuHeader:	
	db MENU_BACKUP_TILES ; flags	
	menu_coords 0, 0, 9, TEXTBOX_Y	- 7
	dw .MenuData	
	db 1 ; default option	
	
.MenuData:	
	db STATICMENU_CURSOR | STATICMENU_DISABLE_B ; flags	
	db 2 ; items	
	db "YELLOW@"	
	db "GREEN@"	
	
.AlreadyGotBicycle
	checkevent EVENT_CHOSE_GREEN_BICYCLE
	iftrue .chosegreen
	writetext BikeShopChoseYellowText
	waitbutton
	closetext
	end

.chosegreen
	writetext BikeShopChoseGreenText
	waitbutton
	closetext
	end

BikeShopEmployeeQuizText:
	text "Oh! Oh, oh, oh!"
	line "Welcome! Welcome!"
	cont "Right this way!"
	
	para "What timing you"
	line "have! Did you know"
	cont "that you are our"
	cont "10,000…"
	
	para "and first customer"
	line "since we opened"
	cont "shop!"
	
	para "Yes, lucky you!"
	line "You are number"
	cont "10,001!"
	
	para "If you had been"
	line "number 10,000,"
	cont "then you could"
	cont "have gotten a"
	cont "Bicycle for free,"
	cont "but…"
	
	para "As a runner-up,"
	line "you still get the"
	cont "chance to win by"
	cont "answering our quiz"
	cont "correctly!"
	
	para "If you're ready"
	line "then here we go!"
	
	para "Your question is:"
	line "do Bicycles come"
	cont "in more than one"
	cont "colour?"
	done

BikeShopAreYouSureText:
	text "Is that your final"
	line "answer?"
	
	para "Do Bicycles come"
	line "in more than one"
	cont "colour?"
	done
	
BikeShopCorrectText:
	text "Bing-bing-bing!"
	line "You are correct!"
	cont "I'm sure someone"
	cont "like you will love"
	cont "having one of our"
	cont "Bicycles!"
	
	para "Which colour will"
	line "you go for:"
	cont "yellow or green?"
	
	para "It's what you'll"
	line "have for good--"
	cont "choose carefully!"
	done
	
BikeShopChoseYellowText:
	text "A yellow Bicycle!"
	line "That's grand!"
	cont "Now you can zoom"
	cont "all around KALOS!"
	done
	
BikeShopChoseGreenText:
	text "A green Bicycle!"
	line "That's grand!"
	cont "Now you can zoom"
	cont "all around KALOS!"
	done
	
CyllageBikeShopCooltrainerfScript:
	jumptextfaceplayer CyllageBikeShopCooltrainerfText
	
CyllageBikeShopCooltrainerfText:
	text "Do you think I"
	line "could go even"
	cont "faster if I tried"
	cont "riding a Bicycle"
	cont "while wearing"
	cont "Roller Skates?"
	done
	
CyllageBikeShopBeautyScript:
	jumptextfaceplayer CyllageBikeShopBeautyText
	
CyllageBikeShopBeautyText:
	text "Both Bicycles"
	line "and Roller Skates"
	cont "have their unique"
	cont "charms, you know?"
	done
	
CyllageBikeShopBicycle:
	jumptext CyllageBikeShopBicycleText
	
CyllageBikeShopBicycleText:
	text "It's a top-of-the-"
	line "line BICYCLE!"
	done
	
CyllageBikeShop_MapEvents:
	db 0, 0 ; filler
	
	def_warp_events
	warp_event  2,  7, CYLLAGE_CITY, 8
	warp_event  3,  7, CYLLAGE_CITY, 8
	
	def_coord_events
	
	def_bg_events
	bg_event  1,  2, BGEVENT_READ, CyllageBikeShopBicycle
	bg_event  0,  3, BGEVENT_READ, CyllageBikeShopBicycle
	bg_event  1,  3, BGEVENT_READ, CyllageBikeShopBicycle
	bg_event  0,  5, BGEVENT_READ, CyllageBikeShopBicycle
	bg_event  1,  5, BGEVENT_READ, CyllageBikeShopBicycle
	bg_event  0,  6, BGEVENT_READ, CyllageBikeShopBicycle
	bg_event  1,  6, BGEVENT_READ, CyllageBikeShopBicycle
	bg_event  6,  6, BGEVENT_READ, CyllageBikeShopBicycle
	bg_event  7,  6, BGEVENT_READ, CyllageBikeShopBicycle
	
	def_object_events
	object_event  7,  3, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, BikeShopEmployee, -1
	object_event  0,  4, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CyllageBikeShopCooltrainerfScript, -1
	object_event  3,  3, SPRITE_BEAUTY, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CyllageBikeShopBeautyScript, -1