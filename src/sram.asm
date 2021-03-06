SECTION "SRAM0", SRAM

s0a000:: ; a000
	ds $3

s0a003:: ; a003
	ds $1
s0a004:: ; a004
	ds $1
s0a005:: ; a005
	ds $1
sTextSpeed:: ; a006
	ds $1

; store settings for animation enabled/disabled
; 0 means enabled, 1 means disabled
sAnimationsDisabled:: ; a007
	ds $1

s0a008:: ; a008
	ds $1
s0a009:: ; a009
	ds $1
s0a00a:: ; a00a
	ds $1
s0a00b:: ; a00b
	ds $1
s0a00c:: ; a00c
	ds $4

sPlayerName:: ; a010
	ds NAME_BUFFER_LENGTH

	ds $e0

; for each card, how many (0-127) the player owns
; CARD_NOT_OWNED ($80) indicates that the player has not yet seen the card
sCardCollection:: ; a100
	ds $100

sDeck1Name:: ; a200
	ds DECK_NAME_SIZE
sDeck1Cards:: ; a218
	ds DECK_SIZE

sDeck2Name:: ; a254
	ds DECK_NAME_SIZE
sDeck2Cards:: ; a26c
	ds DECK_SIZE

sDeck3Name:: ; a2a8
	ds DECK_NAME_SIZE
sDeck3Cards:: ; a2c0
	ds DECK_SIZE

sDeck4Name:: ; a2fc
	ds DECK_NAME_SIZE
sDeck4Cards:: ; a314
	ds DECK_SIZE

s0a350:: ; a350
	ds DECK_NAME_SIZE + DECK_SIZE
s0a3a4:: ; a3a4
	ds DECK_NAME_SIZE + DECK_SIZE
s0a3f8:: ; a3f8
	ds DECK_NAME_SIZE + DECK_SIZE

	ds $12b4

sCurrentlySelectedDeck:: ; b700
	ds $1

sb701:: ; b701
	ds $1

	ds $1

sb703:: ; b703
	ds $1

	ds $fc

sb800:: ; b800
	ds $8

sb808:: ; b808
	ds $1

sb809:: ; b809
	ds $1

sPlayTimeCounter:: ; b80a
	ds $5

sOverworldMapSelection:: ; b80f
	ds $1

sTempMap:: ; b810
	ds $1

sTempPlayerXCoord:: ; b811
	ds $1

sTempPlayerYCoord:: ; b812
	ds $1

sTempPlayerDirection:: ; b813
	ds $1

sb814:: ; b814
	ds $1

sDuelResult:: ; b815
	ds $1

sNPCDuelist:: ; b816
	ds $1

sChallengeHallNPC:: ; b817
	ds $1

sb818:: ; b818
	ds $4

sb81c:: ; b81c
	ds $b

sb827:: ; b827
	ds $1

sb828:: ; b828
	ds $1

sb829:: ; b829
	ds $1

sb82a:: ; b82a
	ds $1

sb82b:: ; b82b
	ds $1

sPCPackSelection:: ; b82c
	ds $1

sPCPacks:: ; b82d
	ds $f

sDefaultSong:: ; b83c
	ds $1

sb83d:: ; b83d
	ds $1

sb83e:: ; b83e
	ds $1

sb83f:: ; b83f
	ds $a

sb849:: ; b849
	ds $1

sMultichoiceTextboxResult_ChooseDeckToDuelAgainst:: ; b84a
	ds $1

sb84b:: ; b84b
	ds $1

sb84c:: ; b84c
	ds $f

sb85b:: ; b85b
	ds $10

sb86b:: ; b86b
	ds $10

sEventVars:: ; b87b
	ds $40

	ds $189

sba44:: ; ba44
	ds $1

	ds $11

sba56:: ; ba56
	ds $1

sba57:: ; ba57
	ds $1

	ds $10

sba68:: ; ba68
	ds $1

SECTION "SRAM1", SRAM

; from VRAM0
s0BGMap:: ds $400 ; a000
; from VRAM1
s1BGMap:: ds $400 ; a400

SECTION "SRAM2", SRAM

	ds $1c00

; saved data of the current duel, including a two-byte checksum
; see SaveDuelDataToDE
sCurrentDuel:: ; bc00
	ds $1
sCurrentDuelChecksum:: ; bc01
	ds $2
sCurrentDuelData:: ; bc04
	ds $33b

SECTION "SRAM3", SRAM
