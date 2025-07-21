MACRO treemon_map
	map_id \1
	db \2 ; treemon set
ENDM

TreeMonMaps:
;	treemon_map ROUTE_26,                  TREEMON_SET_KANTO
;	treemon_map ROUTE_27,                  TREEMON_SET_KANTO
	; treemon_map ROUTE_28,                  TREEMON_SET_CITY
;	treemon_map ROUTE_29,                  TREEMON_SET_ROUTE
;	treemon_map ROUTE_30,                  TREEMON_SET_ROUTE
;	treemon_map ROUTE_31,                  TREEMON_SET_ROUTE
	; treemon_map ROUTE_32,                  TREEMON_SET_KANTO
	; treemon_map ROUTE_33,                  TREEMON_SET_TOWN
	; treemon_map ROUTE_34,                  TREEMON_SET_ROUTE
	; treemon_map ROUTE_35,                  TREEMON_SET_ROUTE
	; treemon_map ROUTE_36,                  TREEMON_SET_ROUTE
	; treemon_map ROUTE_37,                  TREEMON_SET_ROUTE
	; treemon_map ROUTE_38,                  TREEMON_SET_ROUTE
	; treemon_map ROUTE_39,                  TREEMON_SET_ROUTE
	; treemon_map ROUTE_40,                  TREEMON_SET_CITY
	; treemon_map ROUTE_41,                  TREEMON_SET_CITY
	; treemon_map ROUTE_42,                  TREEMON_SET_TOWN
	; treemon_map ROUTE_43,                  TREEMON_SET_LAKE
	; treemon_map ROUTE_44,                  TREEMON_SET_CANYON
	; treemon_map ROUTE_45,                  TREEMON_SET_CANYON
	; treemon_map ROUTE_46,                  TREEMON_SET_CANYON
;	treemon_map NEW_BARK_TOWN,             TREEMON_SET_CITY
;	treemon_map CHERRYGROVE_CITY,          TREEMON_SET_CITY
	; treemon_map VIOLET_CITY,               TREEMON_SET_CITY
	; treemon_map AZALEA_TOWN,               TREEMON_SET_TOWN
	; treemon_map CIANWOOD_CITY,             TREEMON_SET_CITY
	; treemon_map GOLDENROD_CITY,            TREEMON_SET_CITY
	; treemon_map OLIVINE_CITY,              TREEMON_SET_CITY
	; treemon_map ECRUTEAK_CITY,             TREEMON_SET_CITY
	; treemon_map MAHOGANY_TOWN,             TREEMON_SET_CITY
	; treemon_map LAKE_OF_RAGE,              TREEMON_SET_LAKE
	; treemon_map BLACKTHORN_CITY,           TREEMON_SET_CITY
	; treemon_map SILVER_CAVE_OUTSIDE,       TREEMON_SET_CITY
	; treemon_map ILEX_FOREST,               TREEMON_SET_FOREST
	db -1

RockMonMaps:
	treemon_map AMBRETTE_TOWN,			   TREEMON_SET_ROCK1
	treemon_map ROUTE_8_LOWER,			   TREEMON_SET_ROCK1
	; treemon_map ROUTE_12,				   TREEMON_SET_ROCK1
	; treemon_map AZURE_BAY,				   TREEMON_SET_ROCK1
	treemon_map CYLLAGE_CITY,			   TREEMON_SET_ROCK2
	; treemon_map ROUTE_13,				   TREEMON_SET_ROCK3
	; treemon_map ROUTE_18,				   TREEMON_SET_ROCK4
	; treemon_map TERMINUS_CAVE,			   TREEMON_SET_ROCK4
	; treemon_map VICTORY_ROAD,			   TREEMON_SET_ROCK4
	treemon_map GLITTERING_CAVE_DEEP,	   TREEMON_SET_ROCK5
	db -1
