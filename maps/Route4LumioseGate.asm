	object_const_def
	const ROUTE4LUMIOSEGATE_COOLTRAINER_M
	const ROUTE4LUMIOSEGATE_BEAUTY
	
Route4LumioseGate_MapScripts:
	def_scene_scripts
	scene_script Route4LumioseGateNoop1Scene, SCENE_ROUTE4LUMIOSEGATE_DEXIO_SINA
	scene_script Route4LumioseGateNoop2Scene, SCENE_ROUTE4LUMIOSEGATE_NOOP
	
	def_callbacks
	
Route4LumioseGateNoop1Scene:
	end
	
Route4LumioseGateNoop2Scene:
	end

DexioSinaScene:
	special FadeOutMusic
	playmusic MUSIC_PROF_ELM
	showemote EMOTE_SHOCK, ROUTE4LUMIOSEGATE_COOLTRAINER_M, 15
	showemote EMOTE_SHOCK, ROUTE4LUMIOSEGATE_BEAUTY, 15
	turnobject ROUTE4LUMIOSEGATE_COOLTRAINER_M, DOWN
	turnobject ROUTE4LUMIOSEGATE_BEAUTY, DOWN
	opentext
	writetext DexioSinaText1
	promptbutton
	verbosegiveitem TM_RETURN
	writetext DexioSinaText2
	waitbutton
	closetext
	applymovement ROUTE4LUMIOSEGATE_COOLTRAINER_M, ExitMovement
	disappear ROUTE4LUMIOSEGATE_COOLTRAINER_M
	applymovement ROUTE4LUMIOSEGATE_BEAUTY, ExitMovement
	disappear ROUTE4LUMIOSEGATE_BEAUTY
	setscene SCENE_ROUTE4LUMIOSEGATE_NOOP
	playmapmusic
	setevent EVENT_DEXIO_GATE
	setevent EVENT_SINA_GATE
	end
	
ExitMovement:
	step UP
	step UP
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT	
	step_end

DexioSinaText1:
	text "GUY: Hello there!"
	line "Have you heard"
	cont "of FLABEBE?"
	
	para "GIRL: FLABEBE is"
	line "-- now brace"
	cont "yourself --"
	
	para "a FAIRY-type"
	line "#MON!"
	
	para "GUY: FAIRY-type"
	line "was discovered"
	cont "just recently!"
	
	para "GIRL: This turned"
	line "the entire type"
	cont "system on its head"
	
	para "GUY: We've been"
	line "learning more"
	cont "about FAIRY-types"
	
	para "at PROF SYCAMORE's"
	line "request."
	
	para "GIRL: My name's"
	line "Sina!"
	
	para "A beautiful name"
	line "for a beautiful"
	cont "lady!"
	
	para "GUY: I'm DEXIO."
	
	para "SINA: We're the"
	line "assistants of"
	cont "PROF SYCAMORE."
	
	para "DEXIO: Anyway,"
	line "how is your"
	cont "#MON going?"
	
	para "The more time you"
	line "spend together,"
	
	para "the stronger your"
	line "friendship will"
	cont "become."
	
	para "Here! This is the"
	line "TM for Return."
	
	para "This move will"
	line "get stronger as"
	cont "your bond with"
	
	para "#MON increases."
	done
	
DexioSinaText2:
	text "SINA: Right"
	line "through this gate"
	cont "is LUMIOSE CITY!"
		
	para "You should come"
	line "visit us at the"
	cont "lab in LUMIOSE!"
	
	para "You can see PROF"
	line "SYCAMORE too!"
	
	para "DEXIO: We're"
	line "gonna head off."
	
	para "SINA: Nice meeting"
	line "you!"
	done	
	
Route4LumioseGateReceptionistScript:
	jumptext Route4LumioseGateReceptionistText
	
Route4LumioseGateFisherScript:
	jumptextfaceplayer Route4LumioseGateFisherText
	
Route4LumioseGateFisherText:
	text "LUMIOSE CITY is"
	line "the biggest city"
	cont "in all of KALOS…"
	
	para "There's still"
	line "plenty I haven't"
	cont "seen."
	done
	
Route4LumioseGateReceptionistText:
	text "Welcome to LUMIOSE"
	line "CITY -- the City"
	cont "of Light!"
	done
	
Route4LumioseGate_MapEvents:
	db 0, 0 ; filler
	
	def_warp_events
	warp_event  6,  7, ROUTE_4, 1
	warp_event  7,  7, ROUTE_4, 1
	warp_event  0,  2, LUMIOSE_SOUTHEAST, 1
	warp_event  0,  3, LUMIOSE_SOUTHEAST, 2
	
	def_coord_events
	coord_event  7,  6, SCENE_ROUTE4LUMIOSEGATE_DEXIO_SINA, DexioSinaScene
	coord_event  6,  6, SCENE_ROUTE4LUMIOSEGATE_DEXIO_SINA, DexioSinaScene
	
	def_bg_events
	
	def_object_events
	object_event  6,  5, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_DEXIO_GATE
	object_event  7,  5, SPRITE_BEAUTY, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_SINA_GATE
	object_event  4,  6, SPRITE_RECEPTIONIST, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route4LumioseGateReceptionistScript, -1
	object_event  5,  2, SPRITE_FISHER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 2, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route4LumioseGateFisherScript, -1
