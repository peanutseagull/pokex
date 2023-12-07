	object_const_def
	
Route4_MapScripts:
	def_scene_scripts

	def_callbacks

TrainerGardenerWheaton:
	trainer GARDENER, WHEATON, EVENT_BEAT_GARDENER_WHEATON, GardenerWheatonSeenText, GardenerWheatonBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext GardenerWheatonAfterText
	waitbutton
	closetext
	end
	
TrainerSkaterCalida:
	trainer SKATERF, CALIDA, EVENT_BEAT_SKATER_CALIDA, SkaterCalidaSeenText, SkaterCalidaBeatenText, 0, .Script
	
.Script:
	endifjustbattled
	opentext
	writetext SkaterCalidaAfterText
	waitbutton
	closetext
	end
	
TrainerSkaterRoland:
	trainer SKATERM, ROLAND, EVENT_BEAT_SKATER_ROLAND, SkaterRolandSeenText, SkaterRolandBeatenText, 0, .Script
	
.Script:
	endifjustbattled
	opentext
	writetext SkaterRolandAfterText
	waitbutton
	closetext
	end
	
TrainerPokefanAgnes:
	trainer POKEFANF, AGNES, EVENT_BEAT_POKEFANF_AGNES, PokefanAgnesSeenText, PokefanAgnesBeatenText, 0, .Script
	
.Script:
	endifjustbattled
	opentext
	writetext PokefanAgnesAfterText
	waitbutton
	closetext
	end
	
TrainerCamperAdrian:
	trainer CAMPER, ADRIAN, EVENT_BEAT_CAMPER_ADRIAN, CamperAdrianSeenText, CamperAdrianBeatenText, 0, .Script
	
.Script:
	endifjustbattled
	opentext
	writetext CamperAdrianAfterText
	waitbutton
	closetext
	end
	
TrainerPicnickerMia:
	trainer PICNICKER, MIA, EVENT_BEAT_PICNICKER_MIA, PicnickerMiaSeenText, PicnickerMiaBeatenText, 0, .Script
	
.Script:
	endifjustbattled
	opentext
	writetext PicnickerMiaAfterText
	waitbutton
	closetext
	end
	
TrainerPokefanGabe:
	trainer POKEFANM, GABE, EVENT_BEAT_POKEFANM_GABE, PokefanGabeSeenText, PokefanGabeBeatenText, 0, .Script
	
.Script:
	endifjustbattled
	opentext
	writetext PokefanGabeAfterText
	waitbutton
	closetext
	end
	
TrainerGardenerFabian:
	trainer GARDENER, FABIAN, EVENT_BEAT_GARDENER_FABIAN, GardenerFabianSeenText, GardenerFabianBeatenText, 0, .Script
	
.Script:
	endifjustbattled
	opentext
	writetext GardenerFabianAfterText
	waitbutton
	closetext
	end
	
TrainerGardenerGrover:
	trainer GARDENER, GROVER, EVENT_BEAT_GARDENER_GROVER, GardenerGroverSeenText, GardenerGroverBeatenText, 0, .Script
	
.Script
	endifjustbattled
	opentext
	writetext GardenerGroverAfterText
	waitbutton
	closetext
	end
	
GardenerGroverSeenText:
	text "Parterre Way is"
	line "famous for its"
	cont "hedge mazes!"
	
	para "If you can beat"
	line "me, I'll tell you"
	cont "the official name!"
	done
	
GardenerGroverBeatenText:
	text "I'm a garden pro."
	line "You're a #MON"
	cont "pro!"
	done
	
GardenerGroverAfterText:
	text "As promised, the"
	line "hedge mazes are"
	cont "called the"
	
	para "Geometric Gardens!"
	done
	
GardenerFabianSeenText:
	text "Behold the moves"
	line "perfected in this"
	cont "garden!"
	done
	
GardenerFabianBeatenText:
	text "Looks like your"
	line "skills are more"
	cont "honed than me!"
	done
	
GardenerFabianAfterText:
	text "If you run into"
	line "RAMOS from"
	cont "COUMARINE CITY,"
	
	para "give him my best,"
	line "will ya?"
	done
	
PokefanGabeSeenText:
	text "I can tell by"
	line "your face that"
	cont "you love #MON!"
	done
	
PokefanGabeBeatenText:
	text "This battle made"
	line "it even more clear"
	
	para "You really love"
	line "#MON!"
	done
	
PokefanGabeAfterText:
	text "#MON can be"
	line "difficult at times"
	
	para "But everything is"
	line "easier if you show"
	cont "you love them!"
	done
	
PicnickerMiaSeenText:
	text "Hey! Hey! Listen!"
	line "I'm gonna win this"
	cont "battle!"
	done
	
PicnickerMiaBeatenText:
	text "Come on! No fair!"
	done 
	
PicnickerMiaAfterText:
	text "No, I'm not mad!"
	line "I'm just gonna"
	cont "train more!"
	done
