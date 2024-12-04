	object_const_def
	const ROUTE7EAST_BIGSNORLAX
	
Route7East_MapScripts:
	def_scene_scripts
	
	def_callbacks
	
Route7Snorlax:
	opentext
	; special SnorlaxAwake
	; iftrue .Awake
	writetext Route7SnorlaxSleepingText
	waitbutton
	closetext
	end

; .Awake:
	; writetext VermilionCityRadioNearSnorlaxText
	; pause 15
	; cry SNORLAX
	; closetext
	; loadvar VAR_BATTLETYPE, BATTLETYPE_FORCEITEM
	; loadwildmon SNORLAX, 50
	; startbattle
	; disappear VERMILIONCITY_BIG_SNORLAX
	; setevent EVENT_FOUGHT_SNORLAX
	; reloadmapafterbattle
	; end
	
Route7SnorlaxSleepingText:
	text "SNORLAX is snoring"
	line "peacefully..."
	done
	
Route7East_MapEvents:
	db 0, 0 ; filler
	
	def_warp_events
	
	def_coord_events
	
	def_bg_events
	
	def_object_events
	object_event 47, 19, SPRITE_BIG_SNORLAX, SPRITEMOVEDATA_BIGDOLLSYM, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route7Snorlax, EVENT_ROUTE_7_SNORLAX