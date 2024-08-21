Scriptname tth_MCMScript extends SKI_ConfigBase  
{This is the MCM settings config.}

Actor Property PlayerRef Auto

bool Property hasBreezehomeSpell Auto
Spell Property sBreezehomeSpell Auto

bool Property hasHjerimSpell Auto
Spell Property sHjerimSpell Auto

bool Property hasHoneysideSpell Auto
Spell Property sHoneysideSpell Auto

bool Property hasProudspireManorSpell Auto
Spell Property sProudspireManorSpell Auto

bool Property hasSeverinHouseSpell Auto
Spell Property sSeverinHouseSpell Auto

bool Property hasVlindrelHallSpell Auto
Spell Property sVlindrelHallSpell Auto

bool Property hasLakeviewManorSpell Auto
Spell Property sLakeviewManorSpell Auto

bool Property hasWindstadManorSpell Auto
Spell Property sWindstadManorSpell Auto

bool Property hasHeljarchenHallSpell Auto
Spell Property sHeljarchenHallSpell Auto

;------------ AE Houses -----------------
bool Property hasBloodchillCavernSpell Auto
Spell Property sBloodchillCavernSpell Auto

bool Property hasDeadMansDreadSpell Auto
Spell Property sDeadMansDreadSpell Auto

bool Property hasGallowsHallSpell Auto
Spell Property sGallowsHallSpell Auto

bool Property hasGoldenhillsPlantationSpell Auto
Spell Property sGoldenhillsPlantationSpell Auto

bool Property hasHendraheimSpell Auto
Spell Property sHendraheimSpell Auto

bool Property hasMyrwatchSpell Auto
Spell Property sMyrwatchSpell Auto

bool Property hasNchuanthumzSpell Auto
Spell Property sNchuanthumzSpell Auto

bool Property hasShadowfootSanctumSpell Auto
Spell Property sShadowfootSanctumSpell Auto

bool Property hasTundraHomesteadSpell Auto
Spell Property sTundraHomesteadSpell Auto

Event OnConfigInit()
    ModName = "Teleport To Homes"
    Pages = new string[1]
    Pages[0] = "Home Spells"
EndEvent

Event OnPageReset(string page)
	SetCursorFillMode(TOP_TO_BOTTOM)
	AddHeaderOption("Base Game Homes")
    AddToggleOptionST("BreezeHomeSpell", "Breezehome Home Spell", hasSpell(sBreezehomeSpell))
    AddToggleOptionST("HjerimSpell", "Hjerim Home Spell", hasSpell(sHjerimSpell))
    AddToggleOptionST("HoneysideSpell", "Honeyside Home Spell", hasSpell(sHoneysideSpell))
    AddToggleOptionST("ProudspireManorSpell", "Proudspire Manor Spell", hasSpell(sProudspireManorSpell))
    AddToggleOptionST("VlindrelHallSpell", "Vlindrel Hall Spell", hasSpell(sVlindrelHallSpell))

	AddEmptyOption()
	AddHeaderOption("DLC Homes")
	AddToggleOptionST("SeverinHouseSpell", "Severin House Spell", hasSpell(sSeverinHouseSpell))
    AddToggleOptionST("LakeviewManorSpell", "Lakeview Manor Spell", hasSpell(sLakeviewManorSpell))
    AddToggleOptionST("WindstadManorSpell", "Windstad Manor Spell", hasSpell(sWindstadManorSpell))
    AddToggleOptionST("HeljarchenHallSpell", "Heljarchen Hall Spell", hasSpell(sHeljarchenHallSpell))

	SetCursorPosition(1)
	AddHeaderOption("Creation Club Homes")
	AddToggleOptionST("BloodchillCavernSpell", "Bloodchill Cavern Spell", hasSpell(sBloodchillCavernSpell))
	AddToggleOptionST("DeadMansDreadSpell", "Dead Man's Dread Spell", hasSpell(sDeadMansDreadSpell))
	AddToggleOptionST("GallowsHallSpell", "Gallows Hall Spell", hasSpell(sGallowsHallSpell))
	AddToggleOptionST("GoldenhillsPlantationSpell", "Goldenhills Plantation Spell", hasSpell(sGoldenhillsPlantationSpell))
	AddToggleOptionST("HendraheimSpell", "Hendraheim Spell", hasSpell(sHendraheimSpell))
	AddToggleOptionST("MyrwatchSpell", "Myrwatch Spell", hasSpell(sMyrwatchSpell))
	AddToggleOptionST("NchuanthumzSpell", "Nchuanthumz Spell", hasSpell(sNchuanthumzSpell))
	AddToggleOptionST("ShadowfootSanctumSpell", "Shadowfoot Sanctum Spell", hasSpell(sShadowfootSanctumSpell))
	AddToggleOptionST("TundraHomesteadSpell", "Tundra Homestead Spell", hasSpell(sTundraHomesteadSpell))
