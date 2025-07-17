DEF time_group EQUS "0," ; use the nth TimeFishGroups entry

MACRO fishgroup
; chance, old rod, good rod, super rod
	db \1
	dw \2, \3, \4
ENDM

FishGroups:
; entries correspond to FISHGROUP_* constants
	table_width FISHGROUP_DATA_LENGTH, FishGroups
	; fishgroup 50 percent + 1, .Shore_Old,            .Shore_Good,            .Shore_Super
	; fishgroup 50 percent + 1, .Ocean_Old,            .Ocean_Good,            .Ocean_Super
	; fishgroup 50 percent + 1, .Lake_Old,             .Lake_Good,             .Lake_Super
	; fishgroup 50 percent + 1, .Pond_Old,             .Pond_Good,             .Pond_Super
	; fishgroup 50 percent + 1, .Dratini_Old,          .Dratini_Good,          .Dratini_Super
	fishgroup 50 percent + 1, .Qwilfish_Swarm_Old,   .Qwilfish_Swarm_Good,   .Qwilfish_Swarm_Super
	fishgroup 50 percent + 1, .Remoraid_Swarm_Old,   .Remoraid_Swarm_Good,   .Remoraid_Swarm_Super
	; fishgroup 50 percent + 1, .Gyarados_Old,         .Gyarados_Good,         .Gyarados_Super
	; fishgroup 50 percent + 1, .Dratini_2_Old,        .Dratini_2_Good,        .Dratini_2_Super
	; fishgroup 50 percent + 1, .WhirlIslands_Old,     .WhirlIslands_Good,     .WhirlIslands_Super
	fishgroup 50 percent + 1, .Qwilfish_Old,         .Qwilfish_Good,         .Qwilfish_Super
	fishgroup 50 percent + 1, .Remoraid_Old,         .Remoraid_Good,         .Remoraid_Super
	fishgroup 50 percent + 1, .Qwilfish_NoSwarm_Old, .Qwilfish_NoSwarm_Good, .Qwilfish_NoSwarm_Super
	fishgroup 50 percent + 1, .Aquacorde_Old,		 .Aquacorde_Good,		 .Aquacorde_Super
	fishgroup 50 percent + 1, .Camphrier_Old,		 .Camphrier_Good,		 .Camphrier_Super
	fishgroup 50 percent + 1, .Ambrette_Old,		 .Ambrette_Good,		 .Ambrette_Super
	assert_table_length NUM_FISHGROUPS

; .Shore_Old:
	; db  70 percent + 1, MAGIKARP,   10
	; db  85 percent + 1, MAGIKARP,   10
	; db 100 percent,     SHELLDER,     10
; .Shore_Good:
	; db  35 percent,     MAGIKARP,   20
	; db  70 percent,     SHELLDER,     20
	; db  90 percent + 1, SHELLDER,     20
	; db 100 percent,     time_group 0
; .Shore_Super:
	; db  40 percent,     SHELLDER,     40
	; db  70 percent,     time_group 0
	; db  90 percent + 1, SHELLDER,     40
	; db 100 percent,     CLOYSTER,    40

; .Ocean_Old:
	; db  70 percent + 1, MAGIKARP,   10
	; db  85 percent + 1, MAGIKARP,   10
	; db 100 percent,     TENTACOOL,  10
; .Ocean_Good:
	; db  35 percent,     MAGIKARP,   20
	; db  70 percent,     TENTACOOL,  20
	; db  90 percent + 1, CHINCHOU,   20
	; db 100 percent,     time_group 0
; .Ocean_Super:
	; db  40 percent,     CHINCHOU,   40
	; db  70 percent,     time_group 0
	; db  90 percent + 1, TENTACRUEL, 40
	; db 100 percent,     LANTURN,    40

; .Lake_Old:
	; db  70 percent + 1, MAGIKARP,   10
	; db  85 percent + 1, MAGIKARP,   10
	; db 100 percent,     GOLDEEN,    10
