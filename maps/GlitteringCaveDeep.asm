	object_const_def
	const GLITTERINGCAVEDEEP_ROCKET1
	const GLITTERINGCAVEDEEP_ROCKET_GIRL1
	const GLITTERINGCAVEDEEP_ROCKET2
	const GLITTERINGCAVEDEEP_ROCKET_GIRL2
	const GLITTERINGCAVEDEEP_COOLTRAINER_F
	const GLITTERINGCAVEDEEP_SCIENTIST
	
GlitteringCaveDeep_MapScripts:
	def_scene_scripts
	scene_script GlitteringCaveDeepNoop1Scene, SCENE_GLITTERINGCAVEDEEP_FLARE
	scene_script GlitteringCaveDeepNoop2Scene, SCENE_GLITTERINGCAVEDEEP_SERENA
	scene_script GlitteringCaveDeepNoop3Scene, SCENE_GLITTERINGCAVEDEEP_NOOP
	
	def_callbacks
	
GlitteringCaveDeepNoop1Scene:
	end
	
GlitteringCaveDeepNoop2Scene:
	disappear GLITTERINGCAVEDEEP_COOLTRAINER_F
	end
	
GlitteringCaveDeepNoop3Scene:
	end
	
GlitteringCaveDeepFlareScene1:
	showemote EMOTE_SHOCK, GLITTERINGCAVEDEEP_ROCKET1, 15
	playmusic MUSIC_ROCKET_ENCOUNTER
	applymovement GLITTERINGCAVEDEEP_ROCKET1, GlitteringCaveDeepRocketApproachesYouMovement1
	opentext
	checkevent EVENT_GLITTERING_CAVE_DEEP_SAID_NO
	iftrue .Repeat
	writetext GlitteringCaveDeepFlareText1
	yesorno
	iftrue .SaidYes
.SaidNo:
	writetext GlitteringCaveDeepFlareSaidNoText
	waitbutton
	closetext
	winlosstext GlitteringCaveDeepFlare1WinText, GlitteringCaveDeepFlare1LossText
	setlasttalked GLITTERINGCAVEDEEP_ROCKET1
	loadtrainer GRUNTM, GRUNTM_1
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	opentext
	writetext GlitteringCaveDeepFlareText2
	waitbutton
	closetext
	setscene SCENE_GLITTERINGCAVEDEEP_SERENA
	playmapmusic
	end
	
.SaidYes:
	writetext GlitteringCaveDeepFlareSaidYesText
	waitbutton
	closetext
	setevent EVENT_GLITTERING_CAVE_DEEP_SAID_NO
	applymovement GLITTERINGCAVEDEEP_ROCKET1, GlitteringCaveDeepGruntGoesBackMovement1
	applymovement PLAYER, GlitteringCaveDeepPlayerPushedAwayMovement
	playmapmusic
	end
	
.Repeat:
	writetext GlitteringCaveDeepFlareRepeatText
	yesorno
	iftrue .SaidYes
	sjump .SaidNo
	
GlitteringCaveDeepFlareScene2:
	showemote EMOTE_SHOCK, GLITTERINGCAVEDEEP_ROCKET1, 15
	playmusic MUSIC_ROCKET_ENCOUNTER
	applymovement GLITTERINGCAVEDEEP_ROCKET1, GlitteringCaveDeepRocketApproachesYouMovement2
	opentext
	checkevent EVENT_GLITTERING_CAVE_DEEP_SAID_NO
	iftrue .Repeat
	writetext GlitteringCaveDeepFlareText1
	yesorno
	iftrue .SaidYes
.SaidNo:
	writetext GlitteringCaveDeepFlareSaidNoText
	waitbutton
	closetext
	winlosstext GlitteringCaveDeepFlare1WinText, GlitteringCaveDeepFlare1LossText
	setlasttalked GLITTERINGCAVEDEEP_ROCKET1
	loadtrainer GRUNTM, GRUNTM_1
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	opentext
	writetext GlitteringCaveDeepFlareText2
	waitbutton
	closetext
	setscene SCENE_GLITTERINGCAVEDEEP_SERENA
	playmapmusic
	end
	
