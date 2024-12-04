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
	dw CyllageGroupSprites
	dw AmbretteGroupSprites
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
; Vaniville, Route 1 - must be same as Aquacorde
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

AquacordeGroupSprites:
; Aquacorde, Route 2 - must be same as Vaniville
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
	; 8 of max 9 walking sprites
	db SPRITE_POKEFAN_F
	db SPRITE_POKEFAN_M
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
	; 6 of max 9 walking sprites
	db SPRITE_TWIN
	db SPRITE_BIG_SNORLAX
	db SPRITE_POKE_BALL
	db SPRITE_FRUIT_TREE
	db 0
	
CyllageGroupSprites:
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
	
AmbretteGroupSprites:
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
	
GeosengeGroupSprites:
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