EndEvent

state BreezeHomeSpell
	event OnSelectST()
        hasBreezehomeSpell = hasSpell(sBreezehomeSpell)
		DetermineSpellState(hasBreezehomeSpell, sBreezehomeSpell)
	endEvent

	event OnDefaultST()
		hasBreezehomeSpell = hasSpell(sBreezehomeSpell)
	endEvent

	event OnHighlightST()
		SetInfoText("Select to add/remove the Breezehome Home Spell to/from the character.")
	endEvent
endState

state HjerimSpell
	event OnSelectST()
        hasHjerimSpell = hasSpell(sHjerimSpell)
		DetermineSpellState(hasHjerimSpell, sHjerimSpell)
	endEvent

	event OnDefaultST()
		hasHjerimSpell = hasSpell(sHjerimSpell)
	endEvent

	event OnHighlightST()
		SetInfoText("Select to add/remove the Hjerim Home Spell to/from the character.")
	endEvent
endState

state HoneysideSpell
	event OnSelectST()
        hasHoneysideSpell = hasSpell(sHoneysideSpell)
		DetermineSpellState(hasHoneysideSpell, sHoneysideSpell)
	endEvent

	event OnDefaultST()
		hasHoneysideSpell = hasSpell(sHoneysideSpell)
	endEvent

	event OnHighlightST()
		SetInfoText("Select to add/remove the Honeyside Home Spell to/from the character.")
	endEvent
endState

state ProudspireManorSpell
	event OnSelectST()
        hasProudspireManorSpell = hasSpell(sProudspireManorSpell)
		DetermineSpellState(hasProudspireManorSpell, sProudspireManorSpell)
	endEvent

	event OnDefaultST()
		hasProudspireManorSpell = hasSpell(sProudspireManorSpell)
	endEvent

	event OnHighlightST()
		SetInfoText("Select to add/remove the Proudspire Manor Home Spell to/from the character.")
	endEvent
endState

state SeverinHouseSpell
	event OnSelectST()
        hasSeverinHouseSpell = hasSpell(sSeverinHouseSpell)
		DetermineSpellState(hasSeverinHouseSpell, sSeverinHouseSpell)
	endEvent

	event OnDefaultST()
		hasSeverinHouseSpell = hasSpell(sSeverinHouseSpell)
	endEvent

	event OnHighlightST()
		SetInfoText("Select to add/remove the 'Severin House' Home Spell to/from the character.")
	endEvent
endState

state VlindrelHallSpell
	event OnSelectST()
        hasVlindrelHallSpell = hasSpell(sVlindrelHallSpell)
		DetermineSpellState(hasVlindrelHallSpell, sVlindrelHallSpell)
	endEvent

	event OnDefaultST()
		hasVlindrelHallSpell = hasSpell(sVlindrelHallSpell)
	endEvent

	event OnHighlightST()
		SetInfoText("Select to add/remove the Vlindrel Hall Home Spell to/from the character.")
	endEvent
endState

state LakeviewManorSpell
	event OnSelectST()
        hasLakeviewManorSpell = hasSpell(sLakeviewManorSpell)
		DetermineSpellState(hasLakeviewManorSpell, sLakeviewManorSpell)
	endEvent

	event OnDefaultST()
		hasLakeviewManorSpell = hasSpell(sLakeviewManorSpell)
	endEvent

	event OnHighlightST()
		SetInfoText("Select to add/remove the Lakeview Manor Home Spell to/from the character.")
	endEvent
endState

state WindstadManorSpell
	event OnSelectST()
        hasWindstadManorSpell = hasSpell(sWindstadManorSpell)
		DetermineSpellState(hasWindstadManorSpell, sWindstadManorSpell)
	endEvent

	event OnDefaultST()
		hasWindstadManorSpell = hasSpell(sWindstadManorSpell)
	endEvent

	event OnHighlightST()
		SetInfoText("Select to add/remove the Windstad Manor Home Spell to/from the character.")
	endEvent
endState

state HeljarchenHallSpell
	event OnSelectST()
        hasHeljarchenHallSpell = hasSpell(sHeljarchenHallSpell)
		DetermineSpellState(hasHeljarchenHallSpell, sHeljarchenHallSpell)
	endEvent

	event OnDefaultST()
		hasHeljarchenHallSpell = hasSpell(sHeljarchenHallSpell)
	endEvent

	event OnHighlightST()
		SetInfoText("Select to add/remove the Heljarchen Hall Home Spell to/from the character.")
	endEvent
endState

state BloodchillCavernSpell
	event OnSelectST()
        hasBloodchillCavernSpell = hasSpell(sBloodchillCavernSpell)
		DetermineSpellState(hasBloodchillCavernSpell, sBloodchillCavernSpell)
	endEvent

	event OnDefaultST()
		hasBloodchillCavernSpell = hasSpell(sBloodchillCavernSpell)
	endEvent

	event OnHighlightST()
		SetInfoText("Select to add/remove the Bloodchill Cavern Home Spell to/from the character.")
	endEvent
