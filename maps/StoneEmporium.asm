	object_const_def
	const STONEEMPORIUM_CLERK

StoneEmporium_MapScripts:
	def_scene_scripts

	def_callbacks

StoneEmporiumClerkScript:
	opentext
	pokemart MARTTYPE_STANDARD, MART_STONE_EMPORIUM
	closetext
	end
	
StoneEmporiumBeautyScript:
	jumptextfaceplayer StoneEmporiumBeautyText
	
StoneEmporiumGentlemanScript:
	faceplayer
	opentext
	writetext StoneEmporiumGentlemanText1
	yesorno
	iftrue .NoMoney
	writetext StoneEmporiumGentlemanText2
	waitbutton
	closetext
	end
	
.NoMoney:
	writetext StoneEmporiumGentlemanNoMoneyText
	waitbutton
	closetext
	end
	
StoneEmporiumPunkGuyScript:
	jumptextfaceplayer StoneEmporiumPunkGuyText
	
StoneEmporiumYoungsterScript:
	jumptext StoneEmporiumYoungsterText
	
StoneEmporiumGrampsScript:
	jumptextfaceplayer StoneEmporiumGrampsText
	
StoneEmporiumPunkGuyText:
	text "When I gave my"
	line "JIGGLYPUFF a MOON"
	cont "STONE,"
	
	para "it evolved into"
	line "the WIGGLYTUFF I"
	cont "have now."
	
	para "It was totally"
	line "sick, dude."
	cont "Y'know?"
	done
	
StoneEmporiumGrampsText:
	text "Ore, ore, ore…"
	line "Ores that I"
	cont "adore!"
	
	para "Ah, this is where"
	line "you should laugh…"
	done
	
StoneEmporiumYoungsterText:
	text "Look! It's not a"
	line "METAPOD anymore,"
	cont "Dad!"
	done
	
StoneEmporiumGentlemanText1:
	text "I'll sell you"
	line "this CHARIZARDITE"
	cont "X for just"
	cont "¥1,000,000."
	
	para "So what do you"
	line "say?"
	done
	
StoneEmporiumGentlemanText2:
	text "Now don't"
	line "misunderstand--"
	
	para "my desire to sell"
	line "my wares has not"
	cont "changed in the"
	cont "slightest!"
	done
	
StoneEmporiumGentlemanNoMoneyText:
	text "Perhaps my eyes"
	line "are getting bad,"
	
	para "but it looks as"
	line "though you don't"
	cont "have the coins"
	cont "for it."
	done	
	
StoneEmporiumBeautyText:
	text "My husband has"
	line "dabbled in all"
	cont "lines of work,"
	
	para "but he never"
	line "stuck with any"
	cont "for very long."
	
	para "But now that he's"
	line "found he can make"
	cont "a profit from his"
	cont "knack for finding"
	cont "stones…"
	
	para "Well, he's become"
	line "like a SHINY"
	cont "STONE in my eyes."
	done

StoneEmporium_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  5,  7, VERNAL_AVENUE, 7
	warp_event  6,  7, VERNAL_AVENUE, 8

	def_coord_events

	def_bg_events

	def_object_events
	object_event  5,  1, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, StoneEmporiumClerkScript, -1
	object_event  0,  2, SPRITE_BEAUTY, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, StoneEmporiumBeautyScript, -1
	object_event  1,  2, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, StoneEmporiumGentlemanScript, -1
	object_event  2,  2, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, StoneEmporiumYoungsterScript, -1
	object_event  3,  6, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, StoneEmporiumGrampsScript, -1
	object_event 11,  2, SPRITE_BIKER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, StoneEmporiumPunkGuyScript, -1