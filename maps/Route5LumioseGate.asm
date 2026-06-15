	object_const_def
	const ROUTE5LUMIOSEGATE_MRBONDING
	
Route5LumioseGate_MapScripts:
	def_scene_scripts
	scene_script Route5LumioseGateNoop1Scene, SCENE_ROUTE5LUMIOSEGATE_MRBONDING
	scene_script Route5LumioseGateNoop2Scene, SCENE_ROUTE5LUMIOSEGATE_NOOP
	
	def_callbacks
	
Route5LumioseGateNoop1Scene:
	end
	
Route5LumioseGateNoop2Scene:
	end
	
MrBondingIntroduction1:
	showemote EMOTE_SHOCK, ROUTE5LUMIOSEGATE_MRBONDING, 15
	applymovement ROUTE5LUMIOSEGATE_MRBONDING, Route5LumioseGateMrBondingApproachesYou1
	opentext
	writetext Route5LumioseGateMrBondingIntroductionText
	promptbutton
	reloadmap
	opentext
	writetext Route5LumioseGateMrBondingLeavesText
	waitbutton
	closetext
	setevent EVENT_MR_BONDING_ROUTE_5_LUMIOSE_GATE
	disappear ROUTE5LUMIOSEGATE_MRBONDING
	setscene SCENE_ROUTE5LUMIOSEGATE_NOOP
	reloadmap
	end
	
MrBondingIntroduction2:
	showemote EMOTE_SHOCK, ROUTE5LUMIOSEGATE_MRBONDING, 15
	applymovement ROUTE5LUMIOSEGATE_MRBONDING, Route5LumioseGateMrBondingApproachesYou2
	opentext
	writetext Route5LumioseGateMrBondingIntroductionText
	promptbutton
	reloadmap
	opentext
	writetext Route5LumioseGateMrBondingLeavesText
	waitbutton
	closetext
	setevent EVENT_MR_BONDING_ROUTE_5_LUMIOSE_GATE
	disappear ROUTE5LUMIOSEGATE_MRBONDING
	setscene SCENE_ROUTE5LUMIOSEGATE_NOOP
	reloadmap
	end	
	
Route5LumioseGateMrBondingApproachesYou1:
	step UP
	step_end
	
Route5LumioseGateMrBondingApproachesYou2:
	turn_head RIGHT
	step RIGHT
	turn_head UP
	step UP
	step_end
	
Route5LumioseGateMrBondingIntroductionText:
	text "GUY: HEY!"
	
	para "Nice to meet you,"
	line "friend!"
	
	para "They call me MR."
	line "BONDING."
	
	para "Have you heard"
	line "about O-POWERS?"
	
	para "That expression of"
	line "yours tells me you"
	cont "haven't!"
	
	para "Don't worry--I'll"
	line "tell you all about"
	cont "it."
	
	para "O-POWERS are"
	line "mysterious forces"
	cont "that have all"
	cont "kinds of useful"
	cont "effects."
	
	para "They can make your"
	line "#MON stronger"
	cont "or even help you"
	cont "get more money!"
	
	para "Any friends you"
	line "have nearby will"
	cont "also benefit from"
	cont "them."
	
	para "They truly are"
	line "mysterious powers!"
	
	para "Let's get started,"
	line "shall we?"
	
	para "It's bonding time!"
	done
	
Route5LumioseGateMrBondingLeavesText:
	text "Well then, I do"
	line "believe I shall"
	cont "take my leave"
	cont "right about now."
	
	para "Hope to see you"
	line "around!"
	done	
	
; Route5LumioseGateReceivedOPowerText:
	; text "You received an"
	; line "O-POWER from MR."
	; cont "BONDING."
	
	; para You can now use Attack Power and Defence Power!
	; done

Route5LumioseGateReceptionistScript:
	jumptextfaceplayer Route5LumioseGateReceptionistText
	
Route5LumioseGateReceptionistText:
	text "Right through this"
	line "gate is ROUTE 5,"
	cont "Versant Road."
	
	para "It leads to both"
	line "PARFUM PALACE and"
	cont "CAMPHRIER TOWN."
	done
	
Route5LumioseGateBeautyScript:
	jumptextfaceplayer Route5LumioseGateBeautyText
	
Route5LumioseGateBeautyText:
	text "Sometimes it's"
	line "nice to take the"
	cont "long way!"
	
	para "You'll never know"
	line "what you'll find."
	done
	
Route5LumioseGateLassScript:
	jumptextfaceplayer Route5LumioseGateLassText
	
Route5LumioseGateLassText:
	text "If you lose your"
	line "way in LUMIOSE,"
	
	para "I recommend"
	line "entering a shop to"
	cont "get your bearings."
	done
	
Route5LumioseGate_MapEvents:
	db 0, 0 ; filler
	
	def_warp_events
	warp_event  6,  0, LUMIOSE_SOUTHEAST, 11
	warp_event  7,  0, LUMIOSE_SOUTHEAST, 12
	warp_event  0,  4, ROUTE_5_EAST, 1
	warp_event  0,  5, ROUTE_5_EAST, 2
	
	def_coord_events
	coord_event  6,  1, SCENE_ROUTE5LUMIOSEGATE_MRBONDING, MrBondingIntroduction1
	coord_event  7,  1, SCENE_ROUTE5LUMIOSEGATE_MRBONDING, MrBondingIntroduction2
	
	def_bg_events
	
	def_object_events
	object_event  6,  3, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_MR_BONDING_ROUTE_5_LUMIOSE_GATE
	object_event  4,  2, SPRITE_RECEPTIONIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route5LumioseGateReceptionistScript, -1
	object_event  1,  7, SPRITE_BEAUTY, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route5LumioseGateBeautyScript, -1
	object_event  5,  6, SPRITE_LASS, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route5LumioseGateLassScript, -1