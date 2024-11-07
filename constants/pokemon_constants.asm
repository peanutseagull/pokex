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
	const BULBASAUR
	const IVYSAUR
	const VENUSAUR
	const CHARMANDER
	const CHARMELEON
	const CHARIZARD
	const SQUIRTLE
	const WARTORTLE
	const BLASTOISE
	const CATERPIE
	const METAPOD
	const BUTTERFREE
	const WEEDLE
	const KAKUNA
	const BEEDRILL
	const PIDGEY
	const PIDGEOTTO
	const PIDGEOT
	; const RATTATA
	; const RATICATE
	const SPEAROW
	const FEAROW
	const EKANS
	const ARBOK
	const PIKACHU
	const RAICHU
	const SANDSHREW
	const SANDSLASH	
	const NIDORAN_F
	const NIDORINA
	const NIDOQUEEN
	const NIDORAN_M
	const NIDORINO
	const NIDOKING	
	const CLEFAIRY
	const CLEFABLE	
	const VULPIX
	const NINETALES	
	const JIGGLYPUFF
	const WIGGLYTUFF
	const ZUBAT
	const GOLBAT	
	const ODDISH
	const GLOOM
	const VILEPLUME	
	; const PARAS
	; const PARASECT
	; const VENONAT
	; const VENOMOTH
	const DIGLETT
	const DUGTRIO
	; const MEOWTH
	; const PERSIAN
	const PSYDUCK
	const GOLDUCK
	; const MANKEY
	; const PRIMEAPE
	; const GROWLITHE
	; const ARCANINE
	const POLIWAG
	const POLIWHIRL
	const POLIWRATH	
	const ABRA
	const KADABRA
	const ALAKAZAM	
	const MACHOP
	const MACHOKE
	const MACHAMP	
	const BELLSPROUT
	const WEEPINBELL
	const VICTREEBEL	
	const TENTACOOL
	const TENTACRUEL	
	const GEODUDE
	const GRAVELER
	const GOLEM	
	; const PONYTA
	; const RAPIDASH
	const SLOWPOKE
	const SLOWBRO	
	const MAGNEMITE
	const MAGNETON
	const FARFETCH_D	
	const DODUO
	const DODRIO
	; const SEEL
	; const DEWGONG
	; const GRIMER
	; const MUK
	const SHELLDER
	const CLOYSTER	
	const GASTLY
	const HAUNTER
	const GENGAR	
	const ONIX
	; const DROWZEE
	; const HYPNO
	; const KRABBY
	; const KINGLER
	const VOLTORB
	const ELECTRODE
	const EXEGGCUTE
	const EXEGGUTOR	
	const CUBONE
	const MAROWAK
	; const HITMONLEE
	; const HITMONCHAN
	; const LICKITUNG
	; const KOFFING
	; const WEEZING
	const RHYHORN
	const RHYDON
	; const CHANSEY
	; const TANGELA
	const KANGASKHAN	
	const HORSEA
	const SEADRA	
	const GOLDEEN
	const SEAKING	
	const STARYU
	const STARMIE	
	const MR__MIME
	const SCYTHER
	const JYNX
	; const ELECTABUZZ
	; const MAGMAR
	const PINSIR
	const TAUROS
	const MAGIKARP
	const GYARADOS
	const LAPRAS	
	const DITTO
	const EEVEE
	const VAPOREON
	const JOLTEON
	const FLAREON
	const PORYGON
	; const OMANYTE
	; const OMASTAR
	; const KABUTO
	; const KABUTOPS
	const AERODACTYL
	const SNORLAX	
	const ARTICUNO
	const ZAPDOS
	const MOLTRES
	const DRATINI
	const DRAGONAIR
	const DRAGONITE
	const MEWTWO
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
	const SENTRET
	const FURRET
	const HOOTHOOT
	const NOCTOWL
	const LEDYBA
	const LEDIAN	
	const SPINARAK
	const ARIADOS
	const CROBAT
	const CHINCHOU
	const LANTURN
	const PICHU	
	const CLEFFA	
	const IGGLYBUFF
	; const TOGEPI
	; const TOGETIC
	; const NATU
	; const XATU
	const MAREEP
	const FLAAFFY
	const AMPHAROS	
	const BELLOSSOM
	const MARILL
	const AZUMARILL
	const SUDOWOODO
	const POLITOED
	const HOPPIP
	const SKIPLOOM
	const JUMPLUFF
	; const AIPOM
	; const SUNKERN
	; const SUNFLORA
	const YANMA	
	const WOOPER
	const QUAGSIRE	
	const ESPEON
	const UMBREON
	const MURKROW
	const SLOWKING
	const MISDREAVUS
	; const UNOWN
	const WOBBUFFET
	; const GIRAFARIG
	; const PINECO
	; const FORRETRESS
	const DUNSPARCE
	const GLIGAR
	const STEELIX
	const SNUBBULL
	const GRANBULL	
	const QWILFISH
	const SCIZOR
	const SHUCKLE
	const HERACROSS
	const SNEASEL
	const TEDDIURSA
	const URSARING
	const SLUGMA
	const MAGCARGO	
	const SWINUB
	const PILOSWINE	
	const CORSOLA
	const REMORAID
	const OCTILLERY
	const DELIBIRD
	const MANTINE
	const SKARMORY
	const HOUNDOUR
	const HOUNDOOM	
	const KINGDRA	
	; const PHANPY
	; const DONPHAN
	const PORYGON2
	; const STANTLER
	const SMEARGLE
	; const TYROGUE
	; const HITMONTOP
	const SMOOCHUM
	; const ELEKID
	; const MAGBY	
	const MILTANK
	; const BLISSEY
	; const RAIKOU
	; const ENTEI
	; const SUICUNE
	const LARVITAR
	const PUPITAR
	const TYRANITAR
	; const LUGIA
	; const HO-OH
	; const CELEBI
