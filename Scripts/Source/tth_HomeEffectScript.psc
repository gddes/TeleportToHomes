Scriptname tth_HomeEffectScript extends activemagiceffect  
{Script that handles teleporting the player home.}

ObjectReference Property Home Auto


Event OnEffectStart(Actor target, Actor caster)
    TeleportHome(caster)
EndEvent

;Teleports the player to the home selected in the ck.
Function TeleportHome(Actor player)
    Utility.Wait(0.5)
    Game.FadeOutGame(false, true, 2.0, 1.0)
    player.MoveTo(Home)
    Game.EnableFastTravel(true)
    Game.FastTravel(Home)
EndFunction
