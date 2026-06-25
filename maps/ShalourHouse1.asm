	object_const_def
	
ShalourHouse1_MapScripts:
	def_scene_scripts
	
	def_callbacks
	
ShalourHouse1GirlScript:
	; show a PSYCHIC- or FLYING-type POKEMON
	faceplayer
	opentext
	checkevent EVENT_SHALOUR_CITY_STARDUSTS
	iftrue .Done
	writetext ShalourHouse1GirlIntroText
	yesorno
	iffalse .SaidNo
	special BillsGrandfather
	iffalse .SaidNo
	ifnotequal ESPURR, .WrongPokemon
	writetext ShalourHouse1GirlEspurrText
	waitbutton
	closetext
	reloadmap
	opentext
	writetext ShalourHouse1GirlThankYouText
	promptbutton
	verbosegiveitem STARDUST, $5
	setevent EVENT_SHALOUR_CITY_STARDUSTS
.Done:
	writetext ShalourHouse1GirlAfterText
	closetext
	end
	
.SaidNo:
	writetext ShalourHouse1GirlSaidNoText
	waitbutton
	closetext
	end

.WrongPokemon:
	writetext ShalourHouse1GirlWrongMonText
	waitbutton
	closetext
	end

ShalourHouse1GirlIntroText:
	text "Hi!"
	
	para "Do you have an" ; FLYING- or PSYCHIC-type #MON with you?
	line "ESPURR with you"
	cont "by any chance?"
	done

ShalourHouse1GirlEspurrText:
	text "Oh! You do?"
	
	para "Would you help me"
	line "get some luggage"
	cont "that's too high"
	cont "for me to reach?"
	done

ShalourHouse1GirlThankYouText:
	text "Thank you! I'll"
	line "give you this!"
	done

ShalourHouse1GirlAfterText:
	text "Having #MON"
	line "with you can be a"
	cont "big help, eh?"
	done
	
ShalourHouse1GirlSaidNoText:
	text "That's too bad."
	done
	
ShalourHouse1GirlWrongMonText:
	text "THAT'S not an"
	line "ESPURR…"
	
	para "What are you?"
	line "Dense or some-"
	cont "thing?"
	done
	
ShalourHouse1BoyScript:
	; show him a Pokemon, if its grown more than 30 levels since obtaining, he gives Footprint ribbon
	jumptextfaceplayer Shalourhouse1BoyText
	
Shalourhouse1BoyText:
	text "I feel the love"
	line "you have for your"
	cont "#MON."
	
	para "Raise them well."
	done
	
ShalourHouse1ManScript:
	jumptextfaceplayer ShalourHouse1ManText

ShalourHouse1ManText:
	text "As you imitate"
	line "someone, you'll"
	cont "create your own"
	cont "style."
	
	para "If you want to be"
	line "strong, it might"
	cont "be a good idea to"
	cont "imitate a strong"
	cont "Trainer."
	done
	
ShalourHouse1_MapEvents:
	db 0, 0 ; filler
	
	def_warp_events
	warp_event  2,  7, SHALOUR_CITY, 4
	warp_event  3,  7, SHALOUR_CITY, 4
	
	def_coord_events
	
	def_bg_events
	
	def_object_events
	object_event  0,  2, SPRITE_LASS, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ShalourHouse1GirlScript, -1
	object_event  5,  4, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ShalourHouse1BoyScript, -1
	object_event  7,  2, SPRITE_GRAMPS, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ShalourHouse1ManScript, -1