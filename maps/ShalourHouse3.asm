	object_const_def
	
ShalourHouse3_MapScripts:
	def_scene_scripts
	
	def_callbacks

ShalourHouse3BlackBeltScript:
	jumptextfaceplayer ShalourHouse3BlackBeltText
	
ShalourHouse3BlackBeltText:
	text "I was invited out"
	line "the other day by"
	cont "a friend who"
	cont "recently joined up"
	cont "with TEAM FLARE."
	
	para "He just kept going"
	line "on about how only"
	cont "TEAM FLARE had a"
	cont "future to look"
	cont "forward to…"
	done
	
ShalourHouse3WorkerScript:
	jumptextfaceplayer ShalourHouse3WorkerText
	
ShalourHouse3WorkerText:
	text "There exists an"
	line "item that can"
	cont "change a #MON's"
	cont "ABILITY!"
	
	para "Well, that's what"
	line "I heard, but where"
	cont "do I actually find"
	cont "one?"
	done
	
ShalourHouse3ScientistScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_EVIOLITE
	iftrue .AlreadyGotEviolite
	; supposed to check if you've seen 40 POKEMON in Coastal DEX
	writetext ShalourHouse3ScientistGiveEvioliteText
	promptbutton
	verbosegiveitem EVIOLITE
	setevent EVENT_GOT_EVIOLITE
.AlreadyGotEviolite:
	writetext ShalourHouse3ScientistAfterText
	waitbutton
	closetext
	end
	
ShalourHouse3ScientistGiveEvioliteText:
	text "Oh, what's that"
	line "you have there?"
	
	para "That's a KALOS"
	line "#DEX, isn't it?"
	
	para "Let me have a"
	line "look for a moment."
	
	; para "In COASTAL KALOS"
	; line "you've seen…"
	; cont "x #MON!"
	
	para "That is no mean"
	line "feat there, child!"
	
	para "Take this in"
	line "honour of your"
	cont "effort!"
	done
	
ShalourHouse3ScientistNotEnoughSeenText: ; unreferenced
	text "Let me know when"
	line "you hit 40."
	
	para "I'll prepare a"
	line "little treat for"
	cont "you."
	done

ShalourHouse3ScientistAfterText:
	text "An EVIOLITE is"
	line "a handy item."
	
	para "Would you believe"
	line "what it does?"
	
	para "It raises the DEF"
	line "and SP. DEF for a"
	cont "#MON holding"
	cont "it."
	
	para "But I'm afraid"
	line "there is a catch."
	
	para "It only works for"
	line "#MON that can"
	cont "evolve, but have"
	cont "not finished"
	cont "evolving."
	
	para "Mysterious, isn't"
	line "it?"
	done
	
ShalourHouse3_MapEvents:
	db 0, 0 ; filler
	
	def_warp_events
	warp_event  2,  7, SHALOUR_CITY, 6
	warp_event  3,  7, SHALOUR_CITY, 6
	
	def_coord_events
	
	def_bg_events
	
	def_object_events
	object_event  2,  3, SPRITE_BLACK_BELT, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ShalourHouse3BlackBeltScript, -1
	object_event  4,  5, SPRITE_ROCKER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, ShalourHouse3WorkerScript, -1
	object_event  4,  1, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ShalourHouse3ScientistScript, -1