CamperAdrianSeenText:
	text "Check it out!"
	line "I just traded for"
	cont "a cool #MON!"
	done
	
CamperAdrianBeatenText:
	text "Splish, splash..."
	line "Splish, splash..."
	done
	
CamperAdrianAfterText:
	text "I only just got"
	line "MAGIKARP in a"
	cont "trade, so we're"
	
	para "not used to each"
	line "other yet!"
	done 
PokefanAgnesSeenText:
	text "I love my #MON!"
	done
	
PokefanAgnesBeatenText:
	text "You must love your"
	line "#MON too to be"
	cont "so strong!"
	done 
	
PokefanAgnesAfterText:
	text "#MON and humans"
	line "can have a great"
	cont "bond!"
	done
	
SkaterRolandSeenText:
	text "I battle just like"
	line "I skate! Nonstop"
	cont "victory!"
	done
	
SkaterRolandBeatenText:
	text "Wow! You've got"
	line "some crazy #MON"
	cont "there!"
	done
	
SkaterRolandAfterText:
	text "LUMIOSE is the"
	line "best spot for us"
	cont "skaters!"
	done
	
SkaterCalidaSeenText:
	text "I love #MON"
	line "battles, but"
	cont "they'd be better"
	
	para "if I didn't have"
	line "to stop skating!"
	done
	
SkaterCalidaBeatenText:
	text "The moment I stop"
	line "down flutters the"
	cont "FLETCHLING!"
	done
	
SkaterCalidaAfterText:
	text "I took up skating"
	line "to chase #MON!"
	done

GardenerWheatonSeenText:
	text "I'm warnin' ya,"
	line "youngster -- my"
	cont "HONEDGE is sharp!"
	done
	
GardenerWheatonBeatenText:
	text "Ohhh! You cut us"
	line "down to size!"
	done
	
GardenerWheatonAfterText:
	text "To keep this"
	line "garden lookin'"
	cont "proper,"
	
	para "It's important"
	line "to have the right"
	cont "kinds of #MON"
	done
	
Route4Repel:
	itemball REPEL

Route4SuperPotion:
	itemball SUPER_POTION
	
Route4GreatBall:
	itemball GREAT_BALL

Route4Antidote:
	itemball ANTIDOTE
	
Route4Ether:
	itemball ETHER
	
Route4PoisonBarb:
	itemball POISON_BARB
	
Route4Sign:
	jumptext Route4SignText
	
Route4SignText:
	text "ROUTE 4:"
	line "Parterre Way"
	done
	
FountainSign:
	jumptext FountainSignText
	
FountainSignText:
	text "Perle Fountain"
	
	para "Acceptance creates"
	line "harmony."
	done
	
; Route4DemoOverScript:
	; jumptextfaceplayer Route4DemoOverText
	
; Route4DemoOverText:
	; text "You have reached"
	; line "the current end"
	; cont "of #X."
	
	; para "The dev is working"
	; line "hard to add more"
	; cont "to the game!"
	
	; para "Thank you so much"
	; line "for playing!"
	
	; para "Please leave your"
	; line "feedback on Github"
	; done
	
Route4_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 15,  3, ROUTE_4_LUMIOSE_GATE, 1
	
	def_coord_events

	def_bg_events
	bg_event 14, 46, BGEVENT_READ, Route4Sign
	bg_event 13, 33, BGEVENT_READ, FountainSign
	
	def_object_events
	object_event  3, 43, SPRITE_OFFICER, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 2, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerGardenerWheaton, -1
	object_event 15, 36, SPRITE_BEAUTY, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 4, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 4, TrainerSkaterCalida, -1
	object_event 15, 22, SPRITE_ROCKER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 4, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 4, TrainerSkaterRoland, -1
	object_event 23, 20, SPRITE_POKEFAN_F, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerPokefanAgnes, -1
	object_event 11, 17, SPRITE_LASS, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerPicnickerMia, -1
	object_event 20, 13, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerCamperAdrian, -1
	object_event 15, 10, SPRITE_POKEFAN_M, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerPokefanGabe, -1
	object_event 12,  4, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 4, TrainerGardenerGrover, -1
	object_event 26,  6, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 1, TrainerGardenerFabian, -1
	; object_event 15,  4, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route4DemoOverScript, -1
	object_event 12, 52, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Route4Repel, EVENT_ROUTE_4_REPEL
	object_event 19, 52, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Route4SuperPotion, EVENT_ROUTE_4_SUPER_POTION
	object_event 23, 42, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Route4GreatBall, EVENT_ROUTE_4_GREAT_BALL
	object_event  8, 42, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Route4Antidote, EVENT_ROUTE_4_ANTIDOTE
	object_event 19,  4, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Route4Ether, EVENT_ROUTE_4_ETHER
	object_event 16, 16, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Route4PoisonBarb, EVENT_ROUTE_4_POISON_BARB