DEF JOHTO_POKEMON EQU const_value
	const CHESPIN
	const QUILLADIN
	const CHESNAUGHT
	const FENNEKIN
	const BRAIXEN
	const DELPHOX
	const FROAKIE
	const FROGADIER
	const GRENINJA
	const BUNNELBY
	const DIGGERSBY
	const FLETCHLING
	const FLETCHINDR
	const TALONFLAME
	const SCATTERBUG
	const SPEWPA
	const VIVILLON
	const LITLEO
	const PYROAR
	const FLABEBE
	const FLOETTE
	const FLORGES
	const SKIDDO
	const GOGOAT
	const PANCHAM
	const PANGORO
	const FURFROU
	const ESPURR
	const MEOWSTIC
	const HONEDGE
	const DOUBLADE
	const AEGISLASH
	const SPRITZEE
	const AROMATISSE
	const SWIRLIX
	const SLURPUFF
	const INKAY
	const MALAMAR
	const BINACLE
	const BARBARACLE
	const SKRELP
	const DRAGALGE
	const CLAUNCHER
	const CLAWITZER
	const HELIOPTILE
	const HELIOLISK
	const TYRUNT
	const TYRANTRUM
	const AMAURA
	const AURORUS
	const SYLVEON
	const HAWLUCHA
	const DEDENNE
	const CARBINK
	const GOOMY
	const SLIGGOO
	const GOODRA
	const KLEFKI
	const PHANTUMP
	const TREVENANT
	const PUMPKABOO
	const GOURGEIST
	const BERGMITE
	const AVALUGG
	const NOIBAT
	const NOIVERN
	const XERNEAS
	const YVELTAL
	const ZYGARDE
	const DIANCIE
	const HOOPA
	const VOLCANION

DEF NUM_POKEMON EQU const_value - 1
	const_skip       ; fc
	const EGG        ; fd

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
