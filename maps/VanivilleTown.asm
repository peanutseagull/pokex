	object_const_def
	const VANIVILLETOWN_TEACHER
	
VanivilleTown_MapScripts:
	def_scene_scripts
	scene_script VanivilleTownNoop1Scene, SCENE_VANIVILLETOWN_TEACHER_STOPS_YOU
	scene_script VanivilleTownNoop2Scene, SCENE_VANIVILLETOWN_NOOP
	
	def_callbacks

VanivilleTownNoop1Scene:
	end

VanivilleTownNoop2Scene:
	end
	
VanivilleTown_TeacherStopsYouScene1:
	playmusic MUSIC_MOM
	turnobject VANIVILLETOWN_TEACHER, UP
	opentext
	writetext Text_WaitPlayer
	waitbutton
	closetext
	turnobject PLAYER, DOWN
	applymovement VANIVILLETOWN_TEACHER, VanivilleTown_TeacherRunsToYouMovement1
	opentext
	writetext Text_WhatDoYouThinkYoureDoing
	waitbutton
	closetext
	follow VANIVILLETOWN_TEACHER, PLAYER
	applymovement VANIVILLETOWN_TEACHER, VanivilleTown_TeacherBringsYouBackMovement1
	stopfollow
	opentext
	writetext Text_ItsDangerousToGoAlone
	waitbutton
	closetext
	special RestartMapMusic
	end

VanivilleTown_TeacherStopsYouScene2:
	playmusic MUSIC_MOM
	turnobject VANIVILLETOWN_TEACHER, UP
	opentext
	writetext Text_WaitPlayer
	waitbutton
	closetext
	turnobject PLAYER, DOWN
	applymovement VANIVILLETOWN_TEACHER, VanivilleTown_TeacherRunsToYouMovement2
	opentext
	writetext Text_WhatDoYouThinkYoureDoing
	waitbutton
	closetext
	follow VANIVILLETOWN_TEACHER, PLAYER
	applymovement VANIVILLETOWN_TEACHER, VanivilleTown_TeacherBringsYouBackMovement2
	stopfollow
	opentext
	writetext Text_ItsDangerousToGoAlone
	waitbutton
	closetext
	special RestartMapMusic
	end
	
VanivilleTown_TeacherStopsYouScene3:
	playmusic MUSIC_MOM
	turnobject VANIVILLETOWN_TEACHER, UP
	opentext
	writetext Text_WaitPlayer
	waitbutton
	closetext
	turnobject PLAYER, DOWN
	applymovement VANIVILLETOWN_TEACHER, VanivilleTown_TeacherRunsToYouMovement3
	opentext
	writetext Text_WhatDoYouThinkYoureDoing
	waitbutton
	closetext
	follow VANIVILLETOWN_TEACHER, PLAYER
	applymovement VANIVILLETOWN_TEACHER, VanivilleTown_TeacherBringsYouBackMovement3
	stopfollow
	opentext
	writetext Text_ItsDangerousToGoAlone
	waitbutton
	closetext
	special RestartMapMusic
	end
	
VanivilleTown_TeacherStopsYouScene4:
	playmusic MUSIC_MOM
	turnobject VANIVILLETOWN_TEACHER, UP
	opentext
	writetext Text_WaitPlayer
	waitbutton
	closetext
	turnobject PLAYER, DOWN
	applymovement VANIVILLETOWN_TEACHER, VanivilleTown_TeacherRunsToYouMovement4
	opentext
	writetext Text_WhatDoYouThinkYoureDoing
	waitbutton
	closetext
	follow VANIVILLETOWN_TEACHER, PLAYER
	applymovement VANIVILLETOWN_TEACHER, VanivilleTown_TeacherBringsYouBackMovement4
	stopfollow
	opentext
	writetext Text_ItsDangerousToGoAlone
	waitbutton
	closetext
	special RestartMapMusic
	end

VanivilleTownTeacherScript:
	jumptextfaceplayer Text_ElmDiscoveredNewMon
;	faceplayer
;	opentext
;	checkevent EVENT_TALKED_TO_MOM_AFTER_MYSTERY_EGG_QUEST
;	iftrue .CallMom
;	checkevent EVENT_GAVE_MYSTERY_EGG_TO_ELM
;	iftrue .TellMomYoureLeaving
;	checkevent EVENT_GOT_A_POKEMON_FROM_ELM
;	iftrue .MonIsAdorable
;	writetext Text_GearIsImpressive
;	waitbutton
;	closetext
	end
	

Text_ElmDiscoveredNewMon:
	text "No."
	done
	
VanivilleTown_TeacherRunsToYouMovement1:
	step UP
	step UP
	step UP
	step UP
	turn_head LEFT
	step_end

VanivilleTown_TeacherRunsToYouMovement2:
	step UP
	step UP
	step UP
	step_end

VanivilleTown_TeacherRunsToYouMovement3:
	step UP
	step UP
	step UP
	step UP
	turn_head RIGHT
	step_end

VanivilleTown_TeacherRunsToYouMovement4:
	step UP
	step UP
	step UP
	step UP
	step RIGHT
	step_end

VanivilleTown_TeacherBringsYouBackMovement1:
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	turn_head UP
	step_end

VanivilleTown_TeacherBringsYouBackMovement2:
	step DOWN
	step DOWN
	step DOWN
	turn_head UP
	step_end

VanivilleTown_TeacherBringsYouBackMovement3:
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	turn_head UP
	step_end
	
VanivilleTown_TeacherBringsYouBackMovement4:
	step LEFT
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	turn_head UP
	step_end

Text_WaitPlayer:
	text "Wait, <PLAY_G>!"
	done

Text_WhatDoYouThinkYoureDoing:
	text "What do you think"
	line "you're doing?"
	done

Text_ItsDangerousToGoAlone:
	text "It's dangerous to"
	line "go out without a"
	cont "#MON!"

	para "Wild #MON"
	line "jump out of the"

	para "grass on the way"
	line "to the next town."
	done
	
VanivilleTown_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 24,  5, ELMS_LAB, 1
	warp_event 18,  5, PLAYERS_HOUSE_1F, 1
	warp_event  4,  5, SERENAS_HOUSE_1F, 1

	def_coord_events
	coord_event 10,  7, SCENE_VANIVILLETOWN_TEACHER_STOPS_YOU, VanivilleTown_TeacherStopsYouScene1
	coord_event 11,  7, SCENE_VANIVILLETOWN_TEACHER_STOPS_YOU, VanivilleTown_TeacherStopsYouScene2
	coord_event 12,  7, SCENE_VANIVILLETOWN_TEACHER_STOPS_YOU, VanivilleTown_TeacherStopsYouScene3
	coord_event 13,  7, SCENE_VANIVILLETOWN_TEACHER_STOPS_YOU, VanivilleTown_TeacherStopsYouScene4
	
	def_bg_events

	def_object_events
	object_event 11, 11, SPRITE_TEACHER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 1, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VanivilleTownTeacherScript, -1