.SaidYes:
	writetext GlitteringCaveDeepFlareSaidYesText
	waitbutton
	closetext
	setevent EVENT_GLITTERING_CAVE_DEEP_SAID_NO
	applymovement GLITTERINGCAVEDEEP_ROCKET1, GlitteringCaveDeepGruntGoesBackMovement2
	applymovement PLAYER, GlitteringCaveDeepPlayerPushedAwayMovement
	playmapmusic
	end
	
.Repeat:
	writetext GlitteringCaveDeepFlareRepeatText
	yesorno
	iftrue .SaidYes
	sjump .SaidNo
	
GlitteringCaveDeepFlareScene3:
	showemote EMOTE_SHOCK, GLITTERINGCAVEDEEP_ROCKET1, 15
	playmusic MUSIC_ROCKET_ENCOUNTER
	applymovement GLITTERINGCAVEDEEP_ROCKET1, GlitteringCaveDeepRocketApproachesYouMovement3
	opentext
	checkevent EVENT_GLITTERING_CAVE_DEEP_SAID_NO
	iftrue .Repeat
	writetext GlitteringCaveDeepFlareText1
	yesorno
	iftrue .SaidYes
.SaidNo:
	writetext GlitteringCaveDeepFlareSaidNoText
	waitbutton
	closetext
	winlosstext GlitteringCaveDeepFlare1WinText, GlitteringCaveDeepFlare1LossText
	setlasttalked GLITTERINGCAVEDEEP_ROCKET1
	loadtrainer GRUNTM, GRUNTM_1
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	opentext
	writetext GlitteringCaveDeepFlareText2
	waitbutton
	closetext
	setscene SCENE_GLITTERINGCAVEDEEP_SERENA
	playmapmusic
	end
	
.SaidYes:
	writetext GlitteringCaveDeepFlareSaidYesText
	waitbutton
	closetext
	setevent EVENT_GLITTERING_CAVE_DEEP_SAID_NO
	applymovement GLITTERINGCAVEDEEP_ROCKET1, GlitteringCaveDeepGruntGoesBackMovement3
	applymovement PLAYER, GlitteringCaveDeepPlayerPushedAwayMovement
	playmapmusic
	end
	
.Repeat:
	writetext GlitteringCaveDeepFlareRepeatText
	yesorno
	iftrue .SaidYes
	sjump .SaidNo
	
GlitteringCaveDeepFlareScene4:
	showemote EMOTE_SHOCK, GLITTERINGCAVEDEEP_ROCKET1, 15
	playmusic MUSIC_ROCKET_ENCOUNTER
	applymovement GLITTERINGCAVEDEEP_ROCKET1, GlitteringCaveDeepRocketApproachesYouMovement4
	opentext
	checkevent EVENT_GLITTERING_CAVE_DEEP_SAID_NO
	iftrue .Repeat
	writetext GlitteringCaveDeepFlareText1
	yesorno
	iftrue .SaidYes
.SaidNo:
	writetext GlitteringCaveDeepFlareSaidNoText
	waitbutton
	closetext
	winlosstext GlitteringCaveDeepFlare1WinText, GlitteringCaveDeepFlare1LossText
	setlasttalked GLITTERINGCAVEDEEP_ROCKET1
	loadtrainer GRUNTM, GRUNTM_1
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	opentext
	writetext GlitteringCaveDeepFlareText2
	waitbutton
	closetext
	setscene SCENE_GLITTERINGCAVEDEEP_SERENA
	playmapmusic
	end
	
.SaidYes:
	writetext GlitteringCaveDeepFlareSaidYesText
	waitbutton
	closetext
	setevent EVENT_GLITTERING_CAVE_DEEP_SAID_NO
	applymovement GLITTERINGCAVEDEEP_ROCKET1, GlitteringCaveDeepGruntGoesBackMovement4
	applymovement PLAYER, GlitteringCaveDeepPlayerPushedAwayMovement
	playmapmusic
	end
	
.Repeat:
	writetext GlitteringCaveDeepFlareRepeatText
	yesorno
	iftrue .SaidYes
	sjump .SaidNo
	
