BugContestantPointers:
	table_width 2, BugContestantPointers
	dw BugContestant_BugCatcherDon ; this reverts back to the player
	dw BugContestant_BugCatcherDon
	dw BugContestant_BugCatcherOliver
	dw BugContestant_LassAnna
	dw BugContestant_LassLise
	dw BugContestant_LassCharlotte
	dw BugContestant_SchoolboyBrighton
	dw BugContestant_YoungsterMikey
	dw BugContestant_YoungsterLoic
	dw BugContestant_YoungsterZachary
	dw BugContestant_SchoolboyRabbie
	assert_table_length NUM_BUG_CONTESTANTS + 1

; contestant format:
  ; db class, id
  ; dbw 1st-place mon, score
  ; dbw 2nd-place mon, score
  ; dbw 3rd-place mon, score

BugContestant_BugCatcherDon:
	db BUG_CATCHER, DON
	dbw KAKUNA,     300
	dbw METAPOD,    285
	dbw CATERPIE,   226

BugContestant_BugCatcherOliver:
	db BUG_CATCHER, OLIVER
	dbw BUTTERFREE, 286
	dbw BUTTERFREE, 251
	dbw CATERPIE,   237

BugContestant_LassAnna:
	db LASS, ANNA
	dbw SCYTHER,    357
	dbw BUTTERFREE, 349
	dbw PINSIR,     368

BugContestant_LassLise:
	db LASS, LISE
	dbw PINSIR,     332
	dbw BUTTERFREE, 324
	dbw ODDISH,    321

BugContestant_LassCharlotte:
	db LASS, CHARLOTTE
	dbw BUTTERFREE, 318
	dbw WEEDLE,     295
	dbw CATERPIE,   285

BugContestant_SchoolboyBrighton:
	db SCHOOLBOY, BRIGHTON
	dbw PINSIR,     366
	dbw ODDISH,    329
	dbw KAKUNA,     314

BugContestant_YoungsterMikey:
	db YOUNGSTER, MIKEY
	dbw BUTTERFREE, 341
	dbw METAPOD,    301
	dbw CATERPIE,   264

BugContestant_YoungsterLoic:
	db YOUNGSTER, LOIC
	dbw SCYTHER,    326
	dbw BUTTERFREE, 292
	dbw METAPOD,    282

BugContestant_YoungsterZachary:
	db YOUNGSTER, ZACHARY
	dbw WEEDLE,     270
	dbw PINSIR,     282
	dbw CATERPIE,   251

BugContestant_SchoolboyRabbie:
	db SCHOOLBOY, RABBIE
	dbw ODDISH,    267
	dbw ODDISH,      254
	dbw KAKUNA,     259
