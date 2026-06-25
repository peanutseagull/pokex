	object_const_def
	const SHALOURPOKECENTER1F_MRBONDING
	
ShalourPokecenter1F_MapScripts:
	def_scene_scripts
	
	def_callbacks
	
ShalourPokecenter1FMrBondingScript:
	faceplayer
	opentext
	writetext ShalourPokecenter1FMrBondingIntroText
	yesorno
	iffalse .NoExplanation
	writetext ShalourPokecenter1FMrBondingExplanationText
	sjump .Continue
	
.NoExplanation
	writetext ShalourPokecenter1FMrBondingNoExplanationText
.Continue
	promptbutton
	writetext ShalourPokecenter1FItsBondingTimeText
	promptbutton
	reloadmap
	opentext
	writetext ShalourPokecenter1FMrBondingLeavesText
	waitbutton
	closetext
	setevent EVENT_MR_BONDING_SHALOUR
	disappear SHALOURPOKECENTER1F_MRBONDING
	reloadmap
	end

ShalourPokecenter1FMrBondingIntroText:
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
	
ShalourPokecenter1FMrBondingExplanationText:
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
	
ShalourPokecenter1FMrBondingNoExplanationText:
	text "Hey!"
	line "That's my friend!"
	done

ShalourPokecenter1FItsBondingTimeText:
	text "Let's get started,"
	line "shall we?"
	
	para "It's bonding time!"
	done
	
ShalourPokecenter1FMrBondingLeavesText:
	text "Well then, I do"
	line "believe I shall"
	cont "take my leave"
	cont "right about now."
	
	para "Hope to see you"
	line "around!"
	done
	
; ShalourPokecenter1FReceivedOPowerText:
	; text "You received an"
	; line "O-POWER from MR."
	; cont "BONDING."
	
	; para You can now use Speed Power Lv. 1
	; done
	
ShalourPokecenter1FNurseScript:
	jumpstd PokecenterNurseScript
	
ShalourPokecenter1FPunkGuyScript:
	jumptextfaceplayer ShalourPokecenter1FPunkGuyText

ShalourPokecenter1FPunkGuyText:
	text "I've been playing"
	line "this totally sweet"
	cont "game recently."
	
	para "You play as some"
	line "cool little dude,"
	cont "who runs around"
	cont "and whacks enemies"
	cont "to the beat of the"
	cont "music!"
	done

ShalourPokecenter1FLassScript:
	jumptextfaceplayer ShalourPokecenter1FLassText
	
ShalourPokecenter1FLassText:
	text "They're very rare,"
	line "but here in the"
	cont "KALOS region,"
	cont "you can find"
	cont "mysterious stones"
	cont "that are filled"
	cont "with life energy!"
	done
	
ShalourPokecenter1F_MapEvents:
	db 0, 0 ; filler
	
	def_warp_events
	warp_event  3,  7, SHALOUR_CITY, 2
	warp_event  4,  7, SHALOUR_CITY, 2
	
	def_coord_events
	
	def_bg_events
	
	def_object_events
	object_event  6,  1, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ShalourPokecenter1FMrBondingScript, EVENT_MR_BONDING_SHALOUR
	object_event  3,  1, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ShalourPokecenter1FNurseScript, -1
	object_event  8,  4, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ShalourPokecenter1FPunkGuyScript, -1
	object_event  1,  5, SPRITE_LASS, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ShalourPokecenter1FLassScript, -1