GlitteringCaveDeepFlareText1:
	text "What's this?"
	
	para "Well, well. What"
	line "do we have here?"
	
	para "A nosy little"
	line "Trainer has come"
	cont "poking around."
	
	para "Listen up! We're"
	line "the fashionable"
	cont "team whose name"
	cont "makes people"
	cont "tremble in fear:"
	
	para "TEAM FLARE!!!"
	
	para "TEAM FLARE's goal"
	line "is to make it so"
	cont "we're the only"
	cont "ones who are"
	cont "happy!"
	
	para "We don't care one"
	line "bit about what"
	cont "happens to other"
	cont "Trainers or"
	cont "#MON."
	
	para "Get out of here,"
	line "kid. Don't you"
	cont "know not to play"
	cont "with fire?"
	done
	
GlitteringCaveDeepFlareSaidNoText:
	text "Getting my fancy"
	line "suit dirty isn't"
	cont "the stylish way"
	cont "to do things,"
	
	para "but if you insist…"
	
	para "I'll obliterate"
	line "you! Get him,"
	cont "HOUNDOUR!"
	done
	
GlitteringCaveDeepFlareSaidYesText:
	text "So don't!"
	line "It doesn't really"
	cont "matter though."
	
	para "Someday everyone"
	line "not in TEAM FLARE"
	cont "is going to get"
	cont "burned anyway."
	done
	
GlitteringCaveDeepFlareRepeatText:
	text "I feel like a"
	line "broken record."
	cont "You're in the way."
	
	para "Don't you know not"
	line "to pick fights?"
	done
	
GlitteringCaveDeepFlare1WinText:
	text "You may have"
	line "beaten me, but"
	cont "when I lose, I"
	cont "go out in style!"
	done
	
GlitteringCaveDeepFlare1LossText:
	text "Beat it, buster."
	done
	
GlitteringCaveDeepFlareText2:
	text "What's this?"
	line "You're a pretty"
	cont "tough #MON"
	cont "Trainer, for a"
	cont "kid."
	
	para "But watch your-"
	line "self! I'm not the"
	cont "only member of"
	cont "TEAM FLARE."
	done
	
GlitteringCaveDeepRocketApproachesYouMovement1:
	step DOWN
	step LEFT
	step DOWN
	step_end
	
GlitteringCaveDeepPlayerPushedAwayMovement:
	step DOWN
	step_end
	
GlitteringCaveDeepGruntGoesBackMovement1:
	step UP
	step RIGHT
	step UP
	turn_head DOWN
	step_end
	
GlitteringCaveDeepRocketApproachesYouMovement2:
	step DOWN
	step DOWN
	step_end
	
GlitteringCaveDeepGruntGoesBackMovement2:
	step UP
	step UP
	turn_head DOWN
	step_end
	
GlitteringCaveDeepRocketApproachesYouMovement3:
	step DOWN
	step RIGHT
	step DOWN
	step_end
	
GlitteringCaveDeepGruntGoesBackMovement3:
	step UP
	step LEFT
	step UP
	turn_head DOWN
	step_end
	
GlitteringCaveDeepRocketApproachesYouMovement4:
	step DOWN
	step RIGHT
	step RIGHT
	step DOWN
	step_end
	
GlitteringCaveDeepGruntGoesBackMovement4:
	step UP
	step LEFT
	step LEFT
	step UP
	turn_head DOWN
	step_end
	
