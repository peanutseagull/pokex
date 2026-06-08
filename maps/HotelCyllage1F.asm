	object_const_def
	
HotelCyllage1F_MapScripts:
	def_scene_scripts
	
	def_callbacks

HotelCyllage1FConciergeScript:
	jumptextfaceplayer HotelCyllage1FConciergeText
	
HotelCyllage1FConciergeText:
	text "Welcome to HOTEL"
	line "CYLLAGE."
	done
	
HotelCyllage1FBeautyScript:
	jumptextfaceplayer HotelCyllage1FBeautyText
	
HotelCyllage1FBeautyText:
	text "The HOLO CASTER"
	line "was developed at"
	cont "that LYSANDRE's"
	cont "laboratory, right?"
	
	para "Weird how things"
	line "are connected like"
	cont "that."
	done

HotelCyllage1FYoungsterScript:
	jumptextfaceplayer HotelCyllage1FYoungsterText
	
HotelCyllage1FYoungsterText:
	text "When #MON"
	line "evolve, they seem"
	line "to release a new"
	cont "kind of energy…"
	
	para "That's what"
	line "PROFESSOR ROWAN"
	cont "from the SINNOH"
	cont "region spends his"
	cont "time researching."
	done

HotelCyllage1FFurfrouScript:
	jumptextfaceplayer HotelCyllage1FFurfrouText
	
HotelCyllage1FFurfrouText:
	text "FURFROU: Ouaf!"
	done
	
HotelCyllage1FRestGuyScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_TM44_REST
	iftrue .AlreadyHaveRest
	writetext GetRestText
	promptbutton
	verbosegiveitem TM_REST
	setevent EVENT_GOT_TM44_REST
.AlreadyHaveRest:
	writetext RestAfterText
	waitbutton
	closetext
	end
	
GetRestText:
	text "Sleep can cure"
	line "all of life's"
	cont "problems!"
	
	para "You should let"
	line "your #MON get"
	cont "some rest."
	done
	
RestAfterText:
	text "Sleep to fully"
	line "recover HP!"
	
	para "Status conditions"
	line "will be cured,"
	cont "too!"
	done
	
HotelCyllage1FLassScript:
	jumptextfaceplayer SleepTalkAfterText
	; faceplayer
	; opentext
	; checkevent EVENT_GOT_TM88_SLEEP_TALK
	; iftrue .AlreadyHaveSleepTalk
	; writetext GetNaturePowerText
	; promptbutton
	; verbosegiveitem TM_SLEEP_TALK
	; setevent EVENT_GOT_TM88_SLEEP_TALK
; .AlreadyHaveSleepTalk:
	; writetext SleepTalkAfterText
	; waitbutton
	; closetext
	; end
	
; GetSleepTalkText:
	; text "I just love to"
	; line "talk in my sleep!"
	
	; para "You should give it"
	; line "a try, too!"
	; done
	
SleepTalkAfterText:
	text "Only #MON that"
	line "are asleep can use"
	cont "SLEEP TALK."
	
	para "When the sleeping"
	line "#MON uses it,"
	cont "one of the other"
	cont "moves it knows"
	cont "will go off."
	done
	
HotelCyllage1F_MapEvents:
	db 0, 0 ; filler
	
	def_warp_events
	warp_event  9, 11, CYLLAGE_CITY, 10
	warp_event 10, 11, CYLLAGE_CITY, 10
	warp_event  1,  1, HOTEL_CYLLAGE_2F, 1
	
	def_coord_events
	
	def_bg_events
	
	def_object_events
	object_event 10,  3, SPRITE_RECEPTIONIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, HotelCyllage1FConciergeScript, -1
	object_event 16,  4, SPRITE_BEAUTY, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, HotelCyllage1FBeautyScript, -1
	object_event  1,  5, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, HotelCyllage1FYoungsterScript, -1
	object_event  2,  5, SPRITE_MONSTER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, HotelCyllage1FFurfrouScript, -1
	object_event  3,  8, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, HotelCyllage1FRestGuyScript, -1
	object_event  2,  9, SPRITE_LASS, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, HotelCyllage1FLassScript, -1