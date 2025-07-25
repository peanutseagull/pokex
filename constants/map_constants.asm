MACRO newgroup
;\1: group id
	const_skip
	DEF MAPGROUP_\1 EQU const_value
	DEF CURRENT_NUM_MAPGROUP_MAPS EQUS "NUM_\1_MAPS"
	DEF __map_value__ = 1
ENDM

MACRO map_const
;\1: map id
;\2: width: in blocks
;\3: height: in blocks
	DEF GROUP_\1 EQU const_value
	DEF MAP_\1 EQU __map_value__
	DEF __map_value__ += 1
	DEF \1_WIDTH EQU \2
	DEF \1_HEIGHT EQU \3
ENDM

MACRO endgroup
	DEF {CURRENT_NUM_MAPGROUP_MAPS} EQU __map_value__ - 1
	PURGE CURRENT_NUM_MAPGROUP_MAPS
ENDM

; map group ids
; `newgroup` indexes are for:
; - MapGroupPointers (see data/maps/maps.asm)
; - MapGroupRoofs (see data/maps/roofs.asm)
; - OutdoorSprites (see data/maps/outdoor_sprites.asm)
; - RoofPals (see gfx/tilesets/roofs.pal)
; `map_const` indexes are for the sub-tables of MapGroupPointers (see data/maps/maps.asm)
; Each map also has associated data:
; - attributes (see data/maps/attributes.asm)
; - blocks (see data/maps/blocks.asm)
; - scripts and events (see data/maps/scripts.asm)
	const_def

	newgroup VANIVILLE											  ;  1
	map_const VANIVILLE_TOWN,							   15, 10 ;  1
	map_const PLAYERS_HOUSE_1F,                             5,  4 ;  2
	map_const PLAYERS_HOUSE_2F,                             4,  3 ;  3
	map_const ROUTE_1,                                      8, 17 ;  4
	map_const SERENAS_HOUSE_1F,								5,  4 ;  5		
	map_const SERENAS_HOUSE_2F,								4,  3 ;  6
	map_const NEIGHBOURS_HOUSE,								4,  4 ;  7
	endgroup
	
	newgroup AQUACORDE											  ;  2
	map_const AQUACORDE_TOWN,							   10, 20 ;  1
	map_const ROUTE_2,                                     10, 20 ;  2
	map_const AQUACORDE_POKECENTER_1F,					    5,  4 ;  3
	map_const AQUACORDE_MART,								6,  4 ;  4
	map_const TREVORS_HOUSE, 								4,  4 ;  5
	map_const SHAUNAS_HOUSE,								4,  4 ;  6
	map_const ROUTE_2_GATE,                                 5,  4 ;  7
	endgroup
	
	newgroup DUNGEONS											  ;  3
	map_const SANTALUNE_FOREST,							   20, 24 ;  1
	map_const CONNECTING_CAVE,							   25, 15 ;  2
	map_const GLITTERING_CAVE_ENTRANCE,					   12, 30 ;  3
	map_const GLITTERING_CAVE_DEEP,						   15, 14 ;  4
	endgroup
	
	newgroup SANTALUNE											  ;  4
	map_const SANTALUNE_CITY,							   16, 18 ;  1
	map_const ROUTE_3,									   15, 15 ;  2
	map_const SANTALUNE_POKECENTER_1F,					    5,  4 ;  3
	map_const SANTALUNE_MART,							    6,  4 ;  4
	map_const SANTALUNE_GYM,								5,  3 ;  5
	map_const SANTALUNE_GYM_B1F,						   15, 15 ;  6
	map_const ROUTE_4,									   16, 30 ;  7				
	map_const ROUTE_22,									   20, 12 ;  8
	map_const SANTALUNE_HOUSE_1,							4,  4 ;  9
	map_const SANTALUNE_HOUSE_2,							4,  4 ; 10
	map_const SANTALUNE_HOUSE_3,							4,  4 ; 11
	map_const SANTALUNE_HOUSE_4,							4,  4 ; 12
	map_const EARLS_POKEMON_ACADEMY,                        4,  8 ; 13
	map_const SANTALUNE_BOUTIQUE,						    8,  3 ; 14
	endgroup
	
	newgroup LUMIOSE											  ;  5
	map_const ROUTE_4_LUMIOSE_GATE,						    5,  4 ;  1
	map_const LUMIOSE_SOUTHWEST,						   16, 17 ;  2
	map_const LUMIOSE_SOUTHEAST,						   17, 17 ;  3
	map_const LUMIOSE_SOUTH_POKECENTER_1F,					5,  4 ;  4
	map_const LUMIOSE_SOUTH_MART,							6,  4 ;  5
	map_const SHUTTERBUG_CAFE,								6,  4 ;  6
	map_const CAFE_SOLEIL,									6,  4 ;  7
	map_const CAFE_INTROVERSION,							6,  4 ;  8
	map_const LUMIOSE_SOUTH_OFFICE_GROUND_1,				4,  3 ;  9
	map_const LUMIOSE_SOUTH_OFFICE_GROUND_2,				4,  3 ; 10
	map_const LUMIOSE_SOUTH_OFFICE_GROUND_3,				4,  3 ; 11
	map_const LUMIOSE_SOUTH_OFFICE_UPSTAIRS_1,				4,  4 ; 12
	map_const LUMIOSE_SOUTH_OFFICE_UPSTAIRS_2,				4,  4 ; 13
	map_const LUMIOSE_SOUTH_OFFICE_UPSTAIRS_3,				4,  4 ; 14
	map_const SYCAMORE_LAB_1F,								4,  3 ; 15
	map_const SYCAMORE_LAB_2F,								6,  4 ; 16
	map_const SYCAMORE_LAB_3F,								6,  4 ; 17
	map_const COIFFURE_CLIPS,							    7,  4 ; 18
	map_const RESTAURANT_LE_NAH,							9, 10 ; 19
	map_const TRAINER_PR_STUDIO,						   10, 10 ; 20
	map_const ROUTE_5_LUMIOSE_GATE,							5,  4 ;
	map_const LUMIOSE_NORTHWEST,						   16, 17
	map_const LUMIOSE_NORTHEAST,						   17, 17
	; VERNAL AVENUE
	map_const VERNAL_AVENUE,							    8, 21 ;  
	map_const STONE_EMPORIUM,								6,  4 ; 
	map_const HERBORISTE,									6,  4
	map_const FRISEUR_FURFROU,  							6,  4
	map_const CAFE_WOOF,									6,  4
	map_const CAFE_CLASSE,									6,  4
	map_const BOUTIQUE_COUTURE,								6,  4
	; ESTIVAL AVENUE
	map_const ESTIVAL_AVENUE,							    8, 21 ;
	map_const AUTUMNAL_AVENUE,								8, 21 ;
	map_const HIBERNAL_AVENUE,								8, 21 ;
	map_const ROUGE_PLAZA,								   10, 11 ;
	map_const JAUNE_PLAZA,								   10, 11 ;
	map_const MAGENTA_PLAZA,							   10, 11 ;
	map_const BLEU_PLAZA,								   10, 11 ;
	map_const VERT_PLAZA,								   10, 11 ;
	map_const CENTRICO_PLAZA,							   20, 20 ;
	endgroup
	
	newgroup CAMPHRIER											  ;  6
	map_const ROUTE_5_EAST,								   26, 12 ;  1
	map_const ROUTE_5_WEST,								   13, 25 ;  2
	map_const CAMPHRIER_TOWN,							   15, 18 ;  3
	map_const CAMPHRIER_POKECENTER_1F,						5,  4 ;  4
	map_const CAMPHRIER_MART,								6,  4 ;  5
	map_const CAMPHRIER_HOUSE_1,							4,  4 ;  6
	map_const CAMPHRIER_HOUSE_2,							5,  4 ;  7
	map_const HOTEL_CAMPHRIER_1F,  						   10,  6 ;  8
	map_const HOTEL_CAMPHRIER_2F,						    9,  6 ;  9
	map_const SHABBONEAU_CASTLE,						   13,  9 ; 10
	map_const SHABBONEAU_CASTLE_2F,							5,  9 ; 11
	map_const SHABBONEAU_CASTLE_BEDROOM,					5,  5 ; 12
	map_const ROUTE_6,									   30, 24 ; 13
	map_const BERRY_FIELDS,								   12,  8 ; 14
	map_const BERRY_FIELDS_HOUSE,							4,  4
	map_const ROUTE_7_EAST,								   40, 13 ; 16
	map_const ROUTE_7_WEST,								   13, 25 ; 17
	map_const DAY_CARE,                                     5,  4 ; 15
	; map_const BATTLE_CHATEAU_ENTRANCE,
	; map_const BATTLE_CHATEAU_CORRIDOR,
	; map_const BATTLE_CHATEAU_ROOM_1,
	; map_const BATTLE_CHATEAU_ROOM_2,
	; map_const BATTLE_CHATEAU_ROOM_3,
	map_const PARFUM_PALACE_OUTSIDE,					   32, 10 ; 18
	map_const PARFUM_PALACE_1F,							   25,  7 ; 19
	map_const PARFUM_PALACE_2F,							   25,  7 ; 20
	map_const PARFUM_PALACE_1F_ROOM_1,						5,  6 ; 21
	map_const PARFUM_PALACE_1F_ROOM_2,						5,  6 ; 22
	map_const PARFUM_PALACE_1F_ROOM_3,						5,  6 ; 23
	map_const PARFUM_PALACE_1F_ROOM_4,						5,  6 ; 24
	map_const PARFUM_PALACE_2F_ROOM_1,                      5,  6 ; 25
	map_const PARFUM_PALACE_2F_ROOM_2,                      5,  6 ; 26
	map_const PARFUM_PALACE_2F_ROOM_3,                      5,  6 ; 27
	map_const PARFUM_PALACE_2F_ROOM_4,                      5,  6 ; 28
	map_const PARFUM_PALACE_2F_BALCONY,						8,  6 ; 29
	endgroup
	
	newgroup PARFUMGARDEN										  ; 9
	map_const PARFUM_PALACE_GARDEN_1,					   69,  9 ; 1
	map_const PARFUM_PALACE_GARDEN_2,					   69, 11 ; 2
	map_const PARFUM_PALACE_GARDEN_3,					   69, 11 ; 3
	map_const PARFUM_PALACE_GARDEN_4,					   69, 11 ; 4
	map_const PARFUM_PALACE_GARDEN_5,					   69, 11 ; 5
	map_const PARFUM_PALACE_GARDEN_6,					   69, 11 ; 6
	map_const PARFUM_PALACE_GARDEN_7,					   69,  7 ; 7
	map_const PARFUM_PALACE_GARDEN_MAZE,				   15, 15 ; 8
	endgroup
	
	newgroup AMBRETTE											  ; 10
	map_const ROUTE_8_UPPER,							   16, 39 ;  1
	map_const AMBRETTE_TOWN,							   19, 15 ;  2
	map_const AMBRETTE_POKECENTER_1F,						5,  4 ;  3
	map_const AMBRETTE_MART,								6,  4 ;  4
	map_const AMBRETTE_HOUSE,								4,  4 ;  5
	map_const HOTEL_AMBRETTE_1F,						   10,  6 ;  6
	map_const HOTEL_AMBRETTE_2F,							9,  6 ;  7
	map_const FOSSIL_LAB,								   10,  5 ;  8
	map_const AMBRETTE_AQUARIUM,						    9,  9 ;  9
	map_const ROUTE_9_GATE,									5,  4 ; 10
	map_const ROUTE_9,									   38, 15 ; 11
	endgroup
	
	newgroup CYLLAGE											  ; 11
	map_const ROUTE_8_LOWER,							   19, 18 ;  1
	map_const CYLLAGE_CITY,								    1,  1 ;  2
	map_const CYLLAGE_HOTEL,							   14,  6 ;  
	endgroup
	
	newgroup GEOSENGE											  ; 12
	map_const GEOSENGE_TOWN,							    1,  1 ;  1
	endgroup
	
	newgroup SHALOUR											  ; 13
	map_const SHALOUR_CITY, 							    1,  1 ;  1
	endgroup
	
	newgroup COUMARINE											  ; 14
	map_const COUMARINE_CITY,							    1,  1 ;  1
	endgroup
	
	newgroup LAVERRE											  ; 15
	map_const LAVERRE_CITY,								    1,  1 ;  1
	endgroup
	
	newgroup DENDEMILLE											  ; 16
	map_const DENDEMILLE_TOWN,							    1,  1 ;  1
	endgroup
	
	newgroup ANISTAR											  ; 17
	map_const ANISTAR_CITY,								    1,  1 ;  1
	endgroup
	
	newgroup COURIWAY											  ; 18
	map_const COURIWAY_TOWN,							    1,  1 ;  1
	endgroup
	
	newgroup SNOWBELLE											  ; 19
	map_const SNOWBELLE_CITY,							    1,  1 ;  1
	endgroup
	
	newgroup LEAGUE												  ; 20
	map_const POKEMON_LEAGUE,							    1,  1 ;  1
	endgroup
	
	newgroup KILOUDE											  ; 21
	map_const KILOUDE_CITY,								    1,  1 ;  1
	endgroup
	
	newgroup CABLE_CLUB                                           ; 22
	map_const POKECENTER_2F,                                8,  4 ;  1
	map_const TRADE_CENTER,                                 5,  4 ;  2
	map_const COLOSSEUM,                                    5,  4 ;  3
	map_const TIME_CAPSULE,                                 5,  4 ;  4
	map_const MOBILE_TRADE_ROOM,                            5,  4 ;  5
	map_const MOBILE_BATTLE_ROOM,                           5,  4 ;  6
	endgroup
	
	; newgroup OLIVINE                                              ;  1
	; map_const OLIVINE_POKECENTER_1F,                        5,  4 ;  1
	; map_const OLIVINE_GYM,                                  5,  8 ;  2
	; map_const OLIVINE_TIMS_HOUSE,                           4,  4 ;  3
	; map_const OLIVINE_HOUSE_BETA,                           4,  4 ;  4
	; map_const OLIVINE_PUNISHMENT_SPEECH_HOUSE,              4,  4 ;  5
	; map_const OLIVINE_GOOD_ROD_HOUSE,                       4,  4 ;  6
	; map_const OLIVINE_CAFE,                                 4,  4 ;  7
	; map_const OLIVINE_MART,                                 6,  4 ;  8
	; map_const ROUTE_38_ECRUTEAK_GATE,                       5,  4 ;  9
	; map_const ROUTE_39_BARN,                                4,  4 ; 10
	; map_const ROUTE_39_FARMHOUSE,                           4,  4 ; 11
	; map_const ROUTE_38,                                    20,  9 ; 12
	; map_const ROUTE_39,                                    10, 18 ; 13
	; map_const OLIVINE_CITY,                                20, 18 ; 14
	; endgroup

	; newgroup MAHOGANY                                             ;  2
	; map_const MAHOGANY_RED_GYARADOS_SPEECH_HOUSE,           4,  4 ;  1
	; map_const MAHOGANY_GYM,                                 5,  9 ;  2
	; map_const MAHOGANY_POKECENTER_1F,                       5,  4 ;  3
	; map_const ROUTE_42_ECRUTEAK_GATE,                       5,  4 ;  4
	; map_const ROUTE_42,                                    30,  9 ;  5
	; map_const ROUTE_44,                                    30,  9 ;  6
	; map_const MAHOGANY_TOWN,                               10,  9 ;  7
	; endgroup

	; newgroup DUNGEONS                                             ;  3
	; map_const SPROUT_TOWER_1F,                             10,  8 ;  1
	; map_const SPROUT_TOWER_2F,                             10,  8 ;  2
	; map_const SPROUT_TOWER_3F,                             10,  8 ;  3
	; map_const TIN_TOWER_1F,                                10,  9 ;  4
	; map_const TIN_TOWER_2F,                                10,  9 ;  5
	; map_const TIN_TOWER_3F,                                10,  9 ;  6
	; map_const TIN_TOWER_4F,                                10,  9 ;  7
	; map_const TIN_TOWER_5F,                                10,  9 ;  8
	; map_const TIN_TOWER_6F,                                10,  9 ;  9
	; map_const TIN_TOWER_7F,                                10,  9 ; 10
	; map_const TIN_TOWER_8F,                                10,  9 ; 11
	; map_const TIN_TOWER_9F,                                10,  9 ; 12
	; map_const BURNED_TOWER_1F,                             10,  9 ; 13
	; map_const BURNED_TOWER_B1F,                            10,  9 ; 14
	; map_const NATIONAL_PARK,                               20, 27 ; 15
	; map_const NATIONAL_PARK_BUG_CONTEST,                   20, 27 ; 16
	; map_const RADIO_TOWER_1F,                               9,  4 ; 17
	; map_const RADIO_TOWER_2F,                               9,  4 ; 18
	; map_const RADIO_TOWER_3F,                               9,  4 ; 19
	; map_const RADIO_TOWER_4F,                               9,  4 ; 20
	; map_const RADIO_TOWER_5F,                               9,  4 ; 21
	; map_const RUINS_OF_ALPH_OUTSIDE,                       10, 18 ; 22
	; map_const RUINS_OF_ALPH_HO_OH_CHAMBER,                  4,  5 ; 23
	; map_const RUINS_OF_ALPH_KABUTO_CHAMBER,                 4,  5 ; 24
	; map_const RUINS_OF_ALPH_OMANYTE_CHAMBER,                4,  5 ; 25
	; map_const RUINS_OF_ALPH_AERODACTYL_CHAMBER,             4,  5 ; 26
	; map_const RUINS_OF_ALPH_INNER_CHAMBER,                 10, 14 ; 27
	; map_const RUINS_OF_ALPH_RESEARCH_CENTER,                4,  4 ; 28
	; map_const RUINS_OF_ALPH_HO_OH_ITEM_ROOM,                4,  5 ; 29
	; map_const RUINS_OF_ALPH_KABUTO_ITEM_ROOM,               4,  5 ; 30
	; map_const RUINS_OF_ALPH_OMANYTE_ITEM_ROOM,              4,  5 ; 31
	; map_const RUINS_OF_ALPH_AERODACTYL_ITEM_ROOM,           4,  5 ; 32
	; map_const RUINS_OF_ALPH_HO_OH_WORD_ROOM,               10, 12 ; 33
	; map_const RUINS_OF_ALPH_KABUTO_WORD_ROOM,              10,  7 ; 34
	; map_const RUINS_OF_ALPH_OMANYTE_WORD_ROOM,             10,  8 ; 35
	; map_const RUINS_OF_ALPH_AERODACTYL_WORD_ROOM,          10,  7 ; 36
	; map_const UNION_CAVE_1F,                               10, 18 ; 37
	; map_const UNION_CAVE_B1F,                              10, 18 ; 38
	; map_const UNION_CAVE_B2F,                              10, 18 ; 39
	; map_const SLOWPOKE_WELL_B1F,                           10,  9 ; 40
	; map_const SLOWPOKE_WELL_B2F,                           10,  9 ; 41
	; map_const OLIVINE_LIGHTHOUSE_1F,                       10,  9 ; 42
	; map_const OLIVINE_LIGHTHOUSE_2F,                       10,  9 ; 43
	; map_const OLIVINE_LIGHTHOUSE_3F,                       10,  9 ; 44
	; map_const OLIVINE_LIGHTHOUSE_4F,                       10,  9 ; 45
	; map_const OLIVINE_LIGHTHOUSE_5F,                       10,  9 ; 46
	; map_const OLIVINE_LIGHTHOUSE_6F,                       10,  9 ; 47
	; map_const MAHOGANY_MART_1F,                             4,  4 ; 48
	; map_const TEAM_ROCKET_BASE_B1F,                        15,  9 ; 49
	; map_const TEAM_ROCKET_BASE_B2F,                        15,  9 ; 50
	; map_const TEAM_ROCKET_BASE_B3F,                        15,  9 ; 51
	; map_const ILEX_FOREST,                                 15, 27 ; 52
	; map_const GOLDENROD_UNDERGROUND,                       15, 18 ; 53
	; map_const GOLDENROD_UNDERGROUND_SWITCH_ROOM_ENTRANCES, 15, 18 ; 54
	; map_const GOLDENROD_DEPT_STORE_B1F,                    10,  9 ; 55
	; map_const GOLDENROD_UNDERGROUND_WAREHOUSE,             10,  9 ; 56
	; map_const MOUNT_MORTAR_1F_OUTSIDE,                     20, 18 ; 57
	; map_const MOUNT_MORTAR_1F_INSIDE,                      20, 27 ; 58
	; map_const MOUNT_MORTAR_2F_INSIDE,                      20, 18 ; 59
	; map_const MOUNT_MORTAR_B1F,                            20, 18 ; 60
	; map_const ICE_PATH_1F,                                 20, 18 ; 61
	; map_const ICE_PATH_B1F,                                10, 18 ; 62
	; map_const ICE_PATH_B2F_MAHOGANY_SIDE,                  10,  9 ; 63
	; map_const ICE_PATH_B2F_BLACKTHORN_SIDE,                 5,  9 ; 64
	; map_const ICE_PATH_B3F,                                10,  9 ; 65
	; map_const WHIRL_ISLAND_NW,                              5,  9 ; 66
	; map_const WHIRL_ISLAND_NE,                             10,  9 ; 67
	; map_const WHIRL_ISLAND_SW,                             10,  9 ; 68
	; map_const WHIRL_ISLAND_CAVE,                            5,  9 ; 69
	; map_const WHIRL_ISLAND_SE,                              5,  9 ; 70
	; map_const WHIRL_ISLAND_B1F,                            20, 18 ; 71
	; map_const WHIRL_ISLAND_B2F,                            10, 18 ; 72
	; map_const WHIRL_ISLAND_LUGIA_CHAMBER,                  10,  9 ; 73
	; map_const SILVER_CAVE_ROOM_1,                          10, 18 ; 74
	; map_const SILVER_CAVE_ROOM_2,                          15, 18 ; 75
	; map_const SILVER_CAVE_ROOM_3,                          10, 18 ; 76
	; map_const SILVER_CAVE_ITEM_ROOMS,                      10,  9 ; 77
	; map_const DARK_CAVE_VIOLET_ENTRANCE,                   20, 18 ; 78
	; map_const DARK_CAVE_BLACKTHORN_ENTRANCE,               15, 18 ; 79
	; map_const DRAGONS_DEN_1F,                               5,  9 ; 80
	; map_const DRAGONS_DEN_B1F,                             20, 18 ; 81
	; map_const DRAGON_SHRINE,                                5,  5 ; 82
	; map_const TOHJO_FALLS,                                 15,  9 ; 83
	; map_const DIGLETTS_CAVE,                               10, 18 ; 84
	; map_const MOUNT_MOON,                                  15,  9 ; 85
	; map_const UNDERGROUND_PATH,                             3, 14 ; 86
	; map_const ROCK_TUNNEL_1F,                              15, 18 ; 87
	; map_const ROCK_TUNNEL_B1F,                             15, 18 ; 88
	; map_const SAFARI_ZONE_FUCHSIA_GATE_BETA,                5,  4 ; 89
	; map_const SAFARI_ZONE_BETA,                            10, 18 ; 90
	; map_const VICTORY_ROAD,                                10, 36 ; 91
	; endgroup

	; newgroup ECRUTEAK                                             ;  4
	; map_const ECRUTEAK_TIN_TOWER_ENTRANCE,                 10,  9 ;  1
	; map_const WISE_TRIOS_ROOM,                              4,  4 ;  2
	; map_const ECRUTEAK_POKECENTER_1F,                       5,  4 ;  3
	; map_const ECRUTEAK_LUGIA_SPEECH_HOUSE,                  4,  4 ;  4
	; map_const DANCE_THEATER,                                6,  7 ;  5
	; map_const ECRUTEAK_MART,                                6,  4 ;  6
	; map_const ECRUTEAK_GYM,                                 5,  9 ;  7
	; map_const ECRUTEAK_ITEMFINDER_HOUSE,                    4,  4 ;  8
	; map_const ECRUTEAK_CITY,                               20, 18 ;  9
	; endgroup

	; newgroup BLACKTHORN                                           ;  5
	; map_const BLACKTHORN_GYM_1F,                            5,  9 ;  1
	; map_const BLACKTHORN_GYM_2F,                            5,  9 ;  2
	; map_const BLACKTHORN_DRAGON_SPEECH_HOUSE,               4,  4 ;  3
	; map_const BLACKTHORN_EMYS_HOUSE,                        4,  4 ;  4
	; map_const BLACKTHORN_MART,                              6,  4 ;  5
	; map_const BLACKTHORN_POKECENTER_1F,                     5,  4 ;  6
	; map_const MOVE_DELETERS_HOUSE,                          4,  4 ;  7
	; map_const ROUTE_45,                                    10, 45 ;  8
	; map_const ROUTE_46,                                    10, 18 ;  9
	; map_const BLACKTHORN_CITY,                             20, 18 ; 10
	; endgroup

	; newgroup CINNABAR                                             ;  6
	; map_const CINNABAR_POKECENTER_1F,                       5,  4 ;  1
	; map_const CINNABAR_POKECENTER_2F_BETA,                  8,  4 ;  2
	; map_const ROUTE_19_FUCHSIA_GATE,                        5,  4 ;  3
	; map_const SEAFOAM_GYM,                                  5,  4 ;  4
	; map_const ROUTE_19,                                    10, 18 ;  5
	; map_const ROUTE_20,                                    30,  9 ;  6
	; map_const ROUTE_21,                                    10, 18 ;  7
	; map_const CINNABAR_ISLAND,                             10,  9 ;  8
	; endgroup

	; newgroup CERULEAN                                             ;  7
	; map_const CERULEAN_GYM_BADGE_SPEECH_HOUSE,              4,  4 ;  1
	; map_const CERULEAN_POLICE_STATION,                      4,  4 ;  2
	; map_const CERULEAN_TRADE_SPEECH_HOUSE,                  4,  4 ;  3
	; map_const CERULEAN_POKECENTER_1F,                       5,  4 ;  4
	; map_const CERULEAN_POKECENTER_2F_BETA,                  8,  4 ;  5
	; map_const CERULEAN_GYM,                                 5,  8 ;  6
	; map_const CERULEAN_MART,                                6,  4 ;  7
	; map_const ROUTE_10_POKECENTER_1F,                       5,  4 ;  8
	; map_const ROUTE_10_POKECENTER_2F_BETA,                  8,  4 ;  9
	; map_const POWER_PLANT,                                 10,  9 ; 10
	; map_const BILLS_HOUSE,                                  4,  4 ; 11
	; map_const ROUTE_4,                                     20,  9 ; 12
	; map_const ROUTE_9,                                     30,  9 ; 13
	; map_const ROUTE_10_NORTH,                              10,  9 ; 14
	; map_const ROUTE_24,                                    10,  9 ; 15
	; map_const ROUTE_25,                                    30,  9 ; 16
	; map_const CERULEAN_CITY,                               20, 18 ; 17
	; endgroup

	; newgroup AZALEA                                               ;  8
	; map_const AZALEA_POKECENTER_1F,                         5,  4 ;  1
	; map_const CHARCOAL_KILN,                                4,  4 ;  2
	; map_const AZALEA_MART,                                  6,  4 ;  3
	; map_const KURTS_HOUSE,                                  8,  4 ;  4
	; map_const AZALEA_GYM,                                   5,  8 ;  5
	; map_const ROUTE_33,                                    10,  9 ;  6
	; map_const AZALEA_TOWN,                                 20,  9 ;  7
	; endgroup

	; newgroup LAKE_OF_RAGE                                         ;  9
	; map_const LAKE_OF_RAGE_HIDDEN_POWER_HOUSE,              4,  4 ;  1
	; map_const LAKE_OF_RAGE_MAGIKARP_HOUSE,                  4,  4 ;  2
	; map_const ROUTE_43_MAHOGANY_GATE,                       5,  4 ;  3
	; map_const ROUTE_43_GATE,                                5,  4 ;  4
	; map_const ROUTE_43,                                    10, 27 ;  5
	; map_const LAKE_OF_RAGE,                                20, 18 ;  6
	; endgroup

	; newgroup VIOLET                                               ; 10
	; map_const ROUTE_32,                                    10, 45 ;  1
	; map_const ROUTE_35,                                    10, 18 ;  2
	; map_const ROUTE_36,                                    30,  9 ;  3
	; map_const ROUTE_37,                                    10,  9 ;  4
	; map_const VIOLET_CITY,                                 20, 18 ;  5
	; map_const VIOLET_MART,                                  6,  4 ;  6
	; map_const VIOLET_GYM,                                   5,  8 ;  7
	; map_const VIOLET_NICKNAME_SPEECH_HOUSE,                 4,  4 ;  9
	; map_const VIOLET_POKECENTER_1F,                         5,  4 ; 10
	; map_const VIOLET_KYLES_HOUSE,                           4,  4 ; 11
	; map_const ROUTE_32_RUINS_OF_ALPH_GATE,                  5,  4 ; 12
	; map_const ROUTE_32_POKECENTER_1F,                       5,  4 ; 13
	; map_const ROUTE_35_GOLDENROD_GATE,                      5,  4 ; 14
	; map_const ROUTE_35_NATIONAL_PARK_GATE,                  4,  4 ; 15
	; map_const ROUTE_36_RUINS_OF_ALPH_GATE,                  5,  4 ; 16
	; map_const ROUTE_36_NATIONAL_PARK_GATE,                  5,  4 ; 17
	; endgroup

	; newgroup GOLDENROD                                            ; 11
	; map_const ROUTE_34,                                    10, 27 ;  1
	; map_const GOLDENROD_CITY,                              20, 18 ;  2
	; map_const GOLDENROD_GYM,                               10,  9 ;  3
	; map_const GOLDENROD_BIKE_SHOP,                          4,  4 ;  4
	; map_const GOLDENROD_HAPPINESS_RATER,                    4,  4 ;  5
	; map_const BILLS_FAMILYS_HOUSE,                          4,  4 ;  6
	; map_const GOLDENROD_MAGNET_TRAIN_STATION,              10,  9 ;  7
	; map_const GOLDENROD_FLOWER_SHOP,                        4,  4 ;  8
	; map_const GOLDENROD_PP_SPEECH_HOUSE,                    4,  4 ;  9
	; map_const GOLDENROD_NAME_RATER,                         4,  4 ; 10
	; map_const GOLDENROD_DEPT_STORE_1F,                      8,  4 ; 11
	; map_const GOLDENROD_DEPT_STORE_2F,                      8,  4 ; 12
	; map_const GOLDENROD_DEPT_STORE_3F,                      8,  4 ; 13
	; map_const GOLDENROD_DEPT_STORE_4F,                      8,  4 ; 14
	; map_const GOLDENROD_DEPT_STORE_5F,                      8,  4 ; 15
	; map_const GOLDENROD_DEPT_STORE_6F,                      8,  4 ; 16
	; map_const GOLDENROD_DEPT_STORE_ELEVATOR,                2,  2 ; 17
	; map_const GOLDENROD_DEPT_STORE_ROOF,                    8,  4 ; 18
	; map_const GOLDENROD_GAME_CORNER,                       10,  7 ; 19
	; map_const GOLDENROD_POKECENTER_1F,                      5,  4 ; 20
	; map_const POKECOM_CENTER_ADMIN_OFFICE_MOBILE,          16, 16 ; 21
	; map_const ILEX_FOREST_AZALEA_GATE,                      5,  4 ; 22
	; map_const ROUTE_34_ILEX_FOREST_GATE,                    5,  4 ; 23
	; map_const DAY_CARE,                                     5,  4 ; 24
	; endgroup

	; newgroup VERMILION                                            ; 12
	; map_const ROUTE_6,                                     10,  9 ;  1
	; map_const ROUTE_11,                                    20,  9 ;  2
	; map_const VERMILION_CITY,                              20, 18 ;  3
	; map_const VERMILION_FISHING_SPEECH_HOUSE,               4,  4 ;  4
	; map_const VERMILION_POKECENTER_1F,                      5,  4 ;  5
	; map_const VERMILION_POKECENTER_2F_BETA,                 8,  4 ;  6
	; map_const POKEMON_FAN_CLUB,                             5,  4 ;  7
	; map_const VERMILION_MAGNET_TRAIN_SPEECH_HOUSE,          4,  4 ;  8
	; map_const VERMILION_MART,                               6,  4 ;  9
	; map_const VERMILION_DIGLETTS_CAVE_SPEECH_HOUSE,         4,  4 ; 10
	; map_const VERMILION_GYM,                                5,  9 ; 11
	; map_const ROUTE_6_SAFFRON_GATE,                         5,  4 ; 12
	; map_const ROUTE_6_UNDERGROUND_PATH_ENTRANCE,            4,  4 ; 13
	; endgroup

	; newgroup PALLET                                               ; 13
	; map_const PALLET_TOWN,                                 10,  9 ;  1
	; map_const REDS_HOUSE_1F,                                4,  4 ;  2
	; map_const REDS_HOUSE_2F,                                4,  4 ;  3
	; map_const BLUES_HOUSE,                                  4,  4 ;  4
	; map_const OAKS_LAB,                                     5,  6 ;  5
	; endgroup

	; newgroup PEWTER                                               ; 14
	; map_const ROUTE_3,                                     30,  9 ;  1
	; map_const PEWTER_CITY,                                 20, 18 ;  2
	; map_const PEWTER_NIDORAN_SPEECH_HOUSE,                  4,  4 ;  3
	; map_const PEWTER_GYM,                                   5,  7 ;  4
	; map_const PEWTER_MART,                                  6,  4 ;  5
	; map_const PEWTER_POKECENTER_1F,                         5,  4 ;  6
	; map_const PEWTER_POKECENTER_2F_BETA,                    8,  4 ;  7
	; map_const PEWTER_SNOOZE_SPEECH_HOUSE,                   4,  4 ;  8
	; endgroup

	; newgroup FAST_SHIP                                            ; 15
	; map_const OLIVINE_PORT,                                10, 18 ;  1
	; map_const VERMILION_PORT,                              10, 18 ;  2
	; map_const FAST_SHIP_1F,                                16,  9 ;  3
	; map_const FAST_SHIP_CABINS_NNW_NNE_NE,                  4, 16 ;  4
	; map_const FAST_SHIP_CABINS_SW_SSW_NW,                   4, 16 ;  5
	; map_const FAST_SHIP_CABINS_SE_SSE_CAPTAINS_CABIN,       5, 17 ;  6
	; map_const FAST_SHIP_B1F,                               16,  8 ;  7
	; map_const OLIVINE_PORT_PASSAGE,                        10,  9 ;  8
	; map_const VERMILION_PORT_PASSAGE,                      10,  9 ;  9
	; map_const MOUNT_MOON_SQUARE,                           15,  9 ; 10
	; map_const MOUNT_MOON_GIFT_SHOP,                         4,  4 ; 11
	; map_const TIN_TOWER_ROOF,                              10,  9 ; 12
	; endgroup

	; newgroup INDIGO                                               ; 16
	; map_const ROUTE_23,                                    10,  9 ;  1
	; map_const INDIGO_PLATEAU_POKECENTER_1F,                 9,  7 ;  2
	; map_const WILLS_ROOM,                                   5,  9 ;  3
	; map_const KOGAS_ROOM,                                   5,  9 ;  4
	; map_const BRUNOS_ROOM,                                  5,  9 ;  5
	; map_const KARENS_ROOM,                                  5,  9 ;  6
	; map_const LANCES_ROOM,                                  5, 12 ;  7
	; map_const HALL_OF_FAME,                                 5,  7 ;  8
	; endgroup

	; newgroup FUCHSIA                                              ; 17
	; map_const ROUTE_13,                                    30,  9 ;  1
	; map_const ROUTE_14,                                    10, 18 ;  2
	; map_const ROUTE_15,                                    20,  9 ;  3
	; map_const ROUTE_18,                                    10,  9 ;  4
	; map_const FUCHSIA_CITY,                                20, 18 ;  5
	; map_const FUCHSIA_MART,                                 6,  4 ;  6
	; map_const SAFARI_ZONE_MAIN_OFFICE,                      4,  4 ;  7
	; map_const FUCHSIA_GYM,                                  5,  9 ;  8
	; map_const BILLS_BROTHERS_HOUSE,                         4,  4 ;  9
	; map_const FUCHSIA_POKECENTER_1F,                        5,  4 ; 10
	; map_const FUCHSIA_POKECENTER_2F_BETA,                   8,  4 ; 11
	; map_const SAFARI_ZONE_WARDENS_HOME,                     5,  4 ; 12
	; map_const ROUTE_15_FUCHSIA_GATE,                        5,  4 ; 13
	; endgroup

	; newgroup LAVENDER                                             ; 18
	; map_const ROUTE_8,                                     20,  9 ;  1
	; map_const ROUTE_12,                                    10, 27 ;  2
	; map_const ROUTE_10_SOUTH,                              10,  9 ;  3
	; map_const LAVENDER_TOWN,                               10,  9 ;  4
	; map_const LAVENDER_POKECENTER_1F,                       5,  4 ;  5
	; map_const LAVENDER_POKECENTER_2F_BETA,                  8,  4 ;  6
	; map_const MR_FUJIS_HOUSE,                               5,  4 ;  7
	; map_const LAVENDER_SPEECH_HOUSE,                        4,  4 ;  8
	; map_const LAVENDER_NAME_RATER,                          4,  4 ;  9
	; map_const LAVENDER_MART,                                6,  4 ; 10
	; map_const SOUL_HOUSE,                                   5,  4 ; 11
	; map_const LAV_RADIO_TOWER_1F,                          10,  4 ; 12
	; map_const ROUTE_8_SAFFRON_GATE,                         5,  4 ; 13
	; map_const ROUTE_12_SUPER_ROD_HOUSE,                     4,  4 ; 14
	; endgroup

	; newgroup SILVER                                               ; 19
	; map_const ROUTE_28,                                    20,  9 ;  1
	; map_const SILVER_CAVE_OUTSIDE,                         20, 18 ;  2
	; map_const SILVER_CAVE_POKECENTER_1F,                    5,  4 ;  3
	; map_const ROUTE_28_STEEL_WING_HOUSE,                    4,  4 ;  4
	; endgroup

	; newgroup CELADON                                              ; 21
	; map_const ROUTE_7,                                     10,  9 ;  1
	; map_const ROUTE_16,                                    10,  9 ;  2
	; map_const ROUTE_17,                                    10, 45 ;  3
	; map_const CELADON_CITY,                                20, 18 ;  4
	; map_const CELADON_DEPT_STORE_1F,                        8,  4 ;  5
	; map_const CELADON_DEPT_STORE_2F,                        8,  4 ;  6
	; map_const CELADON_DEPT_STORE_3F,                        8,  4 ;  7
	; map_const CELADON_DEPT_STORE_4F,                        8,  4 ;  8
	; map_const CELADON_DEPT_STORE_5F,                        8,  4 ;  9
	; map_const CELADON_DEPT_STORE_6F,                        8,  4 ; 10
	; map_const CELADON_DEPT_STORE_ELEVATOR,                  2,  2 ; 11
	; map_const CELADON_MANSION_1F,                           4,  5 ; 12
	; map_const CELADON_MANSION_2F,                           4,  5 ; 13
	; map_const CELADON_MANSION_3F,                           4,  5 ; 14
	; map_const CELADON_MANSION_ROOF,                         4,  5 ; 15
	; map_const CELADON_MANSION_ROOF_HOUSE,                   4,  4 ; 16
	; map_const CELADON_POKECENTER_1F,                        5,  4 ; 17
	; map_const CELADON_POKECENTER_2F_BETA,                   8,  4 ; 18
	; map_const CELADON_GAME_CORNER,                         10,  7 ; 19
	; map_const CELADON_GAME_CORNER_PRIZE_ROOM,               3,  3 ; 20
	; map_const CELADON_GYM,                                  5,  9 ; 21
	; map_const CELADON_CAFE,                                 6,  4 ; 22
	; map_const ROUTE_16_FUCHSIA_SPEECH_HOUSE,                4,  4 ; 23
	; map_const ROUTE_16_GATE,                                5,  4 ; 24
	; map_const ROUTE_7_SAFFRON_GATE,                         5,  4 ; 25
	; map_const ROUTE_17_ROUTE_18_GATE,                       5,  4 ; 26
	; endgroup

	; newgroup CIANWOOD                                             ; 22
	; map_const ROUTE_40,                                    10, 18 ;  1
	; map_const ROUTE_41,                                    25, 27 ;  2
	; map_const CIANWOOD_CITY,                               15, 27 ;  3
	; map_const MANIAS_HOUSE,                                 4,  4 ;  4
	; map_const CIANWOOD_GYM,                                 5,  9 ;  5
	; map_const CIANWOOD_POKECENTER_1F,                       5,  4 ;  6
	; map_const CIANWOOD_PHARMACY,                            4,  4 ;  7
	; map_const CIANWOOD_PHOTO_STUDIO,                        4,  4 ;  8
	; map_const CIANWOOD_LUGIA_SPEECH_HOUSE,                  4,  4 ;  9
	; map_const POKE_SEERS_HOUSE,                             4,  4 ; 10
	; map_const BATTLE_TOWER_1F,                              8,  5 ; 11
	; map_const BATTLE_TOWER_BATTLE_ROOM,                     4,  4 ; 12
	; map_const BATTLE_TOWER_ELEVATOR,                        2,  2 ; 13
	; map_const BATTLE_TOWER_HALLWAY,                        11,  2 ; 14
	; map_const ROUTE_40_BATTLE_TOWER_GATE,                   5,  4 ; 15
	; map_const BATTLE_TOWER_OUTSIDE,                        10, 14 ; 16
	; endgroup

	; newgroup VIRIDIAN                                             ; 23
	; map_const ROUTE_2,                                     10, 27 ;  1
	; map_const ROUTE_22,                                    20,  9 ;  2
	; map_const VIRIDIAN_CITY,                               20, 18 ;  3
	; map_const VIRIDIAN_GYM,                                 5,  9 ;  4
	; map_const VIRIDIAN_NICKNAME_SPEECH_HOUSE,               4,  4 ;  5
	; map_const TRAINER_HOUSE_1F,                             5,  7 ;  6
	; map_const TRAINER_HOUSE_B1F,                            5,  8 ;  7
	; map_const VIRIDIAN_MART,                                6,  4 ;  8
	; map_const VIRIDIAN_POKECENTER_1F,                       5,  4 ;  9
	; map_const VIRIDIAN_POKECENTER_2F_BETA,                  8,  4 ; 10
	; map_const ROUTE_2_NUGGET_HOUSE,                         4,  4 ; 11
	; map_const VICTORY_ROAD_GATE,                           10,  9 ; 13
	; endgroup
	
	; newgroup NEW_BARK                                             ; 24
	; map_const ROUTE_26,                                    10, 54 ;  1
	; map_const ROUTE_27,                                    40,  9 ;  2
	; map_const ROUTE_29,                                    30,  9 ;  3
	; map_const NEW_BARK_TOWN,                               10,  9 ;  4
	; map_const ELMS_LAB,                                     5,  6 ;  5
	; map_const PLAYERS_HOUSE_1F,                             5,  4 ;  6
	; map_const PLAYERS_HOUSE_2F,                             4,  3 ;  7
	; map_const PLAYERS_NEIGHBORS_HOUSE,                      4,  4 ;  8
	; map_const ELMS_HOUSE,                                   4,  4 ;  9
	; map_const ROUTE_26_HEAL_HOUSE,                          4,  4 ; 10
	; map_const DAY_OF_WEEK_SIBLINGS_HOUSE,                   4,  4 ; 11
	; map_const ROUTE_27_SANDSTORM_HOUSE,                     4,  4 ; 12
	; map_const ROUTE_29_ROUTE_46_GATE,                       5,  4 ; 13
	; endgroup

	; newgroup SAFFRON                                              ; 25
	; map_const ROUTE_5,                                     10,  9 ;  1
	; map_const SAFFRON_CITY,                                20, 18 ;  2
	; map_const FIGHTING_DOJO,                                5,  6 ;  3
	; map_const SAFFRON_GYM,                                 10,  9 ;  4
	; map_const SAFFRON_MART,                                 6,  4 ;  5
	; map_const SAFFRON_POKECENTER_1F,                        5,  4 ;  6
	; map_const SAFFRON_POKECENTER_2F_BETA,                   8,  4 ;  7
	; map_const MR_PSYCHICS_HOUSE,                            4,  4 ;  8
	; map_const SAFFRON_MAGNET_TRAIN_STATION,                10,  9 ;  9
	; map_const SILPH_CO_1F,                                  8,  4 ; 10
	; map_const COPYCATS_HOUSE_1F,                            4,  4 ; 11
	; map_const COPYCATS_HOUSE_2F,                            5,  3 ; 12
	; map_const ROUTE_5_UNDERGROUND_PATH_ENTRANCE,            4,  4 ; 13
	; map_const ROUTE_5_SAFFRON_GATE,                         5,  4 ; 14
	; map_const ROUTE_5_CLEANSE_TAG_HOUSE,                    4,  4 ; 15
	; endgroup
	
	; newgroup CHERRYGROVE                                          ;
	; map_const ROUTE_30,                                    10, 27 ;  1
	; map_const ROUTE_31,                                    20,  9 ;  2
	; map_const CHERRYGROVE_CITY,                            20,  9 ;  3
	; map_const CHERRYGROVE_MART,                             6,  4 ;  4
	; map_const CHERRYGROVE_POKECENTER_1F,                    5,  4 ;  5
	; map_const CHERRYGROVE_GYM_SPEECH_HOUSE,                 4,  4 ;  6
	; map_const GUIDE_GENTS_HOUSE,                            4,  4 ;  7
	; map_const CHERRYGROVE_EVOLUTION_SPEECH_HOUSE,           4,  4 ;  8
	; map_const ROUTE_30_BERRY_HOUSE,                         4,  4 ;  9
	; map_const MR_POKEMONS_HOUSE,                            4,  4 ; 10
	; map_const ROUTE_31_VIOLET_GATE,                         5,  4 ; 11
	; endgroup

DEF NUM_MAP_GROUPS EQU const_value ; 22