; .Lake_Good:
	; db  35 percent,     MAGIKARP,   20
	; db  70 percent,     GOLDEEN,    20
	; db  90 percent + 1, GOLDEEN,    20
	; db 100 percent,     time_group 0
; .Lake_Super:
	; db  40 percent,     GOLDEEN,    40
	; db  70 percent,     time_group 0
	; db  90 percent + 1, MAGIKARP,   40
	; db 100 percent,     SEAKING,    40

; .Pond_Old:
	; db  70 percent + 1, MAGIKARP,   10
	; db  85 percent + 1, MAGIKARP,   10
	; db 100 percent,     POLIWAG,    10
; .Pond_Good:
	; db  35 percent,     MAGIKARP,   20
	; db  70 percent,     POLIWAG,    20
	; db  90 percent + 1, POLIWAG,    20
	; db 100 percent,     time_group 0
; .Pond_Super:
	; db  40 percent,     POLIWAG,    40
	; db  70 percent,     time_group 0
	; db  90 percent + 1, MAGIKARP,   40
	; db 100 percent,     POLIWAG,    40

; .Dratini_Old:
	; db  70 percent + 1, MAGIKARP,   10
	; db  85 percent + 1, MAGIKARP,   10
	; db 100 percent,     MAGIKARP,   10
; .Dratini_Good:
	; db  35 percent,     MAGIKARP,   20
	; db  70 percent,     MAGIKARP,   20
	; db  90 percent + 1, MAGIKARP,   20
	; db 100 percent,     time_group 0
; .Dratini_Super:
	; db  40 percent,     MAGIKARP,   40
	; db  70 percent,     time_group 0
	; db  90 percent + 1, MAGIKARP,   40
	; db 100 percent,     DRAGONAIR,  40

.Qwilfish_Swarm_Old:
	db  70 percent + 1, MAGIKARP,   5
	db  85 percent + 1, MAGIKARP,   5
	db 100 percent,     QWILFISH,   5
.Qwilfish_Swarm_Good:
	db  35 percent,     MAGIKARP,   20
	db  70 percent,     QWILFISH,   20
	db  90 percent + 1, QWILFISH,   20
	db 100 percent,     time_group 0
.Qwilfish_Swarm_Super:
	db  40 percent,     QWILFISH,   40
	db  70 percent,     time_group 0
	db  90 percent + 1, QWILFISH,   40
	db 100 percent,     QWILFISH,   40

.Remoraid_Swarm_Old:
	db  70 percent + 1, MAGIKARP,   10
	db  85 percent + 1, MAGIKARP,   10
	db 100 percent,     REMORAID,   10
.Remoraid_Swarm_Good:
	db  35 percent,     MAGIKARP,   20
	db  70 percent,     REMORAID,   20
	db  90 percent + 1, REMORAID,   20
	db 100 percent,     time_group 0
.Remoraid_Swarm_Super:
	db  40 percent,     REMORAID,   40
	db  70 percent,     time_group 0
	db  90 percent + 1, REMORAID,   40
	db 100 percent,     REMORAID,   40

; .Gyarados_Old:
	; db  70 percent + 1, MAGIKARP,   10
	; db  85 percent + 1, MAGIKARP,   10
	; db 100 percent,     MAGIKARP,   10
; .Gyarados_Good:
	; db  35 percent,     MAGIKARP,   20
	; db  70 percent,     MAGIKARP,   20
	; db  90 percent + 1, MAGIKARP,   20
	; db 100 percent,     time_group 0
; .Gyarados_Super:
	; db  40 percent,     MAGIKARP,   40
	; db  70 percent,     time_group 0
	; db  90 percent + 1, MAGIKARP,   40
	; db 100 percent,     MAGIKARP,   40

; .Dratini_2_Old:
	; db  70 percent + 1, MAGIKARP,   10
	; db  85 percent + 1, MAGIKARP,   10
	; db 100 percent,     MAGIKARP,   10
