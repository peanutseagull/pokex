	object_const_def
	const SANTALUNEGYM_GYM_GUIDE

SantaluneGym_MapScripts:
	def_scene_scripts

	def_callbacks

SantaluneGymGuideScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_FALKNER
	iftrue .SantaluneGymGuideWinScript
	writetext SantaluneGymGuideText
	waitbutton
	closetext
	end

.SantaluneGymGuideWinScript:
	writetext SantaluneGymGuideWinText
	waitbutton
	closetext
	end

SantaluneGymStatue:
	checkflag ENGINE_ZEPHYRBADGE
	iftrue .Beaten
	jumpstd GymStatue1Script
.Beaten:
	gettrainername STRING_BUFFER_4, FALKNER, FALKNER1
	jumpstd GymStatue2Script



SantaluneGymGuideText:
	text "Hey! I'm no train-"
	line "er but I can give"
	cont "some advice!"

	para "Believe me!"
	line "If you believe, a"

	para "championship dream"
	line "can come true."

	para "You believe?"
	line "Then listen."

	para "The grass-type is"
	line "weak against the"

	para "flying-type. Keep"
	line "this in mind."
	done

SantaluneGymGuideWinText:
	text "Nice battle! Keep"
	line "it up, and you'll"

	para "be the CHAMP in no"
	line "time at all!"
	done

SantaluneGym_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4,  5, SANTALUNE_CITY, 2
	warp_event  5,  5, SANTALUNE_CITY, 2
	warp_event  2,  1, SANTALUNE_GYM_B1F, 1
	warp_event  4,  1, SANTALUNE_GYM_B1F, 1
	warp_event  5,  1, SANTALUNE_GYM_B1F, 1
	warp_event  7,  1, SANTALUNE_GYM_B1F, 1

	def_coord_events

	def_bg_events
	bg_event  3,  3, BGEVENT_READ, SantaluneGymStatue
	bg_event  6,  3, BGEVENT_READ, SantaluneGymStatue

	def_object_events
	object_event  7,  3, SPRITE_GYM_GUIDE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, SantaluneGymGuideScript, -1