endState

state DeadMansDreadSpell
	event OnSelectST()
        hasDeadMansDreadSpell = hasSpell(sDeadMansDreadSpell)
		DetermineSpellState(hasDeadMansDreadSpell, sDeadMansDreadSpell)
	endEvent

	event OnDefaultST()
		hasDeadMansDreadSpell = hasSpell(sDeadMansDreadSpell)
	endEvent

	event OnHighlightST()
		SetInfoText("Select to add/remove the Dead Man's Dread Home Spell to/from the character.")
	endEvent
endState

state GallowsHallSpell
	event OnSelectST()
        hasGallowsHallSpell = hasSpell(sGallowsHallSpell)
		DetermineSpellState(hasGallowsHallSpell, sGallowsHallSpell)
	endEvent

	event OnDefaultST()
		hasGallowsHallSpell = hasSpell(sGallowsHallSpell)
	endEvent

	event OnHighlightST()
		SetInfoText("Select to add/remove the Gallows Hall Home Spell to/from the character.")
	endEvent
endState

state GoldenhillsPlantationSpell
	event OnSelectST()
        hasGoldenhillsPlantationSpell = hasSpell(sGoldenhillsPlantationSpell)
		DetermineSpellState(hasGoldenhillsPlantationSpell, sGoldenhillsPlantationSpell)
	endEvent

	event OnDefaultST()
		hasGoldenhillsPlantationSpell = hasSpell(sGoldenhillsPlantationSpell)
	endEvent

	event OnHighlightST()
		SetInfoText("Select to add/remove the Goldenhills Plantation Home Spell to/from the character.")
	endEvent
endState

state HendraheimSpell
	event OnSelectST()
        hasHendraheimSpell = hasSpell(sHendraheimSpell)
		DetermineSpellState(hasHendraheimSpell, sHendraheimSpell)
	endEvent

	event OnDefaultST()
		hasHendraheimSpell = hasSpell(sHendraheimSpell)
	endEvent

	event OnHighlightST()
		SetInfoText("Select to add/remove the Hendraheim Home Spell to/from the character.")
	endEvent
endState

state MyrwatchSpell
	event OnSelectST()
        hasMyrwatchSpell = hasSpell(sMyrwatchSpell)
		DetermineSpellState(hasMyrwatchSpell, sMyrwatchSpell)
	endEvent

	event OnDefaultST()
		hasMyrwatchSpell = hasSpell(sMyrwatchSpell)
	endEvent

	event OnHighlightST()
		SetInfoText("Select to add/remove the Myrwatch Home Spell to/from the character.")
	endEvent
endState

state NchuanthumzSpell
	event OnSelectST()
        hasNchuanthumzSpell = hasSpell(sNchuanthumzSpell)
		DetermineSpellState(hasNchuanthumzSpell, sNchuanthumzSpell)
	endEvent

	event OnDefaultST()
		hasNchuanthumzSpell = hasSpell(sNchuanthumzSpell)
	endEvent

	event OnHighlightST()
		SetInfoText("Select to add/remove the Nchuanthumz Home Spell to/from the character.")
	endEvent
endState

state ShadowfootSanctumSpell
	event OnSelectST()
        hasShadowfootSanctumSpell = hasSpell(sShadowfootSanctumSpell)
		DetermineSpellState(hasShadowfootSanctumSpell, sShadowfootSanctumSpell)
	endEvent

	event OnDefaultST()
		hasShadowfootSanctumSpell = hasSpell(sShadowfootSanctumSpell)
	endEvent

	event OnHighlightST()
		SetInfoText("Select to add/remove the Shadowfoot Sanctum Home Spell to/from the character.")
	endEvent
endState

state TundraHomesteadSpell
	event OnSelectST()
        hasTundraHomesteadSpell = hasSpell(sTundraHomesteadSpell)
		DetermineSpellState(hasTundraHomesteadSpell, sTundraHomesteadSpell)
	endEvent

	event OnDefaultST()
		hasTundraHomesteadSpell = hasSpell(sTundraHomesteadSpell)
	endEvent

	event OnHighlightST()
		SetInfoText("Select to add/remove the Tundra Homestead Home Spell to/from the character.")
	endEvent
endState

bool Function hasSpell(Form akForm)
    bool hasSpell = PlayerRef.HasSpell(akForm)
    return hasSpell
EndFunction

Function DetermineSpellState(bool HomeSpellBool, Spell akSpell)
    if HomeSpellBool
        Debug.MessageBox("Removed the spell - " + akSpell.GetName() + ".")
        PlayerRef.RemoveSpell(akSpell)
    else
        Debug.MessageBox("Added the spell - " + akSpell.GetName() + ".")
        PlayerRef.AddSpell(akSpell)
    endif
EndFunction
