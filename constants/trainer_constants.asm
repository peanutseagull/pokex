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
	const TYLER
	const JACOB
	
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
	const RODERICK
	const JEROME

	trainerclass GARDENER ; 27
	const WHEATON
	const FABIAN
	const GROVER
	
	trainerclass POKEFANM ; 28
	const GABE
	
	trainerclass POKEFANF ; 29
	const AGNES
	
	trainerclass POKEFAN_FAMILY ; 2a
	const JANANDERIN1
	const JANANDERIN2
	
	trainerclass RICH_BOY ; 2b
	
	trainerclass LADY ; 2c
	
	trainerclass FAIRY_GIRL ; 2d
	
	trainerclass HEX_MANIAC ; 2e
	
	trainerclass MYSTERY_SISTERS ; 2f
	
	trainerclass PSYCHIC_T ; 30
	
	trainerclass BLACKBELT_T ; 31
	
	trainerclass BRAINS_BRAWN ; 32

	trainerclass BATTLE_GIRL ; 33
	
	trainerclass COOLTRAINERM ; 34 (ACETRAINERM)

	trainerclass COOLTRAINERF ; 35 (ACETRAINERF)
	
	trainerclass COOL_DUO ; 36 (ACE DUO)
	
	trainerclass GARCON ; 37
	
	trainerclass WAITRESS ; 38
	
	trainerclass CHEF ; 39
	
	trainerclass BUTLER ; 3a
	
	trainerclass MAID ; 3b
	
	trainerclass OWNER ; 3c
	
	trainerclass GRUNTM ; 3d
	
	trainerclass GRUNTF ; 3e
	
	trainerclass ADMINM ; 3f
	
	trainerclass ADMINF ; 40

	trainerclass BEAUTY ; 41
	const BRIGITTE

	trainerclass POKEMANIAC ; 42

	trainerclass TOURISTM ; 43
	const TAKEMI
	
	trainerclass TOURISTF ; 44
	const MARI
	
	trainerclass TOURIST_LADY ; 45
	const HIROKO
	const ERIKO
	
	trainerclass HONEYMOONERS ; 46
	
	trainerclass ARTISTM ; 47
	
	trainerclass ARTISTF ; 48
	
	trainerclass ARTIST_FAMILY ; 49
	
	trainerclass BREEDERM ; 4a
	
	trainerclass BREEDERF ; 4b

	trainerclass SKYTRAINERM ; 4c
	
	trainerclass SKYTRAINERF ; 4d
	
	trainerclass FISHER ; 4e
	
	trainerclass SWIMMERM ; 4f

	trainerclass SWIMMERF ; 50
	
	trainerclass RANGERM ; 51
	
	trainerclass RANGERF ; 52
	
	trainerclass RANGERS ; 53
	
	trainerclass MONSIEUR ; 54
	
	trainerclass MADAME ; 55

	trainerclass PUNK_GUY ; 56
	
	trainerclass PUNK_GIRL ; 57
	
	trainerclass PUNK_COUPLE ; 58
	
	trainerclass WORKER ; 59
	
	trainerclass VETERANM ; 5a
	
	trainerclass VETERANF ; 5b
	
	trainerclass FURISODEGIRL ; 5c
	
	trainerclass SCIENTISTM ; 5d

	trainerclass SCIENTISTF ; 5e
	
	trainerclass DRIVER ; 5f
	
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
