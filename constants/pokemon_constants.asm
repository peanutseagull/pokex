; pokemon ids
; indexes for:
; - PokemonNames (see data/pokemon/names.asm)
; - BaseData (see data/pokemon/base_stats.asm)
; - EvosAttacksPointers (see data/pokemon/evos_attacks_pointers.asm)
; - EggMovePointers (see data/pokemon/egg_move_pointers.asm)
; - PokemonCries (see data/pokemon/cries.asm)
; - IconPointers (see data/pokemon/icon_pointers.asm)
; - PokemonPicPointers (see data/pokemon/pic_pointers.asm)
; - PokemonPalettes (see data/pokemon/palettes.asm)
; - PokedexDataPointerTable (see data/pokemon/dex_entry_pointers.asm)
; - AlphabeticalPokedexOrder (see data/pokemon/dex_order_alpha.asm)
; - NewPokedexOrder (see data/pokemon/dex_order_new.asm)
; - Pokered_MonIndices (see data/pokemon/gen1_order.asm)
; - Footprints (see gfx/footprints.asm)
; - AnimationPointers (see gfx/pokemon/anim_pointers.asm)
; - AnimationIdlePointers (see gfx/pokemon/idle_pointers.asm)
; - BitmasksPointers (see gfx/pokemon/bitmask_pointers.asm)
; - FramesPointers (see gfx/pokemon/frame_pointers.asm)
; - EZChat_SortedPokemon (see data/pokemon/ezchat_order.asm)
	const_def 1
	const BULBASAUR	; 01
	const IVYSAUR	; 02
	const VENUSAUR	; 03
	const CHARMANDER; 04
	const CHARMELEON; 05
	const CHARIZARD	; 06
	const SQUIRTLE	; 07
	const WARTORTLE	; 08
	const BLASTOISE	; 09
	const CATERPIE	; 0a
	const METAPOD	; 0b
	const BUTTERFREE; 0c
	const WEEDLE	; 0d
	const KAKUNA	; 0e
	const BEEDRILL	; 0f
	const PIDGEY	; 10
	const PIDGEOTTO	; 11
	const PIDGEOT	; 12
	const SPEAROW	; 13
	const FEAROW	; 14
	const EKANS		; 15
	const ARBOK		; 16
	const PIKACHU	; 17
	const RAICHU	; 18
	const SANDSHREW	; 19
	const SANDSLASH	; 1a
	const NIDORAN_F	; 1b
	const NIDORINA	; 1c
	const NIDOQUEEN	; 1d
	const NIDORAN_M	; 1e
	const NIDORINO	; 1f
	const NIDOKING	; 20
	const CLEFAIRY	; 21
	const CLEFABLE	; 22
	const VULPIX	; 23
	const NINETALES	; 24
	const JIGGLYPUFF; 25
	const WIGGLYTUFF; 26
	const ZUBAT		; 27
	const GOLBAT	; 28
	const ODDISH	; 29
	const GLOOM		; 2a
	const VILEPLUME	; 2b
	const DIGLETT	; 2c
	const DUGTRIO	; 2d
	const PSYDUCK	; 2e
	const GOLDUCK	; 2f
	const POLIWAG	; 30
	const POLIWHIRL	; 31
	const POLIWRATH	; 32
	const ABRA		; 33
	const KADABRA	; 34
	const ALAKAZAM	; 35
	const MACHOP	; 36
	const MACHOKE	; 37
	const MACHAMP	; 38
	const BELLSPROUT; 39
	const WEEPINBELL; 3a
	const VICTREEBEL; 3b
	const TENTACOOL	; 3c
	const TENTACRUEL; 3d
	const GEODUDE	; 3e
	const GRAVELER	; 3f
	const GOLEM		; 40
	const SLOWPOKE	; 41
	const SLOWBRO	; 42
	const MAGNEMITE	; 43
	const MAGNETON	; 44
	const FARFETCH_D; 45
	const DODUO		; 46
	const DODRIO	; 47
	const SHELLDER	; 48 
	const CLOYSTER	; 49
	const GASTLY	; 4a
	const HAUNTER	; 4b
	const GENGAR	; 4c
	const ONIX		; 4d
	const VOLTORB	; 4e	
	const ELECTRODE	; 4f
	const EXEGGCUTE	; 50
	const EXEGGUTOR	; 51
	const CUBONE	; 52
	const MAROWAK	; 53
	const RHYHORN	; 54
	const RHYDON	; 55
	const KANGASKHAN; 56
	const HORSEA	; 57
	const SEADRA	; 58
	const GOLDEEN	; 59
	const SEAKING	; 5a
	const STARYU	; 5b
	const STARMIE	; 5c
	const MR__MIME	; 5d
	const SCYTHER	; 5e
	const JYNX		; 5f
	const PINSIR	; 60
	const TAUROS	; 61
	const MAGIKARP	; 62
	const GYARADOS	; 63
	const LAPRAS	; 64
	const DITTO		; 65
	const EEVEE		; 66
	const VAPOREON	; 67
	const JOLTEON	; 68
	const FLAREON	; 69
	const PORYGON	; 6a
	const AERODACTYL; 6b
	const SNORLAX	; 6c
	const ARTICUNO	; 6d
	const ZAPDOS	; 6e
	const MOLTRES	; 6f
	const DRATINI	; 70
	const DRAGONAIR	; 71
	const DRAGONITE	; 72
	const MEWTWO	; 73
	const SENTRET	; 74
	const FURRET	; 75
	const HOOTHOOT	; 76
	const NOCTOWL	; 77
	const LEDYBA	; 78
	const LEDIAN	; 79
	const SPINARAK	; 7a
	const ARIADOS	; 7b
	const CROBAT	; 7c
	const CHINCHOU	; 7d
	const LANTURN	; 7e
	const PICHU		; 7f
	const CLEFFA	; 80
	const IGGLYBUFF	; 81
	const MAREEP	; 82
	const FLAAFFY	; 83
	const AMPHAROS	; 84
	const BELLOSSOM	; 85
	const MARILL	; 86
	const AZUMARILL	; 87
	const SUDOWOODO	; 88
	const POLITOED	; 89
	const HOPPIP	; 8a
	const SKIPLOOM	; 8b
	const JUMPLUFF	; 8c
	const YANMA		; 8d
	const WOOPER	; 8e
	const QUAGSIRE	; 8f
	const ESPEON	; 90
	const UMBREON	; 91
	const MURKROW	; 92
	const SLOWKING	; 93
	const MISDREAVUS; 94
	const WOBBUFFET	; 95
	const DUNSPARCE	; 96
	const GLIGAR	; 97
	const STEELIX	; 98
	const SNUBBULL	; 99
	const GRANBULL	; 9a
	const QWILFISH	; 9b
	const SCIZOR	; 9c
	const SHUCKLE	; 9d
	const HERACROSS	; 9e
	const SNEASEL	; 9f
	const TEDDIURSA	; a0
	const URSARING	; a1
	const SLUGMA	; a2
	const MAGCARGO	; a3
	const SWINUB	; a4
	const PILOSWINE	; a5
	const CORSOLA	; a6
	const REMORAID	; a7
	const OCTILLERY	; a8
	const DELIBIRD	; a9
	const MANTINE	; aa
	const SKARMORY	; ab
	const HOUNDOUR	; ac
	const HOUNDOOM	; ad
	const KINGDRA	; ae
	const PORYGON2	; af
	const SMEARGLE	; b0
	const SMOOCHUM	; b1
	const MILTANK	; b2
	const LARVITAR	; b3
	const PUPITAR	; b4
	const TYRANITAR	; b5
