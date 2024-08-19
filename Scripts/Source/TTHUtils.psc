Scriptname TTHUtils

;Sends the text to the notification window of the game.
Function Notify(string text) global
    Debug.Notification("[TTH] " + text)
EndFunction

;Pops up a message box in game with the text.
Function Message(string text) global
    Debug.MessageBox("[TTH] " + text)
EndFunction