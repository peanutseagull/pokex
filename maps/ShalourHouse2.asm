	object_const_def
	
ShalourHouse2_MapScripts:
	def_scene_scripts
	
	def_callbacks
	
ShalourHouse2BattleGirlScript:
	jumptextfaceplayer ShalourHouse2BattleGirlText
	
ShalourHouse2BattleGirlText:
	text "Even if #MON"
	line "are of the same"
	cont "species,"
	
	para "each #MON has a"
	line "different Nature"
	cont "and so on."
	done
	
ShalourHouse2LadyScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_SOOTHE_BELL
	iftrue .AlreadyGotSootheBell
	special GetFirstPokemonHappiness
	ifgreater 70 - 1, .VeryHappy
	sjump .NotVeryHappy

.VeryHappy:
	writetext ShalourHouse2LadyHappyText
	promptbutton
	verbosegiveitem FRIEND_BALL ; SOOTHE_BELL
	setevent EVENT_GOT_SOOTHE_BELL
	sjump .AlreadyGotSootheBell

.NotVeryHappy:
	writetext ShalourHouse2LadyNotHappyText
	waitbutton
	closetext
	end

.AlreadyGotSootheBell:
	writetext ShalourHouse2LadyAfterText
	waitbutton
	closetext
	end
	
ShalourHouse2LadyHappyText:
	text "Oh…?"
	
	para "Oh my!"
	
	para "Your #MON seems"
	line "to like you!"
	
	para "That's so nice"
	line "to see. Makes me"
	cont "want to give you"
	cont "this!"
	done
	
ShalourHouse2LadyAfterText:
	text "If a #MON holds"
	line "a SOOTHE BELL,"
	cont "it will become"
	cont "more friendly to"
	cont "you."
	done
	
ShalourHouse2LadyNotHappyText:
	text "Ah, hm…"
	line "Uh huh, so…"
	
	para "Your #MON's"
	line "feelings toward"
	cont "you seem to be"
	cont "neutral."
	
	para "If you can win its"
	line "friendship, I will"
	cont "give you something"
	cont "nice!"
	done
	
ShalourHouse2LassScript:
	jumptextfaceplayer ShalourHouse2LassText

ShalourHouse2LassText:
	text "There's always the"
	line "HOLO CASTER when"
	cont "you want to check"
	cont "the latest news!"
	done
	
ShalourHouse2PreschoolermScript:
	jumptextfaceplayer ShalourHouse2PreschoolermText

ShalourHouse2PreschoolermText:
	text "Being good or bad"
	line "at #MON battles"
	cont "is just one of"
	cont "many measures of"
	cont "people!"
	
	para "I want to show off"
	line "my awesomeness in"
	cont "eating contests."
	done
	
ShalourHouse2_MapEvents:
	db 0, 0 ; filler
	
	def_warp_events
	warp_event  2,  7, SHALOUR_CITY, 5
	warp_event  3,  7, SHALOUR_CITY, 5
	
	def_coord_events
	
	def_bg_events
	
	def_object_events
	object_event  1,  4, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, ShalourHouse2BattleGirlScript, -1
	object_event  3,  5, SPRITE_GRANNY, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ShalourHouse2LadyScript, -1
	object_event  5,  3, SPRITE_LASS, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ShalourHouse2LassScript, -1
	object_event  5,  4, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ShalourHouse2PreschoolermScript, -1
	