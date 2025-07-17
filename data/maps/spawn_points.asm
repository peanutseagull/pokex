MACRO spawn
; map, x, y
	map_id \1
	db \2, \3
ENDM

SpawnPoints:
; entries correspond to SPAWN_* constants
	table_width 4, SpawnPoints

	spawn PLAYERS_HOUSE_2F,            3,  3
	spawn SANTALUNE_POKECENTER_1F,     5,  3

	; spawn PALLET_TOWN,                 5,  6
	; spawn VIRIDIAN_CITY,              23, 26
	; spawn PEWTER_CITY,                13, 26
	; spawn CERULEAN_CITY,              19, 22
	; spawn ROUTE_10_NORTH,             11,  2
	; spawn VERMILION_CITY,              9,  6
	; spawn LAVENDER_TOWN,               5,  6
	; spawn SAFFRON_CITY,                9, 30
	; spawn CELADON_CITY,               29, 10
	; spawn FUCHSIA_CITY,               19, 28
	; spawn CINNABAR_ISLAND,            11, 12
	; spawn ROUTE_23,                    9,  6

	spawn VANIVILLE_TOWN,			  17,  6
	spawn AQUACORDE_TOWN,			  15, 30
	spawn SANTALUNE_CITY,			  23, 28
	spawn LUMIOSE_SOUTHEAST,		   1, 14
	spawn CAMPHRIER_TOWN,			  21, 24
	; spawn CYLLAGE_CITY,
	spawn AMBRETTE_TOWN,			  19,  6
	; spawn GEOSENGE_TOWN,
	; spawn SHALOUR_CITY,
	; spawn COUMARINE_CITY,
	; spawn LAVERRE_CITY,
	; spawn DENDEMILLE_TOWN,
	; spawn ANISTAR_CITY,
	; spawn COURIWAY_TOWN,
	; spawn SNOWBELLE_CITY,
	; spawn POKEMON_LEAGUE,
	; spawn KILOUDE_CITY,

	spawn N_A,                        -1, -1

	assert_table_length NUM_SPAWNS + 1
