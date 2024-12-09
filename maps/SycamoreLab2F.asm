	object_const_def
	
SycamoreLab2F_MapScripts:
	def_scene_scripts
	
	def_callbacks
	
SycamoreLabScientist4Script:
	faceplayer
	opentext
	checkevent EVENT_SYCAMORE_LAB_FRIEND_BALLS
	iftrue .AlreadyGotItem
	writetext ScientistFriendBallsText
	promptbutton
	verbosegiveitem FRIEND_BALL, $5
	writetext Scientist4AfterText
	waitbutton
	closetext
	setevent EVENT_SYCAMORE_LAB_FRIEND_BALLS
	end

.AlreadyGotItem:
	writetext Scientist4AfterText
	waitbutton
	closetext
	end
	
ScientistFriendBallsText:
	text "To become friends"
	line "with a #MON,"
	
	para "It's best to be"
	line "with them all"
	cont "the time."
	
	para "Please use these!"
	done
	
Scientist4AfterText:
	text "The FRIEND BALL"
	line "makes #MON more"
	cont "friendly."
	done
	
SycamoreLabScientist1Script:
	jumptextfaceplayer SycamoreLabScientist1Text
	
SycamoreLabScientist1Text:
	text "Apparently PROF"
	line "SYCAMORE studied"
	cont "in SINNOH."
	
	para "He studied under"
	line "PROF ROWAN."
	done

SycamoreLabScientist2Script:
	jumptextfaceplayer SycamoreLabScientist2Text
	
SycamoreLabScientist2Text:
	text "There are male"
	line "#MON, female"
	cont "#MON…"
	
	para "Even #MON with"
	line "unknown genders."
	
	para "Some even look"
	line "different based"
	cont "on gender."
	done
	
SycamoreLabCooltrainerfScript:
	jumptextfaceplayer SycamoreLabCooltrainerfText
	
SycamoreLabCooltrainerfText:
	text "Fighting in sync"
	line "with my #MON"
	cont "gives me chills!"
	done
	
SycamoreLabScientist3Script:
	jumptextfaceplayer SycamoreLabScientist3Text
	
SycamoreLabScientist3Text:
	text "I'm developing"
	line "a tool that will"
	cont "help my research."
	
	para "It's difficult,"
	line "but it will be"
	cont "amazing when done!"
	done
	
SycamoreLab2F_MapEvents:
	db 0, 0 ; filler
	
	def_warp_events
	warp_event  5,  0, SYCAMORE_LAB_3F, 1
	warp_event  7,  0, SYCAMORE_LAB_1F, 3
	
	def_coord_events
	
	def_bg_events
	
	def_object_events
	object_event  0,  2, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SycamoreLabScientist1Script, -1
	object_event  2,  6, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SycamoreLabScientist2Script, -1
	object_event 10,  7, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SycamoreLabCooltrainerfScript, -1
	object_event 11,  3, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SycamoreLabScientist3Script, -1
	object_event  3,  2, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SycamoreLabScientist4Script, -1