GlitteringCaveDeepSerenaScene1:
	showemote EMOTE_SHOCK, GLITTERINGCAVEDEEP_ROCKET2, 15
	showemote EMOTE_SHOCK, GLITTERINGCAVEDEEP_ROCKET_GIRL2, 15
	playmusic MUSIC_ROCKET_ENCOUNTER
	opentext
	writetext GlitteringCaveDeepFlareText3
	waitbutton
	closetext
	appear GLITTERINGCAVEDEEP_COOLTRAINER_F
	applymovement GLITTERINGCAVEDEEP_COOLTRAINER_F, GlitteringCaveDeepSerenaWalksUpMovement
	turnobject PLAYER, RIGHT
	opentext
	writetext GlitteringCaveDeepSerenaText1
	waitbutton
	closetext
	turnobject PLAYER, LEFT
	applymovement GLITTERINGCAVEDEEP_COOLTRAINER_F, GlitteringCaveDeepSerenaApproachesFlareMovement1
	opentext
	writetext GlitteringCaveDeepSerenaText2
	waitbutton
	closetext
	winlosstext GlitteringCaveDeepFlare2WinText, GlitteringCaveDeepFlare1LossText
	setlasttalked GLITTERINGCAVEDEEP_ROCKET2
	loadtrainer GRUNTM, GRUNTM_2
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	opentext
	writetext GlitteringCaveDeepFlareText4
	waitbutton
	closetext
	disappear GLITTERINGCAVEDEEP_ROCKET2
	disappear GLITTERINGCAVEDEEP_ROCKET_GIRL2
	reloadmap
	setevent EVENT_GLITTERING_CAVE_DEEP_FLARES2
	setscene SCENE_GLITTERINGCAVEDEEP_NOOP
	playmapmusic
	end
	
GlitteringCaveDeepSerenaScene2:
	showemote EMOTE_SHOCK, GLITTERINGCAVEDEEP_ROCKET2, 15
	showemote EMOTE_SHOCK, GLITTERINGCAVEDEEP_ROCKET_GIRL2, 15
	playmusic MUSIC_ROCKET_ENCOUNTER
	opentext
	writetext GlitteringCaveDeepFlareText3
	waitbutton
	closetext
	moveobject GLITTERINGCAVEDEEP_COOLTRAINER_F, 23, 3
	appear GLITTERINGCAVEDEEP_COOLTRAINER_F
	applymovement GLITTERINGCAVEDEEP_COOLTRAINER_F, GlitteringCaveDeepSerenaWalksUpMovement
	turnobject PLAYER, RIGHT
	opentext
	writetext GlitteringCaveDeepSerenaText1
	waitbutton
	closetext
	turnobject PLAYER, LEFT
	applymovement GLITTERINGCAVEDEEP_COOLTRAINER_F, GlitteringCaveDeepSerenaApproachesFlareMovement2
	opentext
	writetext GlitteringCaveDeepSerenaText2
	waitbutton
	closetext
	winlosstext GlitteringCaveDeepFlare2WinText, GlitteringCaveDeepFlare1LossText
	setlasttalked GLITTERINGCAVEDEEP_ROCKET2
	loadtrainer GRUNTF, GRUNTF_2
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	opentext
	writetext GlitteringCaveDeepFlareText4
	waitbutton
	closetext
	disappear GLITTERINGCAVEDEEP_ROCKET2
	disappear GLITTERINGCAVEDEEP_ROCKET_GIRL2
	reloadmap
	setevent EVENT_GLITTERING_CAVE_DEEP_FLARES2
	setscene SCENE_GLITTERINGCAVEDEEP_NOOP
	playmapmusic
	end
	
GlitteringCaveDeepFlareText3:
	text "We're TEAM FLARE!"
	line "We put fashion"
	cont "into fear!"
	
	para "We were looking"
	line "for Fossils but"
	cont "discovered a kid!"
	
	para "SERENA: <PLAY_G>."
	done
	
GlitteringCaveDeepSerenaText1:
	text "There are two"
	line "members of TEAM"
	cont "FLARE…"
	
	para "Let's team up and"
	line "battle them!"
	
	para "I just fought with"
	line "another one of"
	cont "these FLARE guys."
	done
	
GlitteringCaveDeepSerenaText2:
	text "If you only want"
	line "to make people in"
	cont "TEAM FLARE happy,"
	
	para "why don't you just"
	line "do that?"
	
	para "But if you're"
	line "going to go around"
	cont "threatening other"
	cont "people,"
	
	para "we won't let you"
	line "get away with it!"
	
	para "<PLAY_G>, I'll"
	line "take this one,"
	
	para "you fight the"
	line "other!"
	done
	
GlitteringCaveDeepFlare2WinText:
	text "Go, TEAM FLARE!"
	line "…Oh, I lost?"
	cont "I guess I'll stop"
	cont "cheering now."
	
	para "You've made me so"
	line "sad! I think I'm"
	cont "gonna cry!"
	done
	