; .Dratini_2_Good:
	; db  35 percent,     MAGIKARP,   10
	; db  70 percent,     MAGIKARP,   10
	; db  90 percent + 1, MAGIKARP,   10
	; db 100 percent,     time_group 0
; .Dratini_2_Super:
	; db  40 percent,     MAGIKARP,   10
	; db  70 percent,     time_group 0
	; db  90 percent + 1, MAGIKARP,   10
	; db 100 percent,     DRAGONAIR,  10

; .WhirlIslands_Old:
	; db  70 percent + 1, MAGIKARP,   10
	; db  85 percent + 1, MAGIKARP,   10
	; db 100 percent,     SHELLDER,     10
; .WhirlIslands_Good:
	; db  35 percent,     MAGIKARP,   20
	; db  70 percent,     SHELLDER,     20
	; db  90 percent + 1, SHELLDER,     20
	; db 100 percent,     time_group 0
; .WhirlIslands_Super:
	; db  40 percent,     SHELLDER,     40
	; db  70 percent,     time_group 0
	; db  90 percent + 1, CLOYSTER,    40
	; db 100 percent,     SEADRA,     40

.Qwilfish_NoSwarm_Old:
.Qwilfish_Old:
	db  70 percent + 1, MAGIKARP,   10
	db  85 percent + 1, MAGIKARP,   10
	db 100 percent,     QWILFISH,   10
.Qwilfish_NoSwarm_Good:
.Qwilfish_Good:
	db  35 percent,     MAGIKARP,   20
	db  70 percent,     TENTACOOL,  20
	db  90 percent + 1, TENTACOOL,  20
	db 100 percent,     time_group 0
.Qwilfish_NoSwarm_Super:
.Qwilfish_Super:
	db  40 percent,     TENTACOOL,  40
	db  70 percent,     time_group 0
	db  90 percent + 1, MAGIKARP,   40
	db 100 percent,     QWILFISH,   40

.Remoraid_Old:
	db  70 percent + 1, MAGIKARP,   10
	db  85 percent + 1, MAGIKARP,   10
	db 100 percent,     POLIWAG,    10
.Remoraid_Good:
	db  35 percent,     MAGIKARP,   20
	db  70 percent,     POLIWAG,    20
	db  90 percent + 1, POLIWAG,    20
	db 100 percent,     time_group 0
.Remoraid_Super:
	db  40 percent,     POLIWAG,    40
	db  70 percent,     time_group 0
	db  90 percent + 1, MAGIKARP,   40
	db 100 percent,     REMORAID,   40
	
.Aquacorde_Old:
	db 100 percent,		MAGIKARP,   15
.Aquacorde_Good:
	db  65 percent,		GOLDEEN,	25
	db 100 percent,		HORSEA,		25
.Aquacorde_Super:
	db  35 percent,		SEAKING,	35
	db  60 percent,		GYARADOS,	35
	db 100 percent,		SEADRA,		35
	
.Camphrier_Old:
	db 100 percent,		MAGIKARP,   15
.Camphrier_Good:
	db  65 percent,		PSYDUCK,	25
	db 100 percent,		SLOWPOKE,	25
.Camphrier_Super:
	db  35 percent,		GOLDUCK,	35
	db  60 percent,		GYARADOS,	35
	db 100 percent,		SLOWBRO,	35
	
.Ambrette_Old:
	db 100 percent,		GOLDEEN,    15
.Ambrette_Good:
	db  35 percent,		SKRELP,		25
	db  70 percent,		CLAUNCHER,	25
	db 100 percent,		HORSEA,		25
.Ambrette_Super:
	db  50 percent,		CORSOLA,	35
	db  70 percent,		DRAGALGE,	35
	db  90 percent,		CLAWITZER,	35
	db 100 percent,		SEADRA,		35
	
TimeFishGroups:
	;  day              nite
	db CORSOLA,    20,  STARYU,     20 ; 0
