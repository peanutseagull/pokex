	object_const_def
	
Route9_MapScripts:
	def_scene_scripts
	
	def_callbacks
	callback MAPCALLBACK_TILES, Route9RhyhornCallback

Route9RhyhornCallback:
	checkevent EVENT_IS_RHYHORN
	iffalse .skip1
	changeblock  8, 14, $3e
	changeblock 64,  4, $72
	changeblock 12, 16, $0a
	changeblock 12, 18, $0a
	changeblock 28, 14, $0a
	changeblock 30, 14, $0a
	changeblock 52,  8, $0a
	changeblock 54, 10, $0a
	changeblock 56, 10, $0a
	changeblock 58, 12, $0a
	changeblock 58, 14, $0a
	changeblock 58, 16, $0a
	changeblock 44, 16, $0a
	changeblock 44, 18, $0a
.skip1
	endcallback
	
RhyhornSign:
	opentext
	checkevent EVENT_IS_RHYHORN
	iftrue .IsRhyhorn
	writetext RideRhyhornText
	yesorno
	iffalse .No
	closetext
	setevent EVENT_IS_RHYHORN
	reloadmap
	loadvar VAR_MOVEMENT, PLAYER_RHYHORN
	special UpdatePlayerSprite
	changeblock  8, 14, $3e
	changeblock 64,  4, $72
	changeblock 12, 16, $0a
	changeblock 12, 18, $0a
	changeblock 28, 14, $0a
	changeblock 30, 14, $0a
	changeblock 52,  8, $0a
	changeblock 54, 10, $0a
	changeblock 56, 10, $0a
	changeblock 58, 12, $0a
	changeblock 58, 14, $0a
	changeblock 58, 16, $0a
	changeblock 44, 16, $0a
	changeblock 44, 18, $0a
.No:
	closetext
	end
	
.IsRhyhorn:
	writetext RhyhornDisembarkText
	yesorno
	iffalse .No
	clearevent EVENT_IS_RHYHORN
	reloadmap
	loadvar VAR_MOVEMENT, PLAYER_NORMAL
	special UpdatePlayerSprite
	changeblock  8, 14, $3c
	changeblock 64,  4, $73
	changeblock 12, 16, $57
	changeblock 12, 18, $57
	changeblock 28, 14, $57
	changeblock 30, 14, $57
	changeblock 52,  8, $57
	changeblock 54, 10, $57
	changeblock 56, 10, $57
	changeblock 58, 12, $57
	changeblock 58, 14, $57
	changeblock 58, 16, $57
	changeblock 44, 16, $57
	changeblock 44, 18, $57
	end
	
RideRhyhornText:
	text "Ride the RHYHORN"
	line "Express?"
	done
	
RhyhornDisembarkText:
	text "Disembark from"
	line "RHYHORN?"
	done
	
Route9Sign:
	jumptext Route9SignText

Route9SignText:
	text "ROUTE 9:"
	line "Spikes Passage"
	done
	
GlitteringCaveSign:
	jumptext GlitteringCaveSignText
	
GlitteringCaveSignText:
	text "GLITTERING CAVE"
	done
	
TrainerSkyTrainerOrion:
	trainer SKYTRAINERM, ORION, EVENT_BEAT_SKY_TRAINER_ORION, SkyTrainerOrionSeenText, SkyTrainerOrionBeatenText, 0, .Script
	
.Script:
	endifjustbattled
	opentext
	writetext SkyTrainerOrionBeatenText
	waitbutton
	closetext
	end
	
SkyTrainerOrionSeenText:
	text "Care for a SKY"
	line "BATTLE?"
	
	para "With my rubber"
	line "flying suit, I can"
	cont "completely shrug"
	cont "off ELECTRIC-type"
	cont "moves!"
	done
	
SkyTrainerOrionBeatenText:
	text "Wait! It doesn't"
	line "matter if I'M"
	cont "wearing the suit…"
	
	para "It's my #MON"
	line "that are taking"
	cont "the hits!"
	done
	
Route9CooltrainerfScript:
	opentext
	faceplayer
	checkevent EVENT_ROUTE_9_HEALED_YOU
	iffalse .HealsYou
	writetext Route9CooltrainerfText
	waitbutton
	closetext
	end
	
.HealsYou:
	writetext Route9CooltrainerfHealsYouText
	waitbutton
	closetext
	special FadeBlackQuickly
	special ReloadSpritesNoPalettes
	playmusic MUSIC_HEAL
	special HealParty
	pause 60
	special FadeInQuickly
	special RestartMapMusic
	setevent EVENT_ROUTE_9_HEALED_YOU
	end

Route9CooltrainerfHealsYouText:
	text "Hail, trainer."
	line "Let me heal your"
	cont "#MON."
	done
	
Route9CooltrainerfText:
	text "Hail, Trainer. You"
	line "must have some"
	cont "impressive #MON"
	cont "to have made it"
	cont "this far…"
	done
	
Route9HikerScript:
	jumptextfaceplayer Route9HikerText

Route9HikerText:
	text "It's really easy"
	line "to get lost inside"
	cont "this here cave."
	
	para "Just take it one"
	line "step at a time."
	
	para "Go rushin' in all"
	line "careless-like, and"
	cont "you'll never find"
	cont "your way out."
	done
	
Route9XDefend:
	itemball X_DEFEND ; X_DEFENSE?
	
Route9ParlyzHeal:
	itemball PARLYZ_HEAL
	
Route9FireStone:
	itemball FIRE_STONE
	
Route9DuskBall:
	itemball DUSK_BALL
	
Route9HiddenSuperRepel:
	hiddenitem SUPER_REPEL, EVENT_ROUTE_9_HIDDEN_SUPER_REPEL
	
Route9_MapEvents:
	db 0, 0 ; filler
	
	def_warp_events
	warp_event  4, 12, ROUTE_9_GATE, 3
	warp_event  4, 13, ROUTE_9_GATE, 4
	warp_event 64,  5, GLITTERING_CAVE_ENTRANCE, 1
	
	def_coord_events
	
	def_bg_events
	bg_event 11, 21, BGEVENT_READ, RhyhornSign
	bg_event 28,  8, BGEVENT_READ, RhyhornSign
	bg_event 47, 21, BGEVENT_READ, RhyhornSign
	bg_event 54,  6, BGEVENT_READ, RhyhornSign
	bg_event 62, 12, BGEVENT_READ, RhyhornSign
	bg_event  8, 12, BGEVENT_READ, Route9Sign
	bg_event 66,  6, BGEVENT_READ, GlitteringCaveSign
	bg_event 59,  6, BGEVENT_ITEM, Route9HiddenSuperRepel
	
	def_object_events
	object_event 64, 23, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 0, TrainerSkyTrainerOrion, -1
	object_event 57,  6, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route9CooltrainerfScript, -1
	object_event 66,  9, SPRITE_FISHER, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route9HikerScript, -1
	object_event 33, 12, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Route9XDefend, EVENT_ROUTE_9_X_DEFEND
	object_event 49, 16, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Route9ParlyzHeal, EVENT_ROUTE_9_PARLYZ_HEAL
	object_event 54, 18, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Route9FireStone, EVENT_ROUTE_9_FIRE_STONE
	object_event 67, 25, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Route9DuskBall, EVENT_ROUTE_9_DUSK_BALL