GlitteringCaveDeepFlareText4:
	text "Oh man!"
	line "My favourite,"
	cont "fashionable TEAM"
	cont "FLARE suit is"
	cont "filthy!"
	
	para "Let's get outta"
	line "here!"
	done
	
GlitteringCaveDeepSerenaWalksUpMovement:
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step_end
	
GlitteringCaveDeepSerenaApproachesFlareMovement1:
	step DOWN
	step LEFT
	step_end
	
GlitteringCaveDeepSerenaApproachesFlareMovement2:
	step UP
	step LEFT
	step_end
	
GlitteringCaveDeepFlare1Script:
	jumptextfaceplayer GlitteringCaveDeepFlare1Text
	
GlitteringCaveDeepFlare1Text:
	text "TEAM FLARE is"
	line "awesome and for"
	cont "winners!"
	
	para "It's stylish and"
	line "awesome!"
	done
	
GlitteringCaveDeepFlare2Script:
	trainer GRUNTF, GRUNTF_1, EVENT_BEAT_GRUNTF_1, Gruntf1SeenText, Gruntf1BeatenText, 0, .Script
	
.Script:
	endifjustbattled
	opentext
	writetext Gruntf1AfterText
	waitbutton
	closetext
	end
	
Gruntf1SeenText:
	text "We're gonna take"
	line "everyone else down"
	cont "so we can do what"
	cont "WE want!"
	done
	
Gruntf1BeatenText:
	text "Hey! You weren't"
	line "supposed to beat"
	cont "me!"
	done
	
Gruntf1AfterText:
	text "You should keep"
	line "your nose out of"
	cont "adults' business,"
	cont "kid!"
	done
	
GlitteringCaveDeepSerenaScript:
	jumptextfaceplayer GlitteringCaveDeepSerenaText
	
GlitteringCaveDeepSerenaText:
	text "I'm a Trainer!"
	line "Protecting my"
	cont "partners is what"
	cont "I do…"
	
	para "Come on, let's go"
	line "look for that"
	cont "researcher from"
	cont "the FOSSIL LAB."
	done
	
GlitteringCaveDeepScientistScript:
	showemote EMOTE_SHOCK, GLITTERINGCAVEDEEP_SCIENTIST, 15
	faceplayer
	opentext
	writetext GlitteringCaveDeepScientistText1
	promptbutton
	writetext GlitteringCaveDeepWhichOneText
	loadmenu .MenuHeader
	verticalmenu
	closewindow
	ifequal 1, .jaw
	ifequal 2, .sail

.jaw
	writetext JawFossilText
	yesorno
	iffalse .loop
	verbosegiveitem JAW_FOSSIL
	setevent EVENT_CHOSE_JAW_FOSSIL
	playsound SFX_CAUGHT_MON
	waitsfx
	jump .Continue

.sail
	writetext SailFossilText
	yesorno
	iffalse .loop
	verbosegiveitem SAIL_FOSSIL
	setevent EVENT_CHOSE_SAIL_FOSSIL
	playsound SFX_CAUGHT_MON
	waitsfx
	jump .Continue

.MenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 0, 5, 15, TEXTBOX_Y - 2
	dw .MenuData
	db 1 ; default option

.MenuData:
	db STATICMENU_CURSOR | STATICMENU_DISABLE_B ; flags
	db 2 ; items
	db "JAW FOSSIL@"
	db "SAIL FOSSIL@"

.loop
	writetext GlitteringCaveDeepWhichOneText
	loadmenu .MenuHeader
	verticalmenu
	closewindow
	ifequal 1, .jaw
	ifequal 2, .sail
	
.Continue
	writetext GlitteringCaveDeepScientistText2
	waitbutton
	closetext
	setevent EVENT_GLITTERING_CAVE_DEEP_FLARES
	setevent EVENT_GLITTERING_CAVE_DEEP_FLARES2
	setevent EVENT_FOUND_ASSISTANT
	disappear GLITTERINGCAVEDEEP_SCIENTIST
	disappear GLITTERINGCAVEDEEP_COOLTRAINER_F
	disappear GLITTERINGCAVEDEEP_ROCKET1
	disappear GLITTERINGCAVEDEEP_ROCKET_GIRL1
	reloadmap
	end
	
