	object_const_def
	const HOTELCAMPHRIER2F_MRBONDING
	
HotelCamphrier2F_MapScripts:
	def_scene_scripts
	
	def_callbacks
	
HotelCamphrier2FMrBondingScript:
	faceplayer
	opentext
	writetext HotelCamphrier2FMrBondingIntroText
	yesorno
	iffalse .NoExplanation
	writetext HotelCamphrier2FMrBondingExplanationText
	sjump .Continue
	
.NoExplanation
	writetext HotelCamphrier2FMrBondingNoExplanationText
.Continue
	promptbutton
	writetext HotelCamphrier2FItsBondingTimeText
	promptbutton
	reloadmap
	opentext
	writetext HotelCamphrier2FMrBondingLeavesText
	waitbutton
	closetext
	setevent EVENT_MR_BONDING_CAMPHRIER
	disappear HOTELCAMPHRIER2F_MRBONDING
	reloadmap
	end

HotelCamphrier2FMrBondingIntroText:
	text "Hey!"
	
	para "Hey, how's it"
	line "going, friend?"
	
	para "I'm MR. BONDING,"
	line "the expert on O-"
	cont "POWERS."
	
	para "Let me ask you"
	line "just in case!"
	
	para "Do you need an"
	line "explanation about"
	cont "O-POWERS?"
	done
	
HotelCamphrier2FMrBondingExplanationText:
	text "O-POWERS!"
	line "They're mysterious"
	cont "forces!"
	
	para "If you use them,"
	line "good things will"
	cont "happen."
	
	para "Some allow you to"
	line "share good things"
	cont "with friends too!"
	
	para "They're wondrous"
	line "things that"
	cont "nurture bonds!"
	done
	
HotelCamphrier2FMrBondingNoExplanationText:
	text "Hey!"
	line "That's my friend!"
	done

HotelCamphrier2FItsBondingTimeText:
	text "Let's get started,"
	line "shall we?"
	
	para "It's bonding time!"
	done
	
HotelCamphrier2FMrBondingLeavesText:
	text "Well then, I do"
	line "believe I shall"
	cont "take my leave"
	cont "right about now."
	
	para "Hope to see you"
	line "around!"
	done
	
; HotelCamphrier2FReceivedOPowerText:
	; text "You received an"
	; line "O-POWER from MR."
	; cont "BONDING."
	
	; para You can now use Sp. Atk Power Lv. 1
	; done
	
HotelCamphrier2F_MapEvents:
	db 0, 0 ; filler
	
	def_warp_events
	warp_event  1,  0, HOTEL_CAMPHRIER_1F, 3
	
	def_coord_events
	
	def_bg_events
	
	def_object_events
	object_event 15, 10, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, HotelCamphrier2FMrBondingScript, EVENT_MR_BONDING_CAMPHRIER
	