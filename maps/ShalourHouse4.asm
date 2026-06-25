	object_const_def
	
ShalourHouse4_MapScripts:
	def_scene_scripts
	
	def_callbacks

ShalourHouse4PsychicScript:
; Trade Sitrus Berry for Leppa Berry
	faceplayer
	opentext
	checkevent EVENT_SHALOUR_CITY_LEPPA_BERRY
	iftrue .AlreadyTraded
	writetext ShalourHouse4PsychicOfferText
	yesorno
	iffalse .SaidNo
	checkitem GOLD_BERRY
	iffalse .NoPokeballs
	takeitem GOLD_BERRY
	writetext ShalourHouse4PsychicThanksText
	promptbutton
	verbosegiveitem MYSTERYBERRY
	setevent EVENT_SHALOUR_CITY_LEPPA_BERRY
.AlreadyTraded:
	writetext ShalourHouse4PsychicAfterText
	waitbutton
	closetext
	end

.SaidNo:
	writetext ShalourHouse4PsychicRefusedText
	waitbutton
	closetext
	end
	
.NoPokeballs:
	writetext ShalourHouse4PsychicNoBerryText
	waitbutton
	closetext
	end
	
ShalourHouse4PsychicOfferText:
	text "Would you trade me"
	line "one GOLD BERRY for"
	cont "a MYSTERYBERRY?"
	done

ShalourHouse4PsychicThanksText:
	text "Thank you!"
	line "You're a wonderful"
	cont "#MON Trainer."
	done

ShalourHouse4PsychicAfterText:
	text "I wish I could"
	line "fly to the BERRY"
	cont "FIELDS using the"
	cont "move FLY."
	done
	
ShalourHouse4PsychicRefusedText:
	text "I understand…"
	line "In this weather,"
	cont "I don't blame you."
	done
	
ShalourHouse4PsychicNoBerryText:
	text "You know what?"
	line "My one and only"
	cont "psychic power"
	cont "tells me you don't"
	cont "have a GOLD BERRY."
	done
	
ShalourHouse4EspurrScript:
	jumptextfaceplayer ShalourHouse4EspurrText

ShalourHouse4EspurrText:
	text "ESPURR: Mshoo."
	done
	
ShalourHouseBattleGirlScript:
	jumptextfaceplayer ShalourHouseBattleGirlText

ShalourHouseBattleGirlText:
	text "Friendship is"
	line "power!"
	
	para "With that in mind,"
	line "the best way to"
	cont "bring out a"
	cont "#MON's hidden"
	cont "power is to become"
	cont "friends with it."
	
	para "Don't you agree?"
	done
	
ShalourHouse4_MapEvents:
	db 0, 0 ; filler
	
	def_warp_events
	warp_event  2,  7, SHALOUR_CITY, 7
	warp_event  3,  7, SHALOUR_CITY, 7
	
	def_coord_events
	
	def_bg_events
	
	def_object_events
	object_event  5,  6, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ShalourHouse4PsychicScript, -1
	object_event  6,  2, SPRITE_FAIRY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ShalourHouse4EspurrScript, -1
	object_event  7,  2, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, ShalourHouseBattleGirlScript, -1