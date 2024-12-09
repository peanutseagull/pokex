DEF PARFUMPALACE_ENTRANCEFEE EQU 1000

	object_const_def
	const PARFUMPALACEOUTSIDE_GENTLEMAN1
	const PARFUMPALACEOUTSIDE_GENTLEMAN2
	const PARFUMPALACEOUTSIDE_POKE_BALL
	
ParfumPalaceOutside_MapScripts:
	def_scene_scripts
	
	def_callbacks
	
ParfumPalaceOutsideGentlemanScript:
	checkevent EVENT_PAID_PARFUM_ENTRANCE_FEE
	iftrue .paid
	opentext
	writetext Text_ParfumEntranceFee
	promptbutton
	checkmoney YOUR_MONEY, PARFUMPALACE_ENTRANCEFEE - 1
	ifequal HAVE_MORE, ParfumPalaceOutsideMoneyTaken
	sjump ParfumPalaceOutsideYoureBroke
	
.paid:
ParfumPalaceOutsideGentlemanAfterScript:
	jumptextfaceplayer Text_ParfumPalaceOutsideMaintainText
	
ParfumPalaceOutsideMoneyTaken:
	takemoney YOUR_MONEY, PARFUMPALACE_ENTRANCEFEE
	writetext Text_ParfumPalaceOutsideGentlemanThankyouText
	waitbutton
	closetext
	applymovement PARFUMPALACEOUTSIDE_GENTLEMAN1, ParfumPalaceGentlemanMovesAway_Movement
	clearevent EVENT_HAVENT_PAID_PARFUM_ENTRANCE_FEE
	setevent EVENT_PAID_PARFUM_ENTRANCE_FEE
	turnobject PARFUMPALACEOUTSIDE_GENTLEMAN1, LEFT
	end
	
ParfumPalaceOutsideYoureBroke:
	writetext Text_ParfumPalaceOutsideSorryNotEnough
	waitbutton
	closetext
	end
	
ParfumPalaceGentlemanMovesAway_Movement:
	step RIGHT
	step_end
	
Text_ParfumEntranceFee:
	text "The entrance fee"
	line "will be ¥{d:PARFUMPALACE_ENTRANCEFEE}."
	
	para "The proceeds from"
	line "the entrance fee"
	cont "help maintain the"
	cont "palace."
	
	para "Probably…"	
	done
	
Text_ParfumPalaceOutsideMaintainText:
	text "The proceeds from"
	line "the entrance fee"
	cont "help maintain the"
	cont "palace."
	
	para "Probably…"	
	done
	
Text_ParfumPalaceOutsideSorryNotEnough:
	text "Sorry, we're not"
	line "in the business"
	cont "of doing charity"
	cont "work."
	
	para "Come back another"
	line "time."
	done
	
Text_ParfumPalaceOutsideGentlemanThankyouText:
	text "Thank you kindly."
	done
	
ParfumPalaceOutsidePokefanfScript:
	faceplayer
	opentext
	checkevent EVENT_PARFUM_PALACE_OUTSIDE_BERRY
	iftrue .AlreadyGotItem
	writetext ParfumPalaceOutsidePokefanfBerryText
	promptbutton
	verbosegiveitem BERRY ; ORAN_BERRY?
	writetext ParfumPalaceOutsidePokefanfGotText
	waitbutton
	closetext
	setevent EVENT_PARFUM_PALACE_OUTSIDE_BERRY
	end
	
.AlreadyGotItem:
	writetext ParfumPalaceOutsidePokefanfGotText
	waitbutton
	closetext
	end
	
ParfumPalaceOutsidePunkGuyScript:
	jumptextfaceplayer ParfumPalaceOutsidePunkGuyText
	
ParfumPalaceOutsideTouristfScript:
	jumptextfaceplayer ParfumPalaceOutsideTouristfText
	
ParfumPalaceOutsideTouristfText:
	text "I'd love to live"
	line "in that kind of"
	cont "palace!"
	done
	
ParfumPalaceOutsideTouristmScript:
	jumptextfaceplayer ParfumPalaceOutsideTouristmText
	
ParfumPalaceOutsideTouristmText:
	text "I wonder how much"
	line "money it takes to"
	cont "build a palace…"
	
	para "It both amazes"
	line "and disgusts me,"
	cont "to be honest…"
	done
	
ParfumPalaceOutsidePunkGuyText:
	text "Tch! Are old"
	line "buildings more"
	cont "important than"
	cont "people alive now?"
	
	para "We've got more"
	line "important things"
	cont "to worry about…"
	done
	
ParfumPalaceOutsidePokefanfBerryText:
	text "Hey, Trainer!"
	line "Yes, you there!"
	
	para "I'll share this"
	line "BERRY with you!"
	done
	
ParfumPalaceOutsidePokefanfGotText:
	text "A BERRY will help"
	line "your #MON"
	cont "recover strength!"
	
	para "You can even give"
	line "it to them to"
	cont "hold!"
	done
	
ParfumPalaceSign:
	jumptext ParfumPalaceSignText
	
ParfumPalaceSignText:
	text "PARFUM PALACE"
	done
	
ParfumPalaceOutsideEther:
	itemball ETHER
	
ParfumPalaceOutside_MapEvents:
	db 0, 0 ; filler
	
	def_warp_events
	warp_event 30,  7, PARFUM_PALACE_1F, 1
	
	def_coord_events
	
	def_bg_events
	bg_event 31,  9, BGEVENT_READ, ParfumPalaceSign
		
	def_object_events
	object_event 30,  8, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ParfumPalaceOutsideGentlemanScript, EVENT_PAID_PARFUM_ENTRANCE_FEE 
	object_event 31,  8, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ParfumPalaceOutsideGentlemanAfterScript, EVENT_HAVENT_PAID_PARFUM_ENTRANCE_FEE
	object_event  5, 10, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, ParfumPalaceOutsideEther, EVENT_PARFUM_PALACE_OUTSIDE_ETHER
	object_event 29, 16, SPRITE_POKEFAN_F, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ParfumPalaceOutsidePokefanfScript, -1
	object_event 18, 10, SPRITE_BIKER, SPRITEMOVEDATA_WANDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ParfumPalaceOutsidePunkGuyScript, -1
	object_event 39, 11, SPRITE_BEAUTY, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ParfumPalaceOutsideTouristfScript, -1
	object_event 40, 11, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ParfumPalaceOutsideTouristmScript, -1