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

; bool Property hasHoneysideSpell Auto
; Spell Property sHoneysideSpell Auto

; bool Property hasHoneysideSpell Auto
; Spell Property sHoneysideSpell Auto

; bool Property hasHoneysideSpell Auto
; Spell Property sHoneysideSpell Auto

Event OnConfigInit()
    ModName = "[TTH] Teleport To Homes"
    Pages = new string[1]
    Pages[0] = "Home Spells"
EndEvent

Event OnPageReset(string page)
    AddToggleOptionST("BreezeHomeSpell", "Breezehome Home Spell", hasSpell(sBreezehomeSpell))
    AddToggleOptionST("HjerimSpell", "Hjerim Home Spell", hasSpell(sHjerimSpell))
    AddToggleOptionST("HoneysideSpell", "Honeyside Home Spell", hasSpell(sHoneysideSpell))
    ; AddToggleOptionST("HjerimSpell", "Hjerim Spell", hasSpell(sHjerimSpell))
    ; AddToggleOptionST("HjerimSpell", "Hjerim Spell", hasSpell(sHjerimSpell))
    ; AddToggleOptionST("HjerimSpell", "Hjerim Spell", hasSpell(sHjerimSpell))
    ; AddToggleOptionST("HjerimSpell", "Hjerim Spell", hasSpell(sHjerimSpell))
    ; AddToggleOptionST("HjerimSpell", "Hjerim Spell", hasSpell(sHjerimSpell))
    ; AddToggleOptionST("HjerimSpell", "Hjerim Spell", hasSpell(sHjerimSpell))
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
		SetInfoText("Select to add/remove the Breezehome Home Spell from the character.")
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
		SetInfoText("Select to add/remove the Hjerim Home Spell from the character.")
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
		SetInfoText("Select to add/remove the Honeyside Home Spell from the character.")
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