DEF JOHTO_POKEMON EQU const_value
	const CHESPIN	; b6
	const QUILLADIN	; b7
	const CHESNAUGHT; b8
	const FENNEKIN	; b9
	const BRAIXEN	; ba
	const DELPHOX	; bb
	const FROAKIE	; bc
	const FROGADIER	; bd
	const GRENINJA	; be
	const BUNNELBY	; bf
	const DIGGERSBY	; c0
	const FLETCHLING; c1
	const FLETCHINDR; c2
	const TALONFLAME; c3
	const SCATTERBUG; c4
	const SPEWPA	; c5
	const VIVILLON	; c6
	const LITLEO	; c7
	const PYROAR	; c8
	const FLABEBE	; c9
	const FLOETTE	; ca
	const FLORGES	; cb
	const SKIDDO	; cc
	const GOGOAT	; cd
	const PANCHAM	; ce
	const PANGORO	; cf
	const FURFROU	; d0
	const ESPURR	; d1
	const MEOWSTIC	; d2
	const HONEDGE	; d3
	const DOUBLADE	; d4
	const AEGISLASH	; d5
	const SPRITZEE	; d6
	const AROMATISSE; d7
	const SWIRLIX	; d8
	const SLURPUFF	; d9
	const INKAY		; da
	const MALAMAR	; db
	const BINACLE	; dc
	const BARBARACLE; dd
	const SKRELP	; de
	const DRAGALGE	; df
	const CLAUNCHER	; e0
	const CLAWITZER	; e1
	const HELIOPTILE; e2
	const HELIOLISK	; e3
	const TYRUNT	; e4
	const TYRANTRUM	; e5
	const AMAURA	; e6
	const AURORUS	; e7
	const SYLVEON	; e8
	const HAWLUCHA	; e9
	const DEDENNE	; ea
	const CARBINK	; eb
	const GOOMY		; ec
	const SLIGGOO	; ed
	const GOODRA	; ee
	const KLEFKI	; ef
	const PHANTUMP	; f0
	const TREVENANT	; f1
	const PUMPKABOO	; f2
	const GOURGEIST	; f3
	const BERGMITE	; f4
	const AVALUGG	; f5
	const NOIBAT	; f6
	const NOIVERN	; f7
	const XERNEAS	; f8
	const YVELTAL	; f9
	const ZYGARDE	; fa
	const DIANCIE	; fb
	const HOOPA		; fc
	const VOLCANION	; fd
