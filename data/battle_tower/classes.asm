BattleTowerTrainers:
; The trainer class is not used in Crystal 1.0 due to a bug.
; Instead, the sixth character in the trainer's name is used.
; See BattleTowerText in engine/events/battle_tower/trainer_text.asm.
	table_width (NAME_LENGTH - 1) + 1, BattleTowerTrainers
	; name, class
	db "HANSON@@@@", FISHER
	db "SAWYER@@@@", POKEMANIAC
	db "MASUDA@@@@", FISHER
	db "NICKEL@@@@", FISHER
	db "OLSON@@@@@", POKEFANM
	db "ZABOROWSKI", LASS
	db "WRIGHT@@@@", YOUNGSTER
	db "ALEXANDER@", HIKER
	db "KAWAKAMI@@", FISHER
	db "BICKETT@@@", POKEFANM
	db "SAITO@@@@@", FISHER
	db "CRAWFORD@@", FISHER
	db "DIAZ@@@@@@", PICNICKER
	db "ERICKSON@@", FISHER
	db "FAIRFIELD@", FISHER
	db "HUNTER@@@@", POKEFANF
	db "HILL@@@@@@", FISHER
	db "JAVIER@@@@", SWIMMERF
	db "KAUFMAN@@@", SWIMMERM
	db "LANCASTER@", FISHER
	db "McMAHILL@@", CAMPER
	assert_table_length BATTLETOWER_NUM_UNIQUE_MON
; The following can only be sampled in Crystal 1.1.
	db "OBRIEN@@@@", FISHER
	db "FROST@@@@@", BEAUTY
	db "MORSE@@@@@", FISHER
	db "YUFUNE@@@@", BLACKBELT_T
	db "RAJAN@@@@@", COOLTRAINERF
	db "RODRIGUEZ@", FISHER
	db "SANTIAGO@@", PSYCHIC_T
	db "STOCK@@@@@", POKEFANM
	db "THURMAN@@@", FISHER
	db "VALENTINO@", BEAUTY
	db "WAGNER@@@@", CAMPER
	db "YATES@@@@@", FISHER
	db "ANDREWS@@@", PICNICKER
	db "BAHN@@@@@@", POKEMANIAC
	db "MORI@@@@@@", FISHER
	db "BUCKMAN@@@", FISHER
	db "COBB@@@@@@", SCHOOLBOY
	db "HUGHES@@@@", FISHER
	db "ARITA@@@@@", FISHER
	db "EASTON@@@@", PSYCHIC_T
	db "FREEMAN@@@", CAMPER
	db "GIESE@@@@@", LASS
	db "HATCHER@@@", FISHER
	db "JACKSON@@@", POKEFANF
	db "KAHN@@@@@@", POKEMANIAC
	db "LEONG@@@@@", YOUNGSTER
	db "MARINO@@@@", FISHER
	db "NEWMAN@@@@", FISHER
	db "NGUYEN@@@@", BLACKBELT_T
	db "OGDEN@@@@@", FISHER
	db "PARK@@@@@@", COOLTRAINERF
	db "RAINE@@@@@", SWIMMERM
	db "SELLS@@@@@", FISHER
	db "ROCKWELL@@", FISHER
	db "THORNTON@@", LASS
	db "TURNER@@@@", FISHER
	db "VAN DYKE@@", FISHER
	db "WALKER@@@@", SCHOOLBOY
	db "MEYER@@@@@", SWIMMERF
	db "JOHNSON@@@", YOUNGSTER
	db "ADAMS@@@@@", FISHER
	db "SMITH@@@@@", BUG_CATCHER
	db "TAJIRI@@@@", BUG_CATCHER
	db "BAKER@@@@@", POKEMANIAC
	db "COLLINS@@@", FISHER
	db "SMART@@@@@", FISHER
	db "DYKSTRA@@@", SWIMMERF
	db "EATON@@@@@", FISHER
	db "WONG@@@@@@", FISHER
	assert_table_length BATTLETOWER_NUM_UNIQUE_TRAINERS
