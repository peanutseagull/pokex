	object_const_def
	
Route9Gate_MapScripts:
	def_scene_scripts
	
	def_callbacks
	
Route9GateScientistScript:
	opentext
	faceplayer
	checkevent EVENT_MET_FOSSIL_SCIENTIST
	iffalse .blocksyou
	writetext Route9GateScientistText
	waitbutton
	closetext
	end
	
.blocksyou:
	writetext Route9GateScientistBlocksYouText
	waitbutton
	closetext
	end

Route9GateScientistText:
	text "Oh! Are you going"
	line "to search for"
	cont "Fossils in"
	cont "GLITTERING CAVE?"
	
	para "You will have to"
	line "ride on a RHYHORN"
	cont "to get there in"
	cont "that case!"
	
	para "Riding RHYHORN is"
	line "so much fun…"
	
	para "You can pretend"
	line "that you're the"
	cont "famous RHYHORN"
	cont "racer, GRACE!"
	done
	
Route9GateScientistBlocksYouText:
	text "Normally you can"
	line "the RHYHORN to"
	cont "get to GLITTERING"
	cont "CAVE, but we're"
	cont "giving them a"
	cont "little break."
	done
	
Route9GateRhyhornScript:
	jumptextfaceplayer Route9GateRhyhornText
	
Route9GateRhyhornText:
	text "RHYHORN: Graahh!"
	done
	
Route9GateReceptionistScript:
	jumptextfaceplayer Route9GateReceptionistText
	
Route9GateReceptionistText:
	text "I like to ride"
	line "RHYHORN, too!"
	
	para "When I'm off"
	line "the clock, that"
	cont "is…"
	done
	
Route9GateBeautyScript:
	faceplayer
	opentext
	checkevent EVENT_RECEIVED_ROCKY_HELMET
	iftrue .AlreadyReceivedItem
	writetext Route9GateBeautyHelmetText
	promptbutton
	verbosegiveitem HARD_STONE ; ROCKY_HELMET
	setevent EVENT_RECEIVED_ROCKY_HELMET
.AlreadyReceivedItem:
	writetext Route9GateBeautyText
	waitbutton
	closetext
	end
	
Route9GateBeautyHelmetText:
	text "#MON moves that"
	line "come in direct"
	cont "physical contact"
	cont "with the target"
	cont "are called direct"
	cont "attacks."
	
	para "If you want to do"
	line "something about"
	cont "them, you can try"
	cont "this!"
	done

Route9GateBeautyText:
	text "If a #MON"
	line "holding a ROCKY"
	cont "HELMET takes a"
	cont "direct attack,"
	
	para "the attacker takes"
	line "damage, too!"
	
	para "Combine that with"
	line "an Ability like"
	cont "IRON BARBS or"
	cont "ROUGH SKIN, and"
	
	para "it'll really start"
	line "to sting!"
	done

Route9Gate_MapEvents:
	db 0, 0 ; filler
	
	def_warp_events
	warp_event  0,  4, AMBRETTE_TOWN, 5
	warp_event  0,  5, AMBRETTE_TOWN, 6
	warp_event  9,  4, ROUTE_9, 1
	warp_event  9,  5, ROUTE_9, 2
	
	def_coord_events
	
	def_bg_events
	
	def_object_events
	object_event  1,  4, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route9GateScientistScript, -1
	object_event  1,  5, SPRITE_MONSTER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route9GateRhyhornScript, EVENT_MET_FOSSIL_SCIENTIST
	object_event  5,  2, SPRITE_RECEPTIONIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route9GateReceptionistScript, -1
	object_event  8,  7, SPRITE_BEAUTY, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route9GateBeautyScript, -1