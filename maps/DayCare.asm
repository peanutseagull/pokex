	object_const_def
	const DAYCARE_GRAMPS
	const DAYCARE_GRANNY

DayCare_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_OBJECTS, DayCareEggCheckCallback

DayCareEggCheckCallback:
	checkflag ENGINE_DAY_CARE_MAN_HAS_EGG
	iftrue .PutDayCareManOutside
	clearevent EVENT_DAY_CARE_MAN_IN_DAY_CARE
	setevent EVENT_DAY_CARE_MAN_ON_ROUTE_7
	endcallback

.PutDayCareManOutside:
	setevent EVENT_DAY_CARE_MAN_IN_DAY_CARE
	clearevent EVENT_DAY_CARE_MAN_ON_ROUTE_7
	endcallback

DayCareManScript_Inside:
	faceplayer
	opentext
	special DayCareMan
	waitbutton
	closetext
	end
	; checkevent EVENT_GOT_ODD_EGG
	; iftrue .AlreadyHaveOddEgg
	; writetext DayCareManText_GiveOddEgg
	; promptbutton
	; closetext
	; readvar VAR_PARTYCOUNT
	; ifequal PARTY_LENGTH, .PartyFull
	; special GiveOddEgg
	; opentext
	; writetext DayCareText_GotOddEgg
	; playsound SFX_KEY_ITEM
	; waitsfx
	; writetext DayCareText_DescribeOddEgg
	; waitbutton
	; closetext
	; setevent EVENT_GOT_ODD_EGG
	; end

; .PartyFull:
	; opentext
	; writetext DayCareText_PartyFull
	; waitbutton
	; closetext
	; end

; .AlreadyHaveOddEgg:
	; special DayCareMan
	; waitbutton
	; closetext
	; end

DayCareLadyScript:
	faceplayer
	opentext
	checkflag ENGINE_DAY_CARE_MAN_HAS_EGG
	iftrue .HusbandWasLookingForYou
	special DayCareLady
	waitbutton
	closetext
	end

.HusbandWasLookingForYou:
	writetext Text_GrampsLookingForYou
	waitbutton
	closetext
	end

DayCareBookshelf:
	jumpstd DifficultBookshelfScript

Text_GrampsLookingForYou:
	text "Gramps was looking"
	line "for you."
	done

; Text_DayCareManTalksAboutEggTicket: ; unreferenced
	; text "I'm the DAY-CARE"
	; line "MAN."

	; para "There's something"
	; line "new in GOLDENROD"

	; para "called the TRADE"
	; line "CORNER."

	; para "I was given an EGG"
	; line "TICKET that can be"

	; para "traded in for a"
	; line "ODD EGG."

	; para "But since we run a"
	; line "DAY-CARE, we don't"

	; para "need it. You may"
	; line "as well have it."
	; done

; DayCareManText_GiveOddEgg:
	; text "I'm the DAY-CARE"
	; line "MAN."

	; para "Do you know about"
	; line "EGGS?"

	; para "I was raising"
	; line "#MON with my"
	; cont "wife, you see."

	; para "We were shocked to"
	; line "find an EGG!"

	; para "How incredible is"
	; line "that?"

	; para "Well, wouldn't you"
	; line "like this EGG?"

	; para "Then fine, this is"
	; line "yours to keep!"
	; done

; DayCareText_ComeAgain: ; unreferenced
	; text "Come again."
	; done

; DayCareText_GotOddEgg:
	; text "<PLAYER> received"
	; line "ODD EGG!"
	; done

; DayCareText_DescribeOddEgg:
	; text "I found that when"
	; line "I was caring for"

	; para "someone's #MON"
	; line "before."

	; para "But the trainer"
	; line "didn't want the"

	; para "EGG, so I'd kept"
	; line "it around."
	; done

; DayCareText_PartyFull:
	; text "You've no room for"
	; line "this."
	; done

DayCare_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4,  7, ROUTE_7_EAST, 1
	warp_event  5,  7, ROUTE_7_EAST, 1

	def_coord_events

	def_bg_events
	bg_event  0,  1, BGEVENT_READ, DayCareBookshelf
	bg_event  1,  1, BGEVENT_READ, DayCareBookshelf

	def_object_events
	object_event  4,  1, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, DayCareManScript_Inside, EVENT_DAY_CARE_MAN_IN_DAY_CARE
	object_event  5,  1, SPRITE_GRANNY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, DayCareLadyScript, -1
