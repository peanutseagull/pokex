; Valid sprite IDs for each map group.
; Maps with environment ROUTE or TOWN can only use these sprites.

OutdoorSprites:
; entries correspond to MAPGROUP_* constants
	table_width 2, OutdoorSprites
	dw VanivilleGroupSprites
	dw AquacordeGroupSprites
	dw DungeonsGroupSprites
	dw SantaluneGroupSprites
	dw LumioseGroupSprites
	dw CamphrierGroupSprites
	dw ParfumGardenGroupSprites
	dw AmbretteGroupSprites
	dw CyllageGroupSprites
	dw GeosengeGroupSprites
	dw ShalourGroupSprites
	dw CoumarineGroupSprites
	dw LaverreGroupSprites
	dw DendemilleGroupSprites
	dw AnistarGroupSprites
	dw CouriwayGroupSprites
	dw SnowbelleGroupSprites
	dw LeagueGroupSprites
	dw KiloudeGroupSprites
	dw CableClubGroupSprites
	assert_table_length NUM_MAP_GROUPS

VanivilleGroupSprites:
AquacordeGroupSprites:
; Vaniville, Route 1, Aquacorde, Route 2
	db SPRITE_TEACHER
	db SPRITE_FISHER
	db SPRITE_COOLTRAINER_F
	db SPRITE_KAREN
	db SPRITE_SUPER_NERD
	db SPRITE_YOUNGSTER
	db SPRITE_BUG_CATCHER
	; 7 of max 9 walking sprites
	db SPRITE_GRAMPS
	db SPRITE_POKE_BALL
	db SPRITE_FRUIT_TREE
	db 0
	
DungeonsGroupSprites:
; Santalune Forest
	db SPRITE_YOUNGSTER
	db SPRITE_LASS
	; 2 of max 9 walking sprites
	db SPRITE_FRUIT_TREE
	db SPRITE_BOULDER
	db SPRITE_POKE_BALL
	db 0

SantaluneGroupSprites:
; Route 3, Santalune, Route 22, Route 4
	db SPRITE_COOLTRAINER_F
	db SPRITE_YOUNGSTER
	db SPRITE_LASS
	db SPRITE_OFFICER
	db SPRITE_BEAUTY
	db SPRITE_ROCKER
	db SPRITE_BUG_CATCHER
	db SPRITE_CLAIR
	db SPRITE_POKEFAN_M
	; 9 of max 9 walking sprites
	db SPRITE_POKEFAN_F
	db SPRITE_FRUIT_TREE
	db SPRITE_POKE_BALL
	db 0
	
LumioseGroupSprites:
; Lumiose
	; 0 of max 9 walking sprites
	db SPRITE_LASS
	db SPRITE_YOUNGSTER
	db SPRITE_POKEFAN_F
	db SPRITE_FISHER
	db SPRITE_BEAUTY
	db SPRITE_GENTLEMAN
	db SPRITE_SUPER_NERD
	db SPRITE_COOLTRAINER_M
	db SPRITE_BROCK
	db SPRITE_POKE_BALL
	db 0
	
CamphrierGroupSprites:
; Route 5, Camphrier, Route 6, Route 7
	db SPRITE_SUPER_NERD
	db SPRITE_FISHER
	db SPRITE_YOUNGSTER
	db SPRITE_ROCKER
	db SPRITE_BEAUTY
	db SPRITE_POKEFAN_M
	db SPRITE_TEACHER
	db SPRITE_KAREN
	db SPRITE_GENTLEMAN
	; 9 of max 9 walking sprites
	db SPRITE_BLACK_BELT
	db SPRITE_MONSTER
	db SPRITE_GRAMPS
	db SPRITE_COOLTRAINER_M
	db SPRITE_POKEFAN_F
	db SPRITE_TWIN
	db SPRITE_BIKER
	db SPRITE_BIG_SNORLAX
	db SPRITE_POKE_BALL
	db SPRITE_FRUIT_TREE
	db 0
	
ParfumGardenGroupSprites:
; Parfum Palace Gardens
	db SPRITE_LINK_RECEPTIONIST
	db SPRITE_CLERK
	db SPRITE_MONSTER
	db SPRITE_KAREN
	db SPRITE_POKEFAN_M
	; 5 of max 9 walking sprites
	db SPRITE_ERIKA
	db SPRITE_COOLTRAINER_M
	db SPRITE_OFFICER
	db SPRITE_BEAUTY
	db SPRITE_YOUNGSTER
	db SPRITE_POKE_BALL
	db 0
	
