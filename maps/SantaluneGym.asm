	object_const_def
	const SANTALUNEGYM_GYM_GUIDE

SantaluneGym_MapScripts:
	def_scene_scripts

	def_callbacks

SantaluneGymGuideScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_VIOLA
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
	gettrainername STRING_BUFFER_4, VIOLA, VIOLA1
	jumpstd GymStatue2Script

SantaluneGymGuideText:
	text "What's the"
	line "hustle, Crustle?"
	
	para "Welcome to the"
	line "SANTALUNE CITY"
	cont "Gym!"
	
	para "So, future champ,"
	
	para "This is your first"
	line "time challenging"
	cont "a gym, huh?"
	
	para "Are you thrilled?"
	line "Are you pumped?"
	
	para "The Gym Leader is"
	line "waiting for you!"
	
	para "Just drop down"
	line "below!"
	
	para "Before you go -"
	line "Here's a tip"
	cont "from you to me."
	
	para "Everyone in this"
	line "gym uses BUG-"
	cont "type #MON."

	para "Got it? Good"
	line "luck!"
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
