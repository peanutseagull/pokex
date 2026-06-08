	object_const_def
	
CyllageHouse3_MapScripts:
	def_scene_scripts
	
	def_callbacks
	
CyllageHouse3MassageLadyScript:
	faceplayer
	opentext
	checkflag ENGINE_DAISYS_GROOMING
	iftrue .AlreadyGroomedMon
	writetext OfferMassageText
	yesorno
	iffalse .Refused
	writetext MassageWhichMonText
	waitbutton
	special DaisysGrooming
	ifequal $0, .Refused
	ifequal $1, .CantGroomEgg
	setflag ENGINE_DAISYS_GROOMING
	writetext MassageAlrightText
	waitbutton
	closetext
	special FadeOutPalettes
	playmusic MUSIC_HEAL
	pause 60
	special FadeInPalettes
	special RestartMapMusic
	opentext
	writetext GroomedMonLooksContentText
	special PlayCurMonCry
	promptbutton
	writetext MassageAllDoneText
	waitbutton
	closetext
	end

.AlreadyGroomedMon:
	writetext AlreadyMassagedText
	waitbutton
	closetext
	end

.Refused:
	writetext MassageRefusedText
	waitbutton
	closetext
	end

.CantGroomEgg:
	writetext CantMassageEggText
	waitbutton
	closetext
	end

OfferMassageText:
	text "Why, hello there!"
	
	para "Would you like me"
	line "to massage your"
	cont "#MON?"
	done
	
MassageWhichMonText:
	text "Which #MON?"
	done
	
MassageAlrightText:
	text "All right! Let me"
	line "get started."
	done
	
MassageAllDoneText:
	text "Phew! That's it."
	line "I'm all done here!"
	
	para "The massage made"
	line "your #MON a"
	cont "little bit more"
	cont "friendly!"
	done
	
AlreadyMassagedText:
	text "Ohh, sorry. I wish"
	line "I could, but I'm"
	cont "still exhausted"
	cont "from that massage"
	cont "earlier."
	
	para "Please come back"
	line "again tomorrow!"
	done
	
MassageRefusedText:
	text "I see. Well, come"
	line "back if you change"
	cont "your mind."
	done
	
CantMassageEggText:
	text "I can't massage"
	line "an egg!"
	done
	
GroomedMonLooksContentText:
	text_ram wStringBuffer3
	text " looks"
	line "content."
	done
	
CyllageHouse3TwinScript:
	jumptextfaceplayer CyllageHouse3TwinText
	
CyllageHouse3TwinText:
	text "It loosens up your"
	line "muscles an' your"
	cont "heart!"
	
	para "No wonder #MON"
	line "like gettin'"
	cont "massaged!"
	done
	
CyllageHouse3MarillScript:
	jumptextfaceplayer CyllageHouse3MarillText
	
CyllageHouse3MarillText:
	text "MARILL: Mrrr!"
	done

CyllageHouse3_MapEvents:
	db 0, 0 ; filler
	
	def_warp_events
	warp_event  2,  7, CYLLAGE_CITY, 5
	warp_event  3,  7, CYLLAGE_CITY, 5
	
	def_coord_events
	
	def_bg_events
	
	def_object_events
	object_event  2,  3, SPRITE_BEAUTY, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CyllageHouse3MassageLadyScript, -1
	object_event  5,  4, SPRITE_TWIN, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CyllageHouse3TwinScript, -1
	object_event  6,  4, SPRITE_FAIRY, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CyllageHouse3MarillScript, -1