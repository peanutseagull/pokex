	object_const_def
	
HotelCamphrier1F_MapScripts:
	def_scene_scripts
	
	def_callbacks
	
HotelCamphrier1FYoungsterScript:
	faceplayer
	opentext
	checkevent EVENT_CAMPHERIER_TOWN_FULL_HEAL
	iftrue .AlreadyGotItem
	writetext HotelCamphrier1FYoungsterFullHealText
	promptbutton
	verbosegiveitem FULL_HEAL
	writetext HotelCamphrier1FYoungsterGotText
	waitbutton
	closetext
	setevent EVENT_CAMPHERIER_TOWN_FULL_HEAL
	end
	
.AlreadyGotItem:
	writetext HotelCamphrier1FYoungsterGotText
	waitbutton
	closetext
	end

HotelCamphrier1FYoungsterFullHealText:
	text "Since you came all"
	line "the way to"
	cont "CAMPHRIER TOWN..."
	
	para "Take this with"
	line "you."
	done
	
HotelCamphrier1FYoungsterGotText:
	text "Battling gives"
	line "Trainers a deeper"
	cont "understanding of"
	cont "one another."
	
	para "And this also"
	line "helps Trainers and"
	cont "#MON get along."
	done

HotelCamphrier1FFletchlingScript:
	jumptextfaceplayer HotelCamphrier1FFletchlingText
	
HotelCamphrier1FFletchlingText:
	text "FLETCHLING: Cheep"
	line "chirp chiirp!"
	done
	
HotelCamphrier1FConciergeScript:
	jumptextfaceplayer HotelCamphrier1FConciergeText
	
HotelCamphrier1FConciergeText:
	text "Welcome to HOTEL"
	line "CAMPHRIER."
	
	para "I'm the owner,"
	line "doorman,"
	cont "concierge,"
	cont "bellhop,"
	cont "the housekeeping.."	
	
	para "And right now,"
	line "I'm the cook."
	done
	
HotelCamphrier1F_MapEvents:
	db 0, 0 ; filler
	
	def_warp_events
	warp_event  9, 11, CAMPHRIER_TOWN, 5
	warp_event 10, 11, CAMPHRIER_TOWN, 5
	warp_event  1,  1, HOTEL_CAMPHRIER_2F, 1
	
	def_coord_events
	
	def_bg_events
	
	def_object_events
	object_event  4,  7, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, HotelCamphrier1FYoungsterScript, -1
	object_event  3, 10, SPRITE_BIRD, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, HotelCamphrier1FFletchlingScript, -1
	object_event 10,  3, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, HotelCamphrier1FConciergeScript, -1