AmbretteGroupSprites:
CyllageGroupSprites:
GeosengeGroupSprites:
; Route 8 Upper, Ambrette, Route 9, Route 8 Lower, Cyllage, Route 10, Geosenge, Route 11
	db SPRITE_LASS
	db SPRITE_YOUNGSTER
	db SPRITE_BLACK_BELT
	db SPRITE_COOLTRAINER_M
	db SPRITE_ROCKER
	db SPRITE_FISHER
	; 6 of max 9 walking sprites
	db SPRITE_BEAUTY
	db SPRITE_COOLTRAINER_F
	db SPRITE_POKE_BALL
	db SPRITE_FRUIT_TREE
	db SPRITE_BOULDER
	db SPRITE_ROCK
	db 0

ShalourGroupSprites:
	db SPRITE_SUPER_NERD
	db SPRITE_FISHER
	db SPRITE_YOUNGSTER
	db SPRITE_ROCKER
	db SPRITE_BEAUTY
	; 5 of max 9 walking sprites
	db SPRITE_TWIN
	db SPRITE_POKE_BALL
	db SPRITE_FRUIT_TREE
	db 0
	
CoumarineGroupSprites:
	db SPRITE_SUPER_NERD
	db SPRITE_FISHER
	db SPRITE_YOUNGSTER
	db SPRITE_ROCKER
	db SPRITE_BEAUTY
	; 5 of max 9 walking sprites
	db SPRITE_TWIN
	db SPRITE_POKE_BALL
	db SPRITE_FRUIT_TREE
	db 0
	
LaverreGroupSprites:
	db SPRITE_SUPER_NERD
	db SPRITE_FISHER
	db SPRITE_YOUNGSTER
	db SPRITE_ROCKER
	db SPRITE_BEAUTY
	; 5 of max 9 walking sprites
	db SPRITE_TWIN
	db SPRITE_POKE_BALL
	db SPRITE_FRUIT_TREE
	db 0
	
DendemilleGroupSprites:
	db SPRITE_SUPER_NERD
	db SPRITE_FISHER
	db SPRITE_YOUNGSTER
	db SPRITE_ROCKER
	db SPRITE_BEAUTY
	; 5 of max 9 walking sprites
	db SPRITE_TWIN
	db SPRITE_POKE_BALL
	db SPRITE_FRUIT_TREE
	db 0
	
AnistarGroupSprites:
	db SPRITE_SUPER_NERD
	db SPRITE_FISHER
	db SPRITE_YOUNGSTER
	db SPRITE_ROCKER
	db SPRITE_BEAUTY
	; 5 of max 9 walking sprites
	db SPRITE_TWIN
	db SPRITE_POKE_BALL
	db SPRITE_FRUIT_TREE
	db 0
	
CouriwayGroupSprites:
	db SPRITE_SUPER_NERD
	db SPRITE_FISHER
	db SPRITE_YOUNGSTER
	db SPRITE_ROCKER
	db SPRITE_BEAUTY
	; 5 of max 9 walking sprites
	db SPRITE_TWIN
	db SPRITE_POKE_BALL
	db SPRITE_FRUIT_TREE
	db 0
	
SnowbelleGroupSprites:
	db SPRITE_SUPER_NERD
	db SPRITE_FISHER
	db SPRITE_YOUNGSTER
	db SPRITE_ROCKER
	db SPRITE_BEAUTY
	; 5 of max 9 walking sprites
	db SPRITE_TWIN
	db SPRITE_POKE_BALL
	db SPRITE_FRUIT_TREE
	db 0
	
LeagueGroupSprites:
	db SPRITE_SUPER_NERD
	db SPRITE_FISHER
	db SPRITE_YOUNGSTER
	db SPRITE_ROCKER
	db SPRITE_BEAUTY
	; 5 of max 9 walking sprites
	db SPRITE_TWIN
	db SPRITE_POKE_BALL
	db SPRITE_FRUIT_TREE
	db 0
	
KiloudeGroupSprites:
	db SPRITE_SUPER_NERD
	db SPRITE_FISHER
	db SPRITE_YOUNGSTER
	db SPRITE_ROCKER
	db SPRITE_BEAUTY
	; 5 of max 9 walking sprites
	db SPRITE_TWIN
	db SPRITE_POKE_BALL
	db SPRITE_FRUIT_TREE
	db 0

CableClubGroupSprites:
	db SPRITE_OAK
	db SPRITE_FISHER
	db SPRITE_TEACHER
	db SPRITE_TWIN
	db SPRITE_POKEFAN_M
	db SPRITE_GRAMPS
	db SPRITE_FAIRY
	db SPRITE_RIVAL
	db SPRITE_FISHING_GURU
	db SPRITE_POKE_BALL
	db SPRITE_POKEDEX
	db 0
