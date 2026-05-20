; Common Commands
; The commands defined in this file will be appended to every character's command list.
; Commands used by common states should be placed here to prevent crashing due to missing commands.
; Most of these are kept blank so that they won't interfere with a character trying to remap them.

[Command]
name = "recovery"
command = 
time = 1
buffer.time = 1
buffer.hitpause = 1
buffer.pauseend = 1

[Command]
name = "TagShiftFwd"
command = d
time = 1
buffer.time = 1
buffer.hitpause = 1
buffer.pauseend = 1

[Command]
name = "holdfwd"
command =
time = 1
buffer.time = 1
buffer.hitpause = 1
buffer.pauseend = 1

[Command]
name = "holdback"
command =
time = 1
buffer.time = 1
buffer.hitpause = 1
buffer.pauseend = 1

[Command]
name = "holdup"
command =
time = 1
buffer.time = 1
buffer.hitpause = 1
buffer.pauseend = 1

[Command]
name = "holddown"
command =
time = 1
buffer.time = 1
buffer.hitpause = 1
buffer.pauseend = 1

; Every common command below this point is deprecated.
; It is recommended that a character that doesn't need commands for itself but still wishes to use the command trigger should still define the necessary commands in its own command file.

[Command]
name = "x"
command =
time = 1
buffer.time = 1
buffer.hitpause = 1
buffer.pauseend = 1

[Command]
name = "y"
command =
time = 1
buffer.time = 1
buffer.hitpause = 1
buffer.pauseend = 1

[Command]
name = "z"
command =
time = 1
buffer.time = 1
buffer.hitpause = 1
buffer.pauseend = 1

[Command]
name = "a"
command =
time = 1
buffer.time = 1
buffer.hitpause = 1
buffer.pauseend = 1

[Command]
name = "b"
command =
time = 1
buffer.time = 1
buffer.hitpause = 1
buffer.pauseend = 1

[Command]
name = "c"
command =
time = 1
buffer.time = 1
buffer.hitpause = 1
buffer.pauseend = 1

[Command]
name = "start"
command =
time = 1
buffer.time = 1
buffer.hitpause = 1
buffer.pauseend = 1

[Command]
name = "d"
command =
time = 1
buffer.time = 1
buffer.hitpause = 1
buffer.pauseend = 1

[Command]
name = "w"
command =
time = 1
buffer.time = 1
buffer.hitpause = 1
buffer.pauseend = 1

[Command]
name = "m"
command =
time = 1
buffer.time = 1
buffer.hitpause = 1
buffer.pauseend = 1

[Command]
name = "menu"
command =
time = 1
buffer.time = 1
buffer.hitpause = 1
buffer.pauseend = 1

;===========================================================================
; GLOBAL KAMEO ASSIST TRIGGERS - Applies to ALL characters
;===========================================================================
[State -1, Kameo - Neutral]
type = ChangeState
value = 18000
triggerall = !AILevel
triggerall = teammode = tag
triggerall = movetype != H
triggerall = stateno != 18000 && stateno != 18010 && stateno != 18020 && stateno != 18030 && stateno != 18040
triggerall = command = "w"
triggerall = !command = "holdfwd" && !command = "holdback" && !command = "holdup" && !command = "holddown"
trigger1 = ctrl || movetype = A || stateno = 10 || stateno = 20 || stateno = 100

[State -1, Kameo - Forward]
type = ChangeState
value = 18010
triggerall = !AILevel
triggerall = teammode = tag
triggerall = movetype != H
triggerall = stateno != 18000 && stateno != 18010 && stateno != 18020 && stateno != 18030 && stateno != 18040
triggerall = command = "w"
trigger1 = (ctrl || movetype = A || stateno = 10 || stateno = 20 || stateno = 100) && command = "holdfwd"

[State -1, Kameo - Back]
type = ChangeState
value = 18020
triggerall = !AILevel
triggerall = teammode = tag
triggerall = movetype != H
triggerall = stateno != 18000 && stateno != 18010 && stateno != 18020 && stateno != 18030 && stateno != 18040
triggerall = command = "w"
trigger1 = (ctrl || movetype = A || stateno = 10 || stateno = 20 || stateno = 100) && command = "holdback"

[State -1, Kameo - Up]
type = ChangeState
value = 18030
triggerall = !AILevel
triggerall = teammode = tag
triggerall = movetype != H
triggerall = stateno != 18000 && stateno != 18010 && stateno != 18020 && stateno != 18030 && stateno != 18040
triggerall = command = "w"
trigger1 = (ctrl || movetype = A || stateno = 10 || stateno = 20 || stateno = 100) && command = "holdup"

[State -1, Kameo - Down]
type = ChangeState
value = 18040
triggerall = !AILevel
triggerall = teammode = tag
triggerall = movetype != H
triggerall = stateno != 18000 && stateno != 18010 && stateno != 18020 && stateno != 18030 && stateno != 18040
triggerall = command = "w"
trigger1 = (ctrl || movetype = A || stateno = 10 || stateno = 20 || stateno = 100) && command = "holddown"
