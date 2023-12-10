; What music plays when a trainer notices you

TrainerEncounterMusic::
; entries correspond to trainer classes (see constants/trainer_constants.asm)
	table_width 1, TrainerEncounterMusic
	db MUSIC_HIKER_ENCOUNTER       ; none
	db MUSIC_YOUNGSTER_ENCOUNTER   ; viola
	db MUSIC_YOUNGSTER_ENCOUNTER   ; grant
	db MUSIC_LASS_ENCOUNTER        ; korrina
	db MUSIC_OFFICER_ENCOUNTER     ; ramos
	db MUSIC_OFFICER_ENCOUNTER     ; clemont
	db MUSIC_LASS_ENCOUNTER        ; valerie
	db MUSIC_OFFICER_ENCOUNTER     ; olympia
	db MUSIC_BEAUTY_ENCOUNTER      ; wulfric
	db MUSIC_HIKER_ENCOUNTER       ; pokemon_prof
	db MUSIC_HIKER_ENCOUNTER       ; wikstrom
	db MUSIC_OFFICER_ENCOUNTER     ; malva
	db MUSIC_HIKER_ENCOUNTER       ; drasna
	db MUSIC_HIKER_ENCOUNTER       ; siebold
	db MUSIC_OFFICER_ENCOUNTER     ; champion
	db MUSIC_RIVAL_ENCOUNTER       ; shauna
	db MUSIC_RIVAL_ENCOUNTER       ; serena
	db MUSIC_RIVAL_ENCOUNTER	   ; tierno
	db MUSIC_RIVAL_ENCOUNTER       ; trevor
	db MUSIC_ROCKET_ENCOUNTER      ; xelosic
	db MUSIC_ROCKET_ENCOUNTER      ; aliana
	db MUSIC_ROCKET_ENCOUNTER      ; bryony
	db MUSIC_ROCKET_ENCOUNTER      ; celosia
	db MUSIC_ROCKET_ENCOUNTER      ; mable
	db MUSIC_ROCKET_ENCOUNTER      ; lysandre
	db MUSIC_YOUNGSTER_ENCOUNTER   ; bug_catcher
	db MUSIC_YOUNGSTER_ENCOUNTER   ; youngster
	db MUSIC_LASS_ENCOUNTER        ; lass
	db MUSIC_LASS_ENCOUNTER        ; picnicker (preschoolerf)
	db MUSIC_YOUNGSTER_ENCOUNTER   ; camper (preschoolerm)
	db MUSIC_YOUNGSTER_ENCOUNTER   ; schoolboy
	db MUSIC_LASS_ENCOUNTER        ; schoolgirl
	db MUSIC_HIKER_ENCOUNTER       ; risingstarm
	db MUSIC_BEAUTY_ENCOUNTER      ; risingstarf
	db MUSIC_LASS_ENCOUNTER        ; twins
	db MUSIC_HIKER_ENCOUNTER       ; skaterm
	db MUSIC_BEAUTY_ENCOUNTER      ; skaterf
	db MUSIC_HIKER_ENCOUNTER       ; hiker
	db MUSIC_HIKER_ENCOUNTER       ; backpacker
	db MUSIC_HIKER_ENCOUNTER       ; gardener
	db MUSIC_HIKER_ENCOUNTER       ; pokefanm
	db MUSIC_HIKER_ENCOUNTER       ; pokefanm
	db MUSIC_YOUNGSTER_ENCOUNTER   ; richboy
	db MUSIC_LASS_ENCOUNTER        ; lady
	db MUSIC_POKEMANIAC_ENCOUNTER  ; fairygirl
	db MUSIC_POKEMANIAC_ENCOUNTER  ; hexmaniac
	db MUSIC_YOUNGSTER_ENCOUNTER   ; psychic_t
	db MUSIC_HIKER_ENCOUNTER       ; blackbelt_t
	db MUSIC_HIKER_ENCOUNTER       ; battlegirl
	db MUSIC_HIKER_ENCOUNTER       ; cooltrainerm
	db MUSIC_BEAUTY_ENCOUNTER      ; cooltrainerf
	db MUSIC_HIKER_ENCOUNTER       ; garcon
	db MUSIC_BEAUTY_ENCOUNTER      ; waitress
	db MUSIC_OFFICER_ENCOUNTER     ; chef
	db MUSIC_HIKER_ENCOUNTER       ; butler
	db MUSIC_BEAUTY_ENCOUNTER      ; maid	
	db MUSIC_OFFICER_ENCOUNTER     ; owner
	db MUSIC_ROCKET_ENCOUNTER      ; gruntm
	db MUSIC_ROCKET_ENCOUNTER      ; gruntf
	db MUSIC_ROCKET_ENCOUNTER      ; adminm
	db MUSIC_ROCKET_ENCOUNTER      ; adminf
	db MUSIC_BEAUTY_ENCOUNTER      ; beauty
	db MUSIC_POKEMANIAC_ENCOUNTER  ; pokemaniac
	db MUSIC_BEAUTY_ENCOUNTER      ; tourist
	db MUSIC_BEAUTY_ENCOUNTER      ; artist
	db MUSIC_HIKER_ENCOUNTER       ; breederm
	db MUSIC_BEAUTY_ENCOUNTER      ; breederf
	db MUSIC_HIKER_ENCOUNTER       ; skytrainerm
	db MUSIC_BEAUTY_ENCOUNTER      ; skytrainerf
	db MUSIC_HIKER_ENCOUNTER       ; fisher
	db MUSIC_HIKER_ENCOUNTER       ; swimmerm
	db MUSIC_BEAUTY_ENCOUNTER      ; swimmerf
	db MUSIC_HIKER_ENCOUNTER       ; rangerm
	db MUSIC_BEAUTY_ENCOUNTER      ; rangerf
	db MUSIC_HIKER_ENCOUNTER       ; monsieur
	db MUSIC_BEAUTY_ENCOUNTER      ; madame
	db MUSIC_POKEMANIAC_ENCOUNTER  ; punkguy
	db MUSIC_POKEMANIAC_ENCOUNTER  ; punkgirl
	db MUSIC_HIKER_ENCOUNTER       ; worker
	db MUSIC_HIKER_ENCOUNTER       ; veteranm
	db MUSIC_BEAUTY_ENCOUNTER      ; veteranf
	db MUSIC_KIMONO_ENCOUNTER      ; furisodegirl
	db MUSIC_POKEMANIAC_ENCOUNTER  ; scientistm
	db MUSIC_POKEMANIAC_ENCOUNTER  ; scientistf
	db MUSIC_RIVAL_ENCOUNTER	   ; rival1
	db MUSIC_RIVAL_ENCOUNTER	   ; rival2
	db MUSIC_YOUNGSTER_ENCOUNTER   ; cal
	assert_table_length NUM_TRAINER_CLASSES + 1
