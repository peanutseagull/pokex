	object_const_def
	
SantaluneHouse3_MapScripts:
	def_scene_scripts
	
	def_callbacks
	
SantaluneHappinessRaterTeacherScript:
	faceplayer
	opentext
	special GetFirstPokemonHappiness
	writetext SantaluneHappinessRaterTeacherText
	promptbutton
	ifgreater 250 - 1, .LovesYouALot
	ifgreater 200 - 1, .ReallyTrustsYou
	ifgreater 150 - 1, .SortOfHappy
	ifgreater 100 - 1, .QuiteCute
	ifgreater  50 - 1, .NotUsedToYou
	sjump .LooksMean

.LovesYouALot:
	writetext SantaluneHappinessRatingText_LovesYouALot
	waitbutton
	closetext
	end

.ReallyTrustsYou:
	writetext SantaluneHappinessRatingText_ReallyTrustsYou
	waitbutton
	closetext
	end

.SortOfHappy:
	writetext SantaluneHappinessRatingText_SortOfHappy
	waitbutton
	closetext
	end

.QuiteCute:
	writetext SantaluneHappinessRatingText_QuiteCute
	waitbutton
	closetext
	end

.NotUsedToYou:
	writetext SantaluneHappinessRatingText_NotUsedToYou
	waitbutton
	closetext
	end

.LooksMean:
	writetext SantaluneHappinessRatingText_LooksMean
	waitbutton
	closetext
	end
	
SantaluneHappinessRaterTeacherText:
	text "If you treat your"
	line "#MON nicely,"

	para "they will love you"
	line "in return."

	para "Oh? Let me see"
	line "your @"
	text_ram wStringBuffer3
	text "…"
	done

SantaluneHappinessRatingText_LovesYouALot:
	text "It looks really"
	line "happy! It must"
	cont "love you a lot."
	done

SantaluneHappinessRatingText_ReallyTrustsYou:
	text "I get the feeling"
	line "that it really"
	cont "trusts you."
	done

SantaluneHappinessRatingText_SortOfHappy:
	text "It's friendly to-"
	line "ward you. It looks"
	cont "sort of happy."
	done

SantaluneHappinessRatingText_QuiteCute:
	text "It's quite cute."
	done

SantaluneHappinessRatingText_NotUsedToYou:
	text "You should treat"
	line "it better. It's"
	cont "not used to you."
	done

SantaluneHappinessRatingText_LooksMean:
	text "It doesn't seem to"
	line "like you at all."
	cont "It looks mean."
	done
	
SantaluneHouse3LassScript:
	jumptextfaceplayer SantaluneHouse3LassText
	
SantaluneHouse3LassText:
	text "If a #MON is"
	line "evolving and you"
	cont "don't want it to,"
	
	para "Try pressing the"
	line "B Button!"
	
	para "That's Evolution"
	line "cancellation!"
	done
	
SantaluneHouse3_MapEvents:
	db 0, 0 ; filler
	
	def_warp_events
	warp_event  2,  7, SANTALUNE_CITY, 7
	warp_event  3,  7, SANTALUNE_CITY, 7
	
	def_coord_events
	
	def_bg_events
	
	def_object_events
	object_event  2,  4, SPRITE_TEACHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, SantaluneHappinessRaterTeacherScript, -1
	object_event  5,  4, SPRITE_LASS, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SantaluneHouse3LassScript, -1