GlitteringCaveDeepScientistText1:
	text "Why, hello!"
	line "Here to look for"
	cont "Fossils as well?"
	
	para "You're very lucky!"
	line "I just now found"
	cont "two Fossils!"
	
	para "But they're ones"
	line "I already have,"
	cont "so I'm willing to"
	cont "give you one!"
	done

GlitteringCaveDeepWhichOneText:	
	text "Do you want the"
	line "JAW FOSSIL or the"
	cont "SAIL FOSSIL?"
	done
	
JawFossilText:
	text "It's the JAW"
	line "FOSSIL."
	
	para "It looks like it"
	line "could chew up"
	cont "anything…"
	done
	
SailFossilText:
	text "It's the SAIL"
	line "FOSSIL."
	
	para "It shines with all"
	line "colours of the"
	cont "rainbow…"
	done	
	
GlitteringCaveDeepScientistText2:
	text "I can restore your"
	line "Fossil back into a"
	cont "#MON at the"
	cont "FOSSIL LAB!"
	
	para "Hope to see you"
	line "there!"
	done
	
GlitteringCaveDeepRock:
	jumpstd SmashRockScript
	
GlitteringCaveDeepEscapeRope:
	itemball ESCAPE_ROPE
	
GlitteringCaveDeep_MapEvents:
	db 0, 0 ; filler
	
	def_warp_events
	warp_event 15, 25, GLITTERING_CAVE_ENTRANCE, 2
	
	def_coord_events
	coord_event 14, 16, SCENE_GLITTERINGCAVEDEEP_FLARE, GlitteringCaveDeepFlareScene1
	coord_event 15, 16, SCENE_GLITTERINGCAVEDEEP_FLARE, GlitteringCaveDeepFlareScene2
	coord_event 16, 16, SCENE_GLITTERINGCAVEDEEP_FLARE, GlitteringCaveDeepFlareScene3
	coord_event 17, 16, SCENE_GLITTERINGCAVEDEEP_FLARE, GlitteringCaveDeepFlareScene4
	coord_event 17,  2, SCENE_GLITTERINGCAVEDEEP_SERENA, GlitteringCaveDeepSerenaScene1
	coord_event 17,  3, SCENE_GLITTERINGCAVEDEEP_SERENA, GlitteringCaveDeepSerenaScene2
	
	def_bg_events
	
	def_object_events
	object_event 15, 13, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GlitteringCaveDeepFlare1Script, EVENT_GLITTERING_CAVE_DEEP_FLARES
	object_event 26, 15, SPRITE_ROCKET_GIRL, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, GlitteringCaveDeepFlare2Script, EVENT_GLITTERING_CAVE_DEEP_FLARES
	object_event 14,  2, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_GLITTERING_CAVE_DEEP_FLARES2
	object_event 14,  3, SPRITE_ROCKET_GIRL, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_GLITTERING_CAVE_DEEP_FLARES2
	object_event 23,  2, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GlitteringCaveDeepSerenaScript, EVENT_GLITTERING_CAVE_DEEP_FLARES
	object_event  6, 11, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GlitteringCaveDeepScientistScript, EVENT_FOUND_ASSISTANT
	object_event 12, 18, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GlitteringCaveDeepRock, -1
	object_event 17, 11, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GlitteringCaveDeepRock, -1
	object_event 27, 17, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GlitteringCaveDeepRock, -1
	object_event 27,  2, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GlitteringCaveDeepRock, -1
	object_event  8,  2, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GlitteringCaveDeepRock, -1
	object_event  2,  6, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GlitteringCaveDeepRock, -1
	object_event  3, 15, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GlitteringCaveDeepRock, -1
	object_event  7, 10, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GlitteringCaveDeepRock, -1
	object_event  4, 17, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, GlitteringCaveDeepEscapeRope, EVENT_GLITTERING_CAVE_DEEP_ESCAPE_ROPE