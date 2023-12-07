DEF __trainer_class__ = 0

MACRO trainerclass
	DEF \1 EQU __trainer_class__
	DEF __trainer_class__ += 1
	const_def 1
ENDM

; trainer class ids
; `trainerclass` indexes are for:
; - TrainerClassNames (see data/trainers/class_names.asm)
; - TrainerClassAttributes (see data/trainers/attributes.asm)
; - TrainerClassDVs (see data/trainers/dvs.asm)
; - TrainerGroups (see data/trainers/party_pointers.asm)
; - TrainerEncounterMusic (see data/trainers/encounter_music.asm)
; - TrainerPicPointers (see data/trainers/pic_pointers.asm)
; - TrainerPalettes (see data/trainers/palettes.asm)
; - BTTrainerClassSprites (see data/trainers/sprites.asm)
; - BTTrainerClassGenders (see data/trainers/genders.asm)
; trainer constants are Trainers indexes, for the sub-tables of TrainerGroups (see data/trainers/parties.asm)
DEF CHRIS EQU __trainer_class__
	trainerclass TRAINER_NONE ; 0
	const PHONECONTACT_MOM
	const PHONECONTACT_BIKESHOP
	const PHONECONTACT_BILL
	const PHONECONTACT_ELM
	const PHONECONTACT_BUENA
DEF NUM_NONTRAINER_PHONECONTACTS EQU const_value - 1

DEF KRIS EQU __trainer_class__
	trainerclass VIOLA ; 1
	const VIOLA1

	trainerclass GRANT ; 2
	const GRANT1
	
	trainerclass KORRINA ; 3
	const KORRINA1
	
	trainerclass RAMOS ; 4
	const RAMOS1

	trainerclass CLEMONT ; 5
	const CLEMONT1

	trainerclass VALERIE ; 6
	const VALERIE1

	trainerclass OLYMPIA ; 7
	const OLYMPIA1

	trainerclass WULFRIC ; 8
	const WULFRIC1

	trainerclass POKEMON_PROF ; 9
	const SYCAMORE1
	
	trainerclass WIKSTROM ; a
	const WIKSTROM1

	trainerclass MALVA ; b
	const MALVA1

	trainerclass DRASNA ; c
	const DRASNA1

	trainerclass SIEBOLD ; d
	const SIEBOLD1

	trainerclass CHAMPION ; e
	const DIANTHA
	
	trainerclass SHAUNA ; f
	const SHAUNA_1_CHESPIN
	const SHAUNA_1_FENNEKIN
	const SHAUNA_1_FROAKIE
	
	trainerclass SERENA ; 10
	const SERENA_1_CHESPIN
	const SERENA_1_FENNEKIN
	const SERENA_1_FROAKIE
	
	trainerclass TIERNO ; 11
	const TIERNO_1
	
	trainerclass TREVOR ; 12
	const TREVOR_1
	
	trainerclass XELOSIC ; 13
	
	trainerclass ALIANA ; 14
	
	trainerclass BRYONY ; 15
	
	trainerclass CELOSIA ; 16
	
	trainerclass MABLE ; 17
	
	trainerclass LYSANDRE ; 18
	
	trainerclass BUG_CATCHER ; 19
	const DON
	
	trainerclass YOUNGSTER ; 1a
	const MIKEY
	const JOEY
	const DAVID
	const ZACHARY
	const KEITA
	const ANTHONY
	
	trainerclass LASS ; 1b
	const ANNA
	const LISE
	const CHARLOTTE
	const ELIN
	const ELSA
	
	trainerclass PICNICKER ; (PRESCHOOLERF) 1c
	const ELLA
	const MIA

	trainerclass CAMPER ; (PRESCHOOLERM) 1d
	const OLIVER
	const ADRIAN
	
	trainerclass SCHOOLBOY ; 1e
	const BRIGHTON
	const RABBIE
	
	trainerclass SCHOOLGIRL ; 1f
	const BRIDGET
	
	trainerclass RISINGSTARM ; 20
	const LOIC
	const HAMISH
	const TYSON
	
	trainerclass RISINGSTARF ; 21
	const LOUISE
	
	trainerclass TWINS ; 22
	const MAYANDJOY1
	const MAYANDJOY2

	trainerclass SKATERM ; 23
	const ROLAND
	const FLORIN
	
	trainerclass SKATERF ; 24
	const CALIDA
	const WINNIE
	
	trainerclass HIKER ; 25

	trainerclass BACKPACKER ; 26
	const HEIKE

	trainerclass GARDENER ; 27
	const WHEATON
	const FABIAN
	const GROVER
	
	trainerclass POKEFANM ; 28
	const GABE
	
	trainerclass POKEFANF ; 29
	const AGNES
	
	trainerclass RICH_BOY ; 2a
	
	trainerclass LADY ; 2b
	
	trainerclass FAIRY_GIRL ; 2c
	
	trainerclass HEX_MANIAC ; 2d
	
	trainerclass PSYCHIC_T ; 2e
	
	trainerclass BLACKBELT_T ; 2f

	trainerclass BATTLE_GIRL ; 30
	
	trainerclass COOLTRAINERM ; 31

	trainerclass COOLTRAINERF ; 32
	
	trainerclass GARCON ; 33
	
	trainerclass WAITRESS ; 34
	
	trainerclass CHEF ; 35
	
	trainerclass BUTLER ; 36
	
	trainerclass MAID ; 37
	
	trainerclass OWNER ; 38
	
	trainerclass GRUNTM ; 39
	
	trainerclass GRUNTF ; 3a
	
	trainerclass ADMINM ; 3b
	
	trainerclass ADMINF ; 3c

	trainerclass BEAUTY ; 3d

	trainerclass POKEMANIAC ; 3e

	trainerclass TOURIST ; 3f
	
	trainerclass ARTIST ; 40
	
	trainerclass BREEDERM ; 41
	
	trainerclass BREEDERF ; 42

	trainerclass SKYTRAINERM ; 43
	
	trainerclass SKYTRAINERF ; 44
	
	trainerclass FISHER ; 45
	
	trainerclass SWIMMERM ; 46

	trainerclass SWIMMERF ; 47
	
	trainerclass RANGERM ; 48
	
	trainerclass RANGERF ; 49
	
	trainerclass MONSIEUR ; 4a
	
	trainerclass MADAME ; 4b
		
	trainerclass PUNK_GUY ; 4c
	
	trainerclass PUNK_GIRL ; 4d
	
	trainerclass WORKER ; 4e
	
	trainerclass VETERANM ; 4f
	
	trainerclass VETERANF ; 50
	
	trainerclass FURISODEGIRL ; 51
	
	trainerclass SCIENTISTM ; 52

	trainerclass SCIENTISTF ; 53
	
	; trainerclass NITA
	
	; trainerclass EVELYN
	
	; trainerclass DANA
	
	; trainerclass MORGAN
	
	trainerclass RIVAL1
	
	trainerclass RIVAL2
	const RIVAL2_2_CHIKORITA
	
	trainerclass CAL
	const CAL1 ; unused
	const CAL2
	const CAL3
	
DEF NUM_TRAINER_CLASSES EQU __trainer_class__ - 1
