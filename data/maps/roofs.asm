; MapGroupRoofs values; Roofs indexes
	const_def
	const ROOF_NEW_BARK  ; 0
	const ROOF_VIOLET    ; 1
	const ROOF_AZALEA    ; 2
	const ROOF_OLIVINE   ; 3
	const ROOF_GOLDENROD ; 4
DEF NUM_ROOFS EQU const_value

MapGroupRoofs:
; entries correspond to MAPGROUP_* constants
; values are indexes for Roofs (see below)
	table_width 1, MapGroupRoofs
	db -1             ;  0
	db ROOF_OLIVINE   ;  1 (Vaniville)
	db ROOF_AZALEA    ;  2 (Aquacorde)
	db -1             ;  3
	db ROOF_VIOLET    ;  4 (Santalune)
	db ROOF_AZALEA    ;  5 (Lumiose)
	db ROOF_VIOLET    ;  6 (Camphrier)
	db ROOF_AZALEA    ;  7 (ParfumGarden)
	db ROOF_AZALEA    ;  8 (Cyllage)
	db ROOF_AZALEA    ;  9 (Ambrette)
	db ROOF_GOLDENROD ; 10 (Geosenge)
	db ROOF_NEW_BARK  ; 11 (Shalour)
	db ROOF_OLIVINE   ; 12 (Coumarine)
	db ROOF_NEW_BARK  ; 13 (Laverre)
	db ROOF_NEW_BARK  ; 14 (Dendemille)
	db ROOF_OLIVINE	  ; 15 (Anistar)
	db ROOF_OLIVINE	  ; 16 (Couriway)
	db ROOF_OLIVINE	  ; 17 (Snowbelle)
	db ROOF_OLIVINE	  ; 18 (League)
	db ROOF_OLIVINE   ; 19 (Kiloude)
	db ROOF_OLIVINE	  ; 20
	assert_table_length NUM_MAP_GROUPS + 1

Roofs:
; entries correspond to ROOF_* constants
	table_width ROOF_LENGTH * LEN_2BPP_TILE, Roofs
INCBIN "gfx/tilesets/roofs/new_bark.2bpp"
INCBIN "gfx/tilesets/roofs/violet.2bpp"
INCBIN "gfx/tilesets/roofs/azalea.2bpp"
INCBIN "gfx/tilesets/roofs/olivine.2bpp"
INCBIN "gfx/tilesets/roofs/goldenrod.2bpp"
	assert_table_length NUM_ROOFS
