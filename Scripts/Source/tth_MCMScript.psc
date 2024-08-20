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

	SetCursorPosition(1)
	AddHeaderOption("DLC Homes")
	AddToggleOptionST("SeverinHouseSpell", "Severin House Spell", hasSpell(sSeverinHouseSpell))
    AddToggleOptionST("LakeviewManorSpell", "Lakeview Manor Spell", hasSpell(sLakeviewManorSpell))
    AddToggleOptionST("WindstadManorSpell", "Windstad Manor Spell", hasSpell(sWindstadManorSpell))
    AddToggleOptionST("HeljarchenHallSpell", "Heljarchen Hall Spell", hasSpell(sHeljarchenHallSpell))
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
