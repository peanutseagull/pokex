MACRO landmark
; x, y, name
	db \1 + 8, \2 + 16
	dw \3
ENDM

Landmarks:
; entries correspond to constants/landmark_constants.asm
	table_width 4, Landmarks
	landmark  -8, -16, SpecialMapName
	landmark 108, 132, VanivilleTownName
	landmark 108, 124, Route1Name
	landmark 108, 116, AquacordeTownName
	landmark 100, 116, Route2Name
	landmark 100, 108, SantaluneForestName
	landmark 100, 100, Route3Name
	landmark 100,  92, SantaluneCityName
	landmark 100,  84, Route4Name
	landmark 108,  92, Route22Name
	landmark  92,  76, LumioseCityName
	landmark  84,  92, Route5Name
	landmark  76, 100, CamphrierTownName
	landmark  68,  92, Route6Name
	landmark  68,  84, ParfumPalaceName
	landmark  64, 100, Route7Name
	landmark  68, 108, BerryFieldsName
	landmark  60,  92, BattleChateauName
	landmark  52, 100, ConnectingCaveName
	landmark  44, 112, Route8Name
	landmark  52, 124, AmbretteTownName
	landmark  64, 124, Route9Name
	landmark  76, 124, GlitteringCaveName
	landmark  36, 100, CyllageCityName
	landmark  36,  88, Route10Name
	landmark  28,  84, GeosengeTownName
	landmark  28,  72, Route11Name
	landmark  36,  68, ReflectionCaveName
	landmark  36,  60, ShalourCityName
	landmark  36,  52, TowerOfMasteryName
	landmark  52,  60, Route12Name	
	landmark  68,  44, AzureBayName
	landmark  52,  44, SeaSpiritsDenName
	landmark  68,  60, CoumarineCityName
	landmark  76,  64, Route13Name
	landmark  68,  68, PowerPlantName
	landmark  92,  52, Route14Name	
	landmark  92,  36, LaverreCityName
	landmark  92,  28, PokeballFactoryName
	landmark 116,  36, Route15Name
	landmark 108,  44, LostHotelName
	landmark 108,  64, Route16Name
	landmark 116,  60, DendemilleTownName
	landmark 124,  52, FrostCavernName
	landmark 132,  60, Route17Name
	landmark 140,  68, AnistarCityName
	landmark 148,  72, Route18Name
	landmark 148,  60, TerminusCaveName
	landmark 148,  84, CouriwayTownName
	landmark 148,  92, Route19Name
	landmark 140,  92, SnowbelleCityName
	landmark 140, 104, Route20Name
	landmark 140, 116, PokemonVillageName
	landmark 132,  92, Route21Name
	landmark 124,  92, VictoryRoadName
	landmark 124,  84, PokemonLeagueName
	landmark 124, 124, KiloudeCityName
	; landmark  85,  58, SproutTowerName
	; landmark  84,  92, Route32Name
	; landmark  76,  76, RuinsOfAlphName
	; landmark  84, 124, UnionCaveName
	; landmark  82, 124, Route33Name
	; landmark  68, 124, AzaleaTownName
	; landmark  70, 122, SlowpokeWellName
	; landmark  52, 120, IlexForestName
	; landmark  52, 112, Route34Name
	; landmark  52,  92, GoldenrodCityName
	; landmark  52,  76, Route35Name
	; landmark  64,  60, Route36Name
	; landmark  68,  52, Route37Name
	; landmark  68,  44, EcruteakCityName
	; landmark  70,  42, TinTowerName
	; landmark  66,  42, BurnedTowerName
	; landmark  52,  44, Route38Name
	; landmark  36,  48, Route39Name
	; landmark  36,  60, OlivineCityName
	; landmark  38,  62, LighthouseName
	; landmark  28,  56, BattleTowerName
	; landmark  28,  64, Route40Name
	; landmark  28,  92, WhirlIslandsName
	; landmark  28, 100, Route41Name
	; landmark  20, 100, CianwoodCityName
	; landmark  92,  44, Route42Name
	; landmark  84,  44, MtMortarName
	; landmark 108,  44, MahoganyTownName
	; landmark 108,  36, Route43Name
	; landmark 108,  28, LakeOfRageName
	; landmark 120,  44, Route44Name
	; landmark 130,  38, IcePathName
	; landmark 132,  44, BlackthornCityName
	; landmark 132,  36, DragonsDenName
	; landmark 132,  64, Route45Name
	; landmark 112,  72, DarkCaveName
	; landmark 124,  88, Route46Name
	assert_table_length KANTO_LANDMARK
	; landmark  52, 108, PalletTownName
	; landmark  52,  92, Route1Name
	; landmark  52,  76, ViridianCityName
	; landmark  52,  64, Route2Name
	; landmark  52,  52, PewterCityName
	; landmark  64,  52, Route3Name
	; landmark  76,  52, MtMoonName
	; landmark  88,  52, Route4Name
	; landmark 100,  52, CeruleanCityName
	; landmark 100,  44, Route24Name
	; landmark 108,  36, Route25Name
	; landmark 100,  60, Route5Name
	; landmark 100,  76, Route6Name
	; landmark 100,  84, VermilionCityName
	; landmark  88,  60, DiglettsCaveName
	; landmark  88,  68, Route7Name
	; landmark 116,  68, Route8Name
	; landmark 116,  52, Route9Name
	; landmark 132,  52, RockTunnelName
	; landmark 132,  56, Route10Name
	; landmark 132,  68, LavenderTownName
	; landmark  76,  68, CeladonCityName
	; landmark 100,  68, SaffronCityName
	; landmark 116,  84, Route11Name
	; landmark 132,  80, Route12Name
	; landmark 124, 100, Route13Name
	; landmark 116, 112, Route14Name
	; landmark 104, 116, Route15Name
	; landmark  68,  68, Route16Name
	; landmark  68,  92, Route17Name
	; landmark  80, 116, Route18Name
	; landmark  92, 116, FuchsiaCityName
	; landmark  92, 128, Route19Name
	; landmark  76, 132, Route20Name
	; landmark  68, 132, SeafoamIslandsName
	; landmark  52, 132, CinnabarIslandName
	; landmark  52, 120, Route21Name
	; landmark  36,  68, Route22Name
	; landmark  28,  44, Route23Name
	; landmark  28,  92, Route26Name
	; landmark  20, 100, Route27Name
	; landmark  12, 100, TohjoFallsName
	; landmark  20,  68, Route28Name
	landmark   0,   0, UndergroundName
	landmark   0,   0, LavRadioTowerName
	landmark   0,   0, IndigoPlateauName
	landmark   0,   0, FastShipName
	landmark   0,   0, SilverCaveName
	landmark   0,   0, NationalParkName
	landmark   0,   0, RadioTowerName
	landmark   0,   0, VernalAvenueName
	landmark   0,   0, EstivalAvenueName
	landmark   0,   0, AutumnalAvenueName
	landmark   0,   0, HibernalAvenueName
	landmark   0,   0, BleuPlazaName
	landmark   0,   0, VertPlazaName
	landmark   0,   0, MagentaPlazaName
	landmark   0,   0, RougePlazaName
	landmark   0,   0, JaunePlazaName
	landmark   0,   0, CentricoPlazaName
	assert_table_length NUM_LANDMARKS

