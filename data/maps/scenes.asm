MACRO scene_var
; map, variable
	map_id \1
	dw \2
ENDM

MapScenes::
	scene_var POKECENTER_2F,                               wPokecenter2FSceneID
	scene_var TRADE_CENTER,                                wTradeCenterSceneID
	scene_var COLOSSEUM,                                   wColosseumSceneID
	scene_var TIME_CAPSULE,                                wTimeCapsuleSceneID
	; scene_var INDIGO_PLATEAU_POKECENTER_1F,                wIndigoPlateauPokecenter1FSceneID
	; scene_var WILLS_ROOM,                                  wWillsRoomSceneID
	; scene_var KOGAS_ROOM,                                  wKogasRoomSceneID
	; scene_var BRUNOS_ROOM,                                 wBrunosRoomSceneID
	; scene_var KARENS_ROOM,                                 wKarensRoomSceneID
	; scene_var LANCES_ROOM,                                 wLancesRoomSceneID
	; scene_var HALL_OF_FAME,                                wHallOfFameSceneID
	scene_var PLAYERS_HOUSE_1F,                            wPlayersHouse1FSceneID
	; scene_var BATTLE_TOWER_1F,                             wBattleTower1FSceneID
	; scene_var BATTLE_TOWER_BATTLE_ROOM,                    wBattleTowerBattleRoomSceneID
	; scene_var BATTLE_TOWER_ELEVATOR,                       wBattleTowerElevatorSceneID
	; scene_var BATTLE_TOWER_HALLWAY,                        wBattleTowerHallwaySceneID
	scene_var MOBILE_TRADE_ROOM,                           wMobileTradeRoomSceneID
	scene_var MOBILE_BATTLE_ROOM,                          wMobileBattleRoomSceneID
	scene_var VANIVILLE_TOWN,							   wVanivilleTownSceneID
	scene_var SERENAS_HOUSE_2F,							   wSerenasHouseSceneID
	scene_var ROUTE_1,									   wRoute1SceneID
	scene_var ROUTE_22,									   wRoute22SceneID
	scene_var ROUTE_4_LUMIOSE_GATE,						   wRoute4LumioseGateSceneID
	scene_var SANTALUNE_CITY,							   wSantaluneCitySceneID
	scene_var SYCAMORE_LAB_3F,							   wSycamoreLab3FSceneID
	scene_var SYCAMORE_LAB_1F,							   wSycamoreLab1FSceneID
	scene_var CAFE_SOLEIL,								   wCafeSoleilSceneID
	scene_var ROUTE_5_EAST,								   wRoute5EastSceneID
	scene_var CAMPHRIER_TOWN,							   wCamphrierTownSceneID
	scene_var SHABBONEAU_CASTLE,						   wShabboneauCastleSceneID
	scene_var ROUTE_7_EAST,								   wRoute7EastSceneID
	scene_var BERRY_FIELDS,                                wBerryFieldsSceneID
	scene_var PARFUM_PALACE_1F,                            wParfumPalace1FSceneID
	scene_var PARFUM_PALACE_GARDEN_MAZE,                   wParfumPalaceGardenMazeSceneID
	scene_var PARFUM_PALACE_2F_BALCONY,					   wParfumPalace2FBalconySceneID
	scene_var FOSSIL_LAB,								   wFossilLabSceneID
	scene_var GLITTERING_CAVE_DEEP,						   wGlitteringCaveDeepSceneID
	db -1 ; end