DEF NUM_POKEMON EQU const_value - 1
	const EGG        ; fe

; Unown forms
; indexes for:
; - UnownWords (see data/pokemon/unown_words.asm)
; - UnownPicPointers (see data/pokemon/unown_pic_pointers.asm)
; - UnownAnimationPointers (see gfx/pokemon/unown_anim_pointers.asm)
; - UnownAnimationIdlePointers (see gfx/pokemon/unown_idle_pointers.asm)
; - UnownBitmasksPointers (see gfx/pokemon/unown_bitmask_pointers.asm)
; - UnownFramesPointers (see gfx/pokemon/unown_frame_pointers.asm)
	const_def 1
	const UNOWN_A ;  1
	const UNOWN_B ;  2
	const UNOWN_C ;  3
	const UNOWN_D ;  4
	const UNOWN_E ;  5
	const UNOWN_F ;  6
	const UNOWN_G ;  7
	const UNOWN_H ;  8
	const UNOWN_I ;  9
	const UNOWN_J ; 10
	const UNOWN_K ; 11
	const UNOWN_L ; 12
	const UNOWN_M ; 13
	const UNOWN_N ; 14
	const UNOWN_O ; 15
	const UNOWN_P ; 16
	const UNOWN_Q ; 17
	const UNOWN_R ; 18
	const UNOWN_S ; 19
	const UNOWN_T ; 20
	const UNOWN_U ; 21
	const UNOWN_V ; 22
	const UNOWN_W ; 23
	const UNOWN_X ; 24
	const UNOWN_Y ; 25
	const UNOWN_Z ; 26
DEF NUM_UNOWN EQU const_value - 1 ; 26


; Removed pokemon
	; const RATTATA 
	; const RATICATE
	; const PARAS
	; const PARASECT
	; const VENONAT
	; const VENOMOTH
	; const MEOWTH
	; const PERSIAN
	; const MANKEY
	; const PRIMEAPE
	; const GROWLITHE
	; const ARCANINE
	; const PONYTA
	; const RAPIDASH
	; const SEEL
	; const DEWGONG
	; const GRIMER
	; const MUK
	; const HYPNO
	; const KRABBY
	; const KINGLER
	; const DROWZEE
	; const HITMONLEE	
	; const HITMONCHAN
	; const LICKITUNG
	; const KOFFING
	; const WEEZING
	; const CHANSEY
	; const TANGELA
	; const ELECTABUZZ
	; const MAGMAR
	; const OMANYTE
	; const OMASTAR
	; const KABUTO
	; const KABUTOPS
	; const MEW
	; const CHIKORITA
	; const BAYLEEF
	; const MEGANIUM
	; const CYNDAQUIL
	; const QUILAVA
	; const TYPHLOSION
	; const TOTODILE
	; const CROCONAW
	; const FERALIGATR
	; const TOGEPI
	; const TOGETIC
	; const NATU
	; const XATU
	; const AIPOM
	; const SUNKERN
	; const SUNFLORA
	; const UNOWN
	; const GIRAFARIG
	; const PINECO
	; const FORRETRESS
	; const PHANPY
	; const DONPHAN
	; const STANTLER
	; const TYROGUE
	; const HITMONTOP
	; const ELEKID
	; const MAGBY	
	; const BLISSEY
	; const RAIKOU
	; const ENTEI
	; const SUICUNE
	; const LUGIA
	; const HO-OH
	; const CELEBI