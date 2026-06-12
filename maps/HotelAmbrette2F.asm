	object_const_def
	const HOTELAMBRETTE2F_MRBONDING
	
HotelAmbrette2F_MapScripts:
	def_scene_scripts
	
	def_callbacks
	
HotelAmbrette2FMrBondingScript:
	faceplayer
	opentext
	writetext HotelAmbrette2FMrBondingIntroText
	yesorno
	iffalse .NoExplanation
	writetext HotelAmbrette2FMrBondingExplanationText
	sjump .Continue
	
.NoExplanation
	writetext HotelAmbrette2FMrBondingNoExplanationText
.Continue
	promptbutton
	writetext HotelAmbrette2FItsBondingTimeText
	promptbutton
	reloadmap
	opentext
	writetext HotelAmbrette2FMrBondingLeavesText
	waitbutton
	closetext
	setevent EVENT_MR_BONDING_AMBRETTE
	disappear HOTELAMBRETTE2F_MRBONDING
	reloadmap
	end

HotelAmbrette2FMrBondingIntroText:
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
	
HotelAmbrette2FMrBondingExplanationText:
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
	
HotelAmbrette2FMrBondingNoExplanationText:
	text "Hey!"
	line "That's my friend!"
	done

HotelAmbrette2FItsBondingTimeText:
	text "Let's get started,"
	line "shall we?"
	
	para "It's bonding time!"
	done
	
HotelAmbrette2FMrBondingLeavesText:
	text "Well then, I do"
	line "believe I shall"
	cont "take my leave"
	cont "right about now."
	
	para "Hope to see you"
	line "around!"
	done
	
; HotelAmbrette2FReceivedOPowerText:
	; text "You received an"
	; line "O-POWER from MR."
	; cont "BONDING."
	
	; para You can now use Sp. Def Power Lv. 1
	; done
	
HotelAmbrette2F_MapEvents:
	db 0, 0 ; filler
	
	def_warp_events
	warp_event  1,  0, HOTEL_AMBRETTE_1F, 3
	
	def_coord_events
	
	def_bg_events
	
	def_object_events
	object_event 15, 10, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, HotelAmbrette2FMrBondingScript, EVENT_MR_BONDING_AMBRETTE