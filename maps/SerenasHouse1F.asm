	object_const_def
	const SERENASHOUSE_POKEFAN_F

SerenasHouse1F_MapScripts:
	def_scene_scripts

	def_callbacks

SerenasMotherScript:
	checkevent EVENT_VANIVILLE_TOWN_RIVALS
	iftrue .AlreadyMetSerena
	jumptextfaceplayer SerenasMotherText2

.AlreadyMetSerena:
	jumptextfaceplayer SerenasMotherText1

PlayersNeighborsHouseBookshelfScript:
	jumpstd MagazineBookshelfScript

SerenasMotherText1:
	text "Oh hi, <PLAY_G>!"

	para "My daughter is so"
	line "excited to begin"
	cont "her journey!"

	para "She really loves"
	line "#MON!"

	para "Why don't you go"
	line "upstairs and say"
	cont "hi?"
	done
	
SerenasMotherText2:
	text "She's grown up"
	line "so fast…"
	
	para "To think she's"
	line "already going on"
	cont "a #MON journey."
	
	para "As a mother, I'm"
	line "worried for her."
	
	para "But as an ex-"
	line "#MON trainer,"
	
	para "I couldn't be"
	line "prouder!"
	done

SerenasHouse1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  6,  7, VANIVILLE_TOWN, 2
	warp_event  7,  7, VANIVILLE_TOWN, 2
	warp_event  9,  0, SERENAS_HOUSE_2F, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  7,  3, SPRITE_POKEFAN_F, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, SerenasMotherScript, -1