VanivilleTownName:	 db "VANIVILLE¯TOWN@"
AquacordeTownName:   db "AQUACORDE¯TOWN@"
SantaluneForestName: db "SANTALUNE¯FOREST@"
SantaluneCityName:   db "SANTALUNE¯CITY@"
LumioseCityName:	 db "LUMIOSE¯CITY@"
VernalAvenueName:	 db "VERNAL¯AVENUE@"
EstivalAvenueName:	 db "ESTIVAL¯AVENUE@"
AutumnalAvenueName:  db "AUTUMNAL¯AVENUE@"
HibernalAvenueName:  db "HIBERNAL¯AVENUE@"
BleuPlazaName:		 db "BLEU¯PLAZA@"
VertPlazaName:		 db "VERT¯PLAZA@"
MagentaPlazaName:	 db "MAGENTA¯PLAZA@"
RougePlazaName:		 db "ROUGE¯PLAZA@"
JaunePlazaName:		 db "JAUNE¯PLAZA@"
CentricoPlazaName:   db "CENTRICO¯PLAZA@"
CamphrierTownName:	 db "CAMPHRIER¯TOWN@"
CyllageCityName:	 db "CYLLAGE¯CITY@"
AmbretteTownName:	 db "AMBRETTE¯TOWN@"
GeosengeTownName:	 db "GEOSENGE¯TOWN@"
ShalourCityName:	 db "SHALOUR¯CITY@"
CoumarineCityName:	 db "COUMARINE¯CITY@"
LaverreCityName:	 db "LAVERRE¯CITY@"
DendemilleTownName:  db "DENDEMILLE¯TOWN@"
AnistarCityName:	 db "ANISTAR¯CITY@"
CouriwayTownName:	 db "COURIWAY¯TOWN@"
SnowbelleCityName:	 db "SNOWBELLE¯CITY@"
PokemonLeagueName:	 db "#MON¯LEAGUE@"
KiloudeCityName:	 db "KILOUDE¯CITY@"
; VioletCityName:      db "VIOLET CITY@"
; AzaleaTownName:      db "AZALEA TOWN@"
; GoldenrodCityName:   db "GOLDENROD¯CITY@"
; EcruteakCityName:    db "ECRUTEAK¯CITY@"
; OlivineCityName:     db "OLIVINE¯CITY@"
; CianwoodCityName:    db "CIANWOOD¯CITY@"
; MahoganyTownName:    db "MAHOGANY¯TOWN@"
; BlackthornCityName:  db "BLACKTHORN¯CITY@"
; LakeOfRageName:      db "LAKE OF¯RAGE@"
SilverCaveName:      db "SILVER CAVE@"
; SproutTowerName:     db "SPROUT¯TOWER@"
; RuinsOfAlphName:     db "RUINS¯OF ALPH@"
; UnionCaveName:       db "UNION CAVE@"
; SlowpokeWellName:    db "SLOWPOKE¯WELL@"
RadioTowerName:      db "RADIO TOWER@"
NationalParkName:    db "NATIONAL¯PARK@"
; TinTowerName:        db "TIN TOWER@"
; LighthouseName:      db "LIGHTHOUSE@"
; WhirlIslandsName:    db "WHIRL¯ISLANDS@"
; MtMortarName:        db "MT.MORTAR@"
; DragonsDenName:      db "DRAGON'S¯DEN@"
; IcePathName:         db "ICE PATH@"
IndigoPlateauName:   db "INDIGO¯PLATEAU@"
VictoryRoadName:     db "VICTORY¯ROAD@"
; MtMoonName:          db "MT.MOON@"
; RockTunnelName:      db "ROCK TUNNEL@"
LavRadioTowerName:   db "LAV¯RADIO TOWER@"
; SeafoamIslandsName:  db "SEAFOAM¯ISLANDS@"
Route1Name:          db "ROUTE 1@"
Route2Name:          db "ROUTE 2@"
Route3Name:          db "ROUTE 3@"
Route4Name:          db "ROUTE 4@"
Route5Name:          db "ROUTE 5@"
Route6Name:          db "ROUTE 6@"
Route7Name:          db "ROUTE 7@"
Route8Name:          db "ROUTE 8@"
Route9Name:          db "ROUTE 9@"
Route10Name:         db "ROUTE 10@"
Route11Name:         db "ROUTE 11@"
Route12Name:         db "ROUTE 12@"
Route13Name:         db "ROUTE 13@"
Route14Name:         db "ROUTE 14@"
Route15Name:         db "ROUTE 15@"
Route16Name:         db "ROUTE 16@"
Route17Name:         db "ROUTE 17@"
Route18Name:         db "ROUTE 18@"
Route19Name:         db "ROUTE 19@"
Route20Name:         db "ROUTE 20@"
Route21Name:         db "ROUTE 21@"
Route22Name:         db "ROUTE 22@"
; DarkCaveName:        db "DARK CAVE@"
; IlexForestName:      db "ILEX¯FOREST@"
; BurnedTowerName:     db "BURNED¯TOWER@"
FastShipName:        db "FAST SHIP@"
; ViridianForestName:  db "VIRIDIAN¯FOREST@" ; unreferenced
; DiglettsCaveName:    db "DIGLETT'S¯CAVE@"
; TohjoFallsName:      db "TOHJO FALLS@"
UndergroundName:     db "UNDERGROUND@"
; BattleTowerName:     db "BATTLE¯TOWER@"
ParfumPalaceName:	 db "PARFUM¯PALACE@"
BattleChateauName:   db "BATTLE¯CHATEAU@"
ConnectingCaveName:	 db "CONNECTING¯CAVE@"
BerryFieldsName:	 db "BERRY¯FIELDS@"
GlitteringCaveName:  db "GLITTERING¯CAVE@"
ReflectionCaveName:  db "REFLECTION¯CAVE@"
TowerOfMasteryName:  db "TOWER¯OF¯MASTERY@"
AzureBayName:		 db "AZURE¯BAY@"
SeaSpiritsDenName:   db "SEA¯SPIRITS¯DEN@"
PowerPlantName:      db "POWER PLANT@"
PokeballFactoryName: db "#BALL¯FACTORY@"
LostHotelName:		 db "LOST¯HOTEL@"
FrostCavernName:	 db "FROST¯CAVERN@"
TerminusCaveName:	 db "TERMINUS¯CAVE@"
PokemonVillageName:  db "POKEMON¯VILLAGE@"
SpecialMapName:      db "SPECIAL@"
