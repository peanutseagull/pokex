	object_const_def
	
HotelMarineSnow1F_MapScripts:
	def_scene_scripts
	
	def_callbacks
	
HotelMarineSnow1FGuideScript:
	faceplayer
	opentext
	writetext HotelMarineSnowGuideText1
	promptbutton
	writetext HotelMarineSnowGuideText2
	waitbutton
	closetext
	end
	
HotelMarineSnowGuideText1:
	text "You saw those huge"
	line "stones on ROUTE"
	cont "10, didn't you?"
	
	para "Some of the bigger"
	line "ones are more than"
	cont "30 feet tall!"
	
	para "And there are"
	line "hundreds of"
	cont "millions of them,"
	
	para "spanning more than"
	line "a mile in all!"
	
	para "I suppose it's"
	line "possible that"
	cont "people put up"
	cont "those stones with"
	cont "help from lots of"
	cont "#MON,"
	
	para "but for what"
	line "purpose? Why are"
	cont "they there?"
	
	para "There are lots of"
	line "theories about"
	cont "them, of course."
	
	para "Some people think"
	line "they mark the"
	cont "burial site of"
	cont "warriors from"
	cont "ancient times."
	
	para "Others say they"
	line "were built as"
	cont "family memorials"
	cont "or that they were"
	cont "set up for a"
	cont "ritual purposes." ; ritual to celebrate life
	
	para "I don't know about"
	line "all that, though."
	
	para "Personally, I"
	line "think they might"
	cont "just be a kind of"
	cont "calendar."
	
	para "You see it all the"
	line "time in astronomy"
	cont "studies."
	
	para "Ancient cultures"
	line "used stones to"
	cont "track the movement"
	cont "of the sun."
	
HotelMarineSnowGuideText2:
	text "One thing is for"
	line "sure--those stones"
	cont "are full of"
	cont "mysteries."
	
	para "Many believe that"
	line "they contain some"
	cont "kind of mysterious"
	cont "power."
	
	para "I just hope it's a"
	line "benign power that"
	cont "is watching over"
	cont "us people and"
	cont "#MON."
	
	para "Speaking of which,"
	line "there are some"
	cont "mysterious stones"
	cont "in SHALOUR CITY,"
	cont "too."
	done
	
HotelMarineSnow1FConciergeScript:
	jumptextfaceplayer HotelMarineSnow1FPokefanfText
	
HotelMarineSnow1FPokefanfText:
	text "Welcome to HOTEL"
	line "MARINE SNOW,"
	cont "located right here"
	cont "in cozy GEOSENGE"
	cont "TOWN-- the town of"
	cont "stones!"
	done 
	
HotelMarineSnow1FPokefanfScript:
	jumptextfaceplayer HotelMarineSnow1FConciergeText
	
HotelMarineSnow1FConciergeText:
	text "And where might"
	line "you be from"
	
	para "… … …"
	line "… … …"
	
	para "Is that right?"
	line "All the way from"
	cont "VANIVILLE TOWN?"
	
	para "Well, it's a"
	line "pleasure to have"
	cont "you here!"
	done
	
HotelMarineSnow1FErikaScript:
	jumptextfaceplayer HotelMarineSnow1FErikaText
	
; She's supposed to read the first pokemon in your party, idk how to do that
	
HotelMarineSnow1FErikaText:
	text "I think your"
	line "#MON is great,"
	cont "too!"
	
	para "It makes me happy"
	line "when other people"
	cont "like the same"
	cont "#MON as me!"
	
	para "I get curious"
	line "about people who"
	cont "like different"
	cont "#MON than I do."
	done
	
HotelMarineSnow1FYoungsterScript:
	jumptextfaceplayer HotelMarineSnow1FYoungsterText
	
HotelMarineSnow1FYoungsterText:
	text "H…hello."
	done
	
HotelMarineSnow1FFurfrouScript:
	jumptextfaceplayer HotelMarineSnow1FFurfrouText
	
HotelMarineSnow1FFurfrouText:
	text "FURFROU: Ouaf!"
	done
	
HotelMarineSnow1F_MapEvents:
	db 0, 0 ; filler
	
	def_warp_events
	warp_event  9, 11, GEOSENGE_TOWN, 5
	warp_event 10, 11, GEOSENGE_TOWN, 5
	warp_event  1,  1, HOTEL_MARINE_SNOW_2F, 1
	
	def_coord_events
	
	def_bg_events
	
	def_object_events
	object_event  5,  7, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, HotelMarineSnow1FGuideScript, EVENT_HOTEL_MARINE_SNOW_GUIDE
	object_event 10,  3, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, HotelMarineSnow1FConciergeScript, -1
	object_event 12,  3, SPRITE_POKEFAN_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, HotelMarineSnow1FPokefanfScript, -1
	object_event 16,  6, SPRITE_ERIKA, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, HotelMarineSnow1FErikaScript, -1
	object_event 19,  6, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, HotelMarineSnow1FYoungsterScript, -1
	object_event 17,  4, SPRITE_MONSTER, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, HotelMarineSnow1FFurfrouScript, -1