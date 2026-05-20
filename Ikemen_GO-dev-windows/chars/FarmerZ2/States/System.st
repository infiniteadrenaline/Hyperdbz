;==============================================================================================
;=======================================<SYSTEM STATES>========================================
;==============================================================================================

;====================<STANDING>====================
[StateDef 0]
type = S
physics = S
moveType = I
velSet = 0,0
sprPriority = 0

[State 0, Remove Explods]
type = RemoveExplod
trigger1 = IsHelper


[state 0, helper]
type = helper
trigger1 = !numHelper(30000)
postype = p1
pos = 0,0
id = 30000
stateno = 30000

[state 0, invisible]
type = assertspecial
trigger1 = 1
flag = invisible

[state 0, nothitby]
type = nothitby
trigger1 = 1
value = SCA

[State 0, Destroy Helpers]
type = DestroySelf
trigger1 = IsHelper

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 0 && Anim != 5
trigger2 = Anim = 5 && !AnimTime
value = 0

[State 0, Skywalker]
type = ChangeState
triggerall = pos y < 0
trigger1 = !NumEnemy
trigger2 = NumEnemy = 1
trigger2 = (Enemy, Name = "M -NES Game 1" + Enemy, Name = "M -NES Game 2" + Enemy, Name = "M -GB Game 1" + Enemy, AuthorName = "Bane84") < 2
trigger3 = Numenemy >= 2
trigger3 = (Enemy(0), Name = "M -NES Game 1" + Enemy(0), Name = "M -NES Game 2" + Enemy(0), Name = "M -GB Game 1" + Enemy(0), AuthorName = "Bane84") < 2
trigger3 = (Enemy(1), Name = "M -NES Game 1" + Enemy(1), Name = "M -NES Game 2" + Enemy(1), Name = "M -GB Game 1" + Enemy(1), AuthorName = "Bane84") < 2
value = 50

[State 0, Dead]
type = ChangeState
trigger1 = helper, stateno = 1100
value = 5150



;====================<CROUCHING>====================
;Stand to Crouch
[StateDef 10]
type = C
physics = C
moveType = I
velSet = 0,0
sprPriority = 0

[State 10, End]
type = ChangeState
trigger1 = 1
value = 0


;Crouching
[StateDef 11]
type = C
physics = C
moveType = I
anim = 11
velSet = 0,0
sprPriority = 0

[State 10, End]
type = ChangeState
trigger1 = 1
value = 0


;Crouch to Stand
[StateDef 12]
type = S
physics = S
moveType = I
velSet = 0,0
sprPriority = 0

[State 10, End]
type = ChangeState
trigger1 = 1
value = 0


;====================<WALKING>====================
[StateDef 20]
type = S
physics = S
moveType = I
sprPriority = 0


[State 10, End]
type = ChangeState
trigger1 = 1
value = 0



;====================<JUMPING>====================
;Jumping
[StateDef 40]
type = S
physics = S
moveType = I
anim = 40
ctrl = 0
velSet = 0,0
sprPriority = 1
faceP2 = 1

[State 10, End]
type = ChangeState
trigger1 = 1
value = 0


;In Air
[StateDef 50]
type = A
physics = N
moveType = I
sprPriority = 1

[State 10, End]
type = ChangeState
trigger1 = 1
value = 0



;Landing
[StateDef 52]
type = S
physics = S
moveType = I
anim = 47
ctrl = 0
velSet = 0,0
sprPriority = 1

[State 10, End]
type = ChangeState
trigger1 = 1
value = 0



;======================<RUN>===========================
[StateDef 100]
type = S
physics = N
moveType = I
ctrl = 0
sprPriority = 1

[State 10, End]
type = ChangeState
trigger1 = 1
value = 0




;========================<DASH BACKWARDS>==========================
[StateDef 105]
type = A
physics = N
moveType = I
velSet = 0,0
anim = 105
ctrl = 0
sprPriority = 1

[State 10, End]
type = ChangeState
trigger1 = 1
value = 0

;===================<GUARD>================
;Guard Start
[StateDef 120]
type = U
physics = U
anim = 120 + (StateType = C) + (StateType = A) * 2

[State 10, End]
type = ChangeState
trigger1 = 1
value = 1100


;Standing Guard
[StateDef 130]
type = S
physics = S

[State 10, End]
type = ChangeState
trigger1 = 1
value = 1100


;Crouch Guarding
[StateDef 131]
type = C
physics = C

[State 10, End]
type = ChangeState
trigger1 = 1
value = 1100


;Air Guard
[StateDef 132]
type = A
physics = N

[State 10, End]
type = ChangeState
trigger1 = 1
value = 1100


;Guard End
[StateDef 140]
type = U
physics = U
ctrl = 1

[State 10, End]
type = ChangeState
trigger1 = 1
value = 1100


;Hit while Guarding (Standing)
[StateDef 150]
type = S
movetype = H
physics = N
velSet = 0,0

[State 10, End]
type = ChangeState
trigger1 = 1
value = 1100


;Knocked Back while Guarding (Standing)
[StateDef 151]
type = S
moveType = H
physics = S
anim = 150

[State 10, End]
type = ChangeState
trigger1 = 1
value = 1100


;Hit while Guarding (Crouching)
[StateDef 152]
type = C
moveType = H
physics = N
velSet = 0,0

[State 10, End]
type = ChangeState
trigger1 = 1
value = 1100


;Knocked Back while Guarding (Crouching)
[StateDef 153]
type = C
moveType = H
physics = C
anim = 151

[State 10, End]
type = ChangeState
trigger1 = 1
value = 1100


;Hit while Guarding (Jumping)
[StateDef 154]
type = A
moveType = H
physics = N
velSet = 0,0

[State 10, End]
type = ChangeState
trigger1 = 1
value = 1100


;Knocked Back while Guarding (Jumping)
[StateDef 155]
type = A
moveType = H
physics = N
anim = 152

[State 10, End]
type = ChangeState
trigger1 = 1
value = 1100



;====================<INITIALIZE>====================
[StateDef 5900]
type = S

[State 5900, Int VarReset]
type = VarRangeSet
trigger1 = !RoundsExisted
value = 0

[State 5900, Float VarReset]
type = VarRangeSet
trigger1 = !RoundsExisted
fvalue = 0

[State 0, VarSet]
type = VarSet
trigger1 = 1
var(10) = 0

[State 5900, End]
type = ChangeState
trigger1 = roundno > 1
value = 1111

[State 5900, Intro Decider]
type = ChangeState
trigger1 = RoundNo = 1
value = 190



;====================<INTRO>====================
[StateDef 190]
type = S
physics = S

[State 190, Assert: Intro]
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 190, voice]
type = PlaySnd
trigger1 = !Time
value = 190,0 + (Random % 2)
channel = 0



[State 5900, End]
type = ChangeState
trigger1 = Time = 90
value = 0





;====================<WIN POSE DECIDER>====================
[StateDef 180]
type = S

[State 180, Win Decider]
type = ChangeState
trigger1 = 1
value = 181



;====================<WIN 1>====================
[StateDef 181]
type = S
physics = S
anim = 30001
ctrl = 0

[State 190, voice]
type = PlaySnd
trigger1 = !Time
value = 181,0
channel = 0


[State 181, Assert: RoundNotOver]
type = AssertSpecial
trigger1 = Time < 200
flag = RoundNotOver



[Statedef 1100]
type    = A
movetype= H
physics = N
anim = 5000

[State 0, velset]
type = velset
trigger1 = roundno = 1
x = -5.5
y = -4.5

[state 0, nothitby]
type = nothitby
trigger1 = 1
value = SCA

[State 0, velset]
type = velset
trigger1 = roundno > 1
x = -3
y = -4.5

[State 0, LifeAdd]
type = LifeAdd
trigger1 = 1
value = -9999
kill = 1
ignorehitpause = 1

[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0
ignorehitpause = 1

[state 0,assertspecial]
type = assertspecial
trigger1 = abs(pos x) > 320
flag = invisible

[State 0, SelfState]
type = ChangeState
trigger1 = abs(pos x) > 320
value = 5150


;---------------------------------------------------------------------------
; Downed get-hit (lying defeated)
[Statedef 5150]
type    = L
movetype= H
physics = N
sprpriority = -3
ctrl = 0

[state 0,assertspecial]
type = assertspecial
trigger1 = 1
flag = invisible

[State 0, LifeAdd]
type = LifeAdd
trigger1 = 1
value = -9999
kill = 1
ignorehitpause = 1


[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0
ignorehitpause = 1

[State 5150, 1] ;Normal anim
type = ChangeAnim
triggerall = Time = 0
triggerall = SelfAnimExist(5140)
trigger1 = (anim != [5111,5119]) && (anim != [5171,5179])
trigger2 = !SelfAnimExist(5140 + (anim % 10))
value = 5140

[State 5150, 3] ;Hit up type anim
type = ChangeAnim
trigger1 = Time = 0
trigger1 = (anim = [5111,5119]) || (anim = [5171,5179])
trigger1 = SelfAnimExist(5140 + (anim % 10))
value = 5140 + (anim % 10)

[State 5150, 4] ;Match over anim
type = ChangeAnim
persistent = 0
;trigger1 = Time = 0
trigger1 = MatchOver = 1
trigger1 = Anim = [5140,5149]
trigger1 = SelfAnimExist(anim+10)
value = anim+10

[State 5150, 5] ;Switch to 5110 if liedead anim does not exist
type = ChangeAnim
trigger1 = Time = 0
trigger1 = Anim != [5140,5159]
trigger1 = Anim != [5110,5119]
value = 5110

[State 5150, 6] ;Friction
type = VelMul
trigger1 = 1
x = 0.85

[State 5150, 7] ;Friction
type = posadd
trigger1 = 1 ;abs(Vel x) < Const(movement.down.friction.threshold)
x = -100

[State 5150, 7] ;Friction
type = VelSet
trigger1 = 1 ;abs(Vel x) < Const(movement.down.friction.threshold)
x = 0

[State 5150, 8]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1


;ah'm nigh invulnerable when ah'm blasting
[StateDef 1000]
type = S
physics = N
moveType = A
anim = 1000
ctrl = 0
velSet = 0,0
sprPriority = 1
faceP2 = 1

[State 1400, Gun Load Snd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 1000,0
channel = 1

[State 1400, Gun Shot Snd]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1000,1
channel = 2

[state 3000, playerpush]
type = playerpush
trigger1 =  1
value = 0

[state 3000, pos]
type = bindToRoot
trigger1 = 1

[State 0, HitOverride]
type = HitOverride
trigger1 = stateno = 1000
attr = SCA, AA, AP, AT
stateno = 1100
time = 1
ignorehitpause = 1

[State 0, Explod]
type = Explod
trigger1 = AnimElem = 2
anim = 1006
bindTime = -1
sprpriority = 3
postype = p1
pos = 0,0
ownpal = 1
removeongethit = 1

[State 1000, Projectile]
type = Helper
trigger1 = AnimElem = 2
helperType = Normal
stateNo = 1005
ID = 1005
name = "bang"
posType = P1
pos = 65,-53
ownPal = 1

[State 1000, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0


[StateDef 1005]
type = S
physics = N
moveType = A
ctrl = 0
anim = 1005
sprPriority = 3

[State 1005, Projectile reflection compatibility detection]
type = VarSet
trigger1 = 1
sysvar(0) = 131072

[State 1005, Set reflected StateNo]
type = VarSet
trigger1 = 1
sysvar(1) = 1015

[State 1005, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AP,AT
time = -1
stateno = 1007
ignoreHitPause = 1

[State 1005, HitBy]
type = HitBy
trigger1 = 1
value = SCA,NP,SP,HP
time = -1
ignoreHitPause = 1

[State 1005, ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 1005
value = 1005

[State 1005, VelSet]
type = VelSet
trigger1 = Time > 1
x = 25

[State 1005, Counter Flag]
type = VarSet
trigger1 = NumEnemy
trigger1 = MoveContact != 1
var(9) = (EnemyNear, MoveType = A)

[State 1005, Miss]
type = HitDef
trigger1 = 1
attr = S,SP
hitFlag =
sparkXY = -10,0

[State 1005, HitDef]
type = HitDef
trigger1 = 1
attr = S,SP
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = 1,1
getPower = 0,0
givePower = 36, 36
pauseTime = 0,2
guard.pauseTime = 0,2
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 12
ground.slideTime = 12
guard.hitTime = 12
air.hitTime = 120
airGuard.ctrlTime = 16
ground.velocity = 0, 0
ground.cornerPush.velOff = 0
guard.velocity = 0
guard.cornerPush.velOff = 0
air.velocity = 0, 0
air.cornerPush.velOff = 0
airGuard.velocity = 0, 0
airGuard.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
air.fall = 1
fall.recover = 1
fall.recoverTime = 34
forceStand = 1
hitSound = -1
guardSound = -1
sparkNo = -1
guard.SparkNo = -1
sparkXY = -10, -32
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120
sprPriority = 3

[State 1005, ChangeState]
type = ChangeState
trigger1 = MoveContact
value = 1006
ignoreHitPause = 1

[State 1005, ChangeState]
type = ChangeState
trigger1 = MoveReversed
value = 1007
ignoreHitPause = 1

[State 1005, End]
type = DestroySelf
trigger1 = FrontEdgeDist < -100 || BackEdgeDist < -100


;Hit Pause
[StateDef 1006]
type = A
physics = N
moveType = A
ctrl = 0
sprPriority = 3
moveHitPersist = 1

[State 1006, PosFreeze]
type = PosFreeze
trigger1 = 1
value = 1

[State 1006, HitSound]
type = PlaySnd
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
value = 2,0
channel = 2
ignorehitPause = 1

[State 1006, End]
type = ChangeState
trigger1 = Time >= 0
value = 1007


;Disappear
[StateDef 1007]
type = A
physics = N
moveType = A
anim = 1007
ctrl = 0
velset = -2.5,-4
sprPriority = 3
moveHitPersist = 1

[State 1007, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = 2,0
channel = 2
volume = -128
lowPriority = 1

[State 1007, VelAdd]
type = VelAdd
trigger1 = 1
y = 0.35

[State 1007, ChangeState]
type = ChangeState
triggerall = Time > 1
trigger1 = pos y > -vel y
value = 1008


[Statedef 1008]
type = A
physics = N

[State 1008, Bounce off floor sound]
type = PlaySnd
trigger1 = !Time
value = 1008,0

[State 1008, PosSet]
type = PosSet
trigger1 = !Time
y = 0

[State 1008, VelMul]
type = VelMul
trigger1 = !Time
x = 0.6
y = -0.4

[State 1008, VelAdd]
type = VelAdd
trigger1 = 1
y = 0.3

[State 1008, VarAdd]
type = VarAdd
trigger1 = vel y > 0
var(0) = 1

[State 1008, Transparency]
type = trans
trigger1 = var(0)
trans = addalpha
alpha = 256-(var(0)*10),var(0)*10

[State 1008, ChangeState]
type = ChangeState
triggerall = Time > 1
trigger1 = pos y > -vel y
value = 1009

[State 1008, End]
type = DestroySelf
trigger1 = var(0) >= 25


[Statedef 1009]
type = A
physics = N

[State 1009, PosSet]
type = PosSet
trigger1 = !Time
y = 0

[State 1009, VelMul]
type = VelMul
trigger1 = !Time
x = .6
y = -.4

[State 1009, Gravity]
type = VelAdd
trigger1 = 1
y = .3

[State 1009, VarAdd]
type = VarAdd
trigger1 = 1
var(0) = 1

[State 1009, Transparency]
type = trans
trigger1 = var(0)
trans = addalpha
alpha = 256-(var(0)*10),var(0)*10

[State 1009, ChangeState]
type = ChangeState
triggerall = Time > 1
trigger1 = pos y > -vel y
value = 1010

[State 1009, End]
type = DestroySelf
trigger1 = var(0) >= 25


[Statedef 1010]
type = A
physics = N
velset = 0,0

[State 1010, PosSet]
type = PosSet
trigger1 = !Time
y = 0

[State 1010, VarAdd]
type = VarAdd
trigger1 = 1
var(0) = 1

[State 1010, Transparency]
type = trans
trigger1 = var(0)
trans = addalpha
alpha = 256-(var(0)*10),var(0)*10

[State 1010, End]
type = DestroySelf
trigger1 = var(0) >= 25


[StateDef 1015]
type = S
physics = N
moveType = A
ctrl = 0
anim = 1005
sprPriority = 3

[State 1015, Turn]
type = Turn
trigger1 = !Time && PrevStateNo != 1015

[State 1015, Projectile reflection compatibility detection]
type = VarSet
trigger1 = 1
sysvar(0) = 131072

[State 1015, Set reflected StateNo]
type = VarSet
trigger1 = 1
sysvar(1) = 1005

[State 1015, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AP,AT
time = -1
stateno = 1007
ignoreHitPause = 1

[State 1015, HitBy]
type = HitBy
trigger1 = 1
value = SCA,NP,SP,HP
time = -1
ignoreHitPause = 1

[State 1015, ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 1005
value = 1005

[State 1015, VelSet]
type = VelSet
trigger1 = 1
x = 25

[State 1015, Counter Flag]
type = VarSet
trigger1 = NumEnemy
trigger1 = MoveContact != 1
var(9) = (EnemyNear, MoveType = A)

[State 1015, Miss]
type = HitDef
trigger1 = 1
attr = S,SP
hitFlag =
sparkXY = -10,0

[State 1015, HitDef]
type = HitDef
trigger1 = 1
ID = sysvar(0)
affectTeam = F
attr = S,SP
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = 1,1
getPower = 0,0
givePower = 36, 36
pauseTime = 0,2
guard.pauseTime = 0,2
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 12
ground.slideTime = 12
guard.hitTime = 12
air.hitTime = 120
airGuard.ctrlTime = 16
ground.velocity = 0, 0
ground.cornerPush.velOff = 0
guard.velocity = 0
guard.cornerPush.velOff = 0
air.velocity = 0, 0
air.cornerPush.velOff = 0
airGuard.velocity = 0, 0
airGuard.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
air.fall = 1
fall.recover = 1
fall.recoverTime = 34
forceStand = 1
hitSound = -1
guardSound = -1
sparkNo = -1
guard.SparkNo = -1
sparkXY = -10, -32
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120
sprPriority = 3


[State 1015, Turn]
type = Turn
trigger1 = MoveContact
trigger1 = Root, NumProjID(262144)
ignoreHitPause = 1
persistent = 0

[State 1015, ChangeState]
type = ChangeState
trigger1 = MoveContact
trigger1 = Root, NumProjID(262144)
value = sysvar(1)
ignoreHitPause = 1

[State 1015, ChangeState]
type = ChangeState
trigger1 = MoveContact
value = 1006
ignoreHitPause = 1

[State 1015, ChangeState]
type = ChangeState
trigger1 = MoveReversed
value = 1007
ignoreHitPause = 1

[State 1015, End]
type = DestroySelf
trigger1 = FrontEdgeDist < -100 || BackEdgeDist < -100


;=====================TANK STATES====================

;=====================TANK INTRO======================

[State -2, move]
type = null ;changestate
trigger1 = roundstate = 1 && roundno > 1
trigger1 = stateno != 1111
value = 1111

[StateDef 1111]
type = S
physics =S
moveType = I
ctrl = 0
anim = 2005
sprPriority = -1
moveHitPersist = 1

[State 9000, move]
type = posset
trigger1 = time = 0
x = 600

[State 2005, move]
type = screenbound
trigger1 = 1
value = 0


[State 2000]
type = playsnd
trigger1 = time = 1
value = 2000
volumescale = 50
channel = 3
loop = 1

[State 2005, move]
type = velset
trigger1 = 1
x = 5.5

[State 3000, dust FX]
type = helper
trigger1 = (time%13)=1
helpertype = normal
stateno = 3000
ID = 3000
name = "run_dust"
postype = p1
pos = 40, -10 ;0,0
ownpal = 1
facing = -1
size.yscale = 1
size.xscale = 1.5


[State 2005, move]
type = changestate
trigger1 = time = 120
trigger2 = roundstate > 1
value = 2001


;=====================TANK STILL======================

[StateDef 2001]
type = S
physics =S
moveType = I
ctrl = 0
sprPriority = -1
moveHitPersist = 1

[State 9000, move]
type = varset
trigger1 = time = 0
var(18) = 2001

[State 2005, move]
type = changeanim
trigger1 = prevstateno != 9000
trigger1 = time = 0
value = 2000

[State 2005, move]
type = velset
trigger1 = 1
x = 0

[State 2005, move]
type = changestate
trigger1 = animtime = 0
value = 2000


;=====================TANK IDLE======================

[StateDef 2000]
type = S
physics =S
moveType = I
ctrl = 0
sprPriority = -1
moveHitPersist = 1

[State 9000, move]
type = varset
trigger1 = time = 0
var(18) = 2000

[State 2005, move]
type = changeanim
trigger1 = prevstateno != 9000
trigger1 = time = 0
value = 2000

[State 2005, move]
type = null ;HitOverride
trigger1 = 1
attr = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
stateno = 9000

[State 2000]
type = playsnd
trigger1 = time = 1
value = 2000
volumescale = 50
channel = 3
loop = 1

[State 2005, move]
type = velset
trigger1 = 1
x = 0

[State 2005, move]
type = changestate
trigger1 = roundstate = 2
trigger1 = time % 7 = 1 && var(24) = [0,50]	; BACKWARD
value = 2010

[State 2005, move]
type = changestate
trigger1 = roundstate = 2
trigger1 = time % 7 = 1 && var(24) = [51,68]	; FORWARD
trigger2 = roundstate = 2
trigger2 = time % 7 = 1 && var(24) = [71,75]
value = 2005

[State 2005, move]
type = changestate
trigger1 = roundstate = 2
trigger1 = time % 7 = 1 && var(24) = [76,110]	; CHARGE
value = 2040

[State 2005, move]
type = changestate
trigger1 = roundstate = 2
trigger1 = time % 7 = 1 && var(24) = [111,180]	; CANNON
value = 2020

[State 2005, move]
type = changestate
trigger1 = roundstate = 2
trigger1 = time % 7 = 1 && var(24) = [181,250]	; BOMB
value = 2030

[State 2005, move]
type = changestate
trigger1 = roundstate = 2
trigger1 = time % 7 = 1 && var(24) = [251,320]	; MISSILES
value = 2050

[State 2005, move]
type = changestate
trigger1 = roundstate = 2
trigger1 = time % 7 = 1 && var(24) = [321,337]	; BARAGE
value = 2070

[State 2005, move]
type = changestate
trigger1 = roundstate = 2
trigger1 = time % 7 = 1 && var(24) = [69,70]	; POWER BOMB
value = 2080


[State -2, helper]	;farmer head helper
type = helper
trigger1 = Stateno = 2000 && time = 0
trigger1 = Alive && RoundState = 3
trigger1 = roundno > 1
helperType = Normal
stateNo = 2095
ID = 2095
name = "bang"
posType = P1
pos = -15,0 ;-30
ownPal = 1
ignorehitpause = 1
size.xscale=.9;.6
size.yscale=.9;.6


[State 2005, move]
type = null;changestate
trigger1 = command = "z"
value = 0

;=====================TANK FORWARD===================

[StateDef 2005]
type = S
physics = S
moveType = I
ctrl = 0
sprPriority = -1
moveHitPersist = 1
;anim = 2005

[State 9000, move]
type = varset
trigger1 = time = 0
var(18) = 2005

[State 2005, move]
type = changeanim
trigger1 = prevstateno != 9000
trigger1 = time = 0
value = 2005

[State 2005, move]
type = velset
trigger1 = 1
x = 3

[State 3000, dust FX]
type = helper
trigger1 = (time%13)=1
helpertype = normal
stateno = 3000
ID = 3000
name = "run_dust"
postype = p1
pos = 40, -10 ;0,0
ownpal = 1
facing = -1
size.yscale = 1
size.xscale = 1.5

[State 2005, move]
type = changestate
trigger1 = animtime = 0
;trigger1 = command != "holdc"
value = 2000

;=====================TANK BACKWARD===================

[StateDef 2010]
type = S
physics = S
moveType = I
ctrl = 0
sprPriority = -1
moveHitPersist = 1
;anim = 2000

[State 9000, move]
type = varset
trigger1 = time = 0
var(18) = 2010

[State 2005, move]
type = changeanim
trigger1 = prevstateno != 9000
trigger1 = time = 0
value = 2000

[State 2005, move]
type = velset
trigger1 = 1
x = -3

[State 3000, dust FX]
type = helper
trigger1 = (time%13)=1
helpertype = normal
stateno = 3000
ID = 3000
name = "run_dust"
postype = p1
pos = 0,0
ownpal = 1
size.yscale = 1
size.xscale = 1.5

[State 2005, move]
type = changestate
trigger1 = animtime = 0
;trigger1 = command != "holdz"
value = 2000

;=====================TANK DUST HELPER===================
[Statedef 3000]
type = S
movetype = I
physics = N
anim = 3000
sprpriority = 5
velset = 0,0

[State 1061, Bind]
type = BindToRoot
trigger1 = parent, stateno = 2005 ||  parent, stateno = 2040 ||  parent, stateno = 2060 || parent, stateno = 2061 || parent, stateno = 2065 || parent, stateno = 2066 || parent, stateno = 2068
trigger1 = parent, stateno = 1111  || (parent, stateno = 2070 && parent, time > 55) || parent, stateno = 2080  || parent, stateno = 2041
time = 1
pos = 40,-8 ;4+ceil(-root,pos Y)

[State 1061, Bind]
type = BindToRoot
trigger1 = parent, stateno = 2010 || (parent, stateno = 2070 && parent ,time < 55)
time = 1
pos = -40,-8 ;4+ceil(-root,pos Y)

[State 1002, NoShadow]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 1061, End]
type = destroyself
trigger1 = animtime = 0
trigger2 = parent, stateno != 2005 && parent, stateno != 2010 && parent, stateno != 2040 && parent, stateno != 2060
trigger2 = parent, stateno!= 2070 && parent, stateno!= 2080 && parent, stateno != 1111 && parent, stateno != 2041
trigger2 = parent, stateno!= 2061 && parent, stateno!= 2065 && parent, stateno!= 2066 && parent, stateno!= 2068


;=====================TANK CANNON===================
;Tank Cannon
[StateDef 2020]
type = S
physics = S
moveType = I
ctrl = 0
sprPriority = -1
moveHitPersist = 1
;anim = 2020

[State 2005, move]
type = changeanim
trigger1 = prevstateno != 9000
trigger1 = time = 0
value = 2020

[State 9000, move]
type = varset
trigger1 = time = 0
var(18) = 2020

[State 0, Explod]
type = Explod
trigger1 = AnimElem = 2
anim = 1006
bindTime = -1
sprpriority = 5
postype = p1
pos = 10,-10
ownpal = 1
removeongethit = 1
scale = 2,2

[State 1000, Projectile]
type = Helper
trigger1 = AnimElem = 2
helperType = Normal
stateNo = 2025
ID = 2025
name = "bang"
posType = P1
pos = 150,-110
ownPal = 1
size.xscale=1.5
size.yscale=1.5

[State 1400, Gun Shot Snd]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1000,1
channel = 2



[State 2005, move]
type = changestate
trigger1 = animtime = 0
value = 2000

;======================Tank Cannon Bullet===================
;Tank Cannon Bullet
[StateDef 2025]
type = S
physics = N
moveType = A
ctrl = 0
anim = 2025
sprPriority = 3

[State 1005, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AP,AT
time = -1
stateno = 1007
ignoreHitPause = 1

[State 1005, HitBy]
type = HitBy
trigger1 = 1
value = SCA,NP,SP,HP
time = -1
ignoreHitPause = 1

[State 1005, VelSet]
type = VelSet
trigger1 = Time > 1
x = 25

[State 1005, Counter Flag]
type = VarSet
trigger1 = NumEnemy
trigger1 = MoveContact != 1
var(9) = (EnemyNear, MoveType = A)

[State 1005, Miss]
type = HitDef
trigger1 = 1
attr = S,SP
hitFlag =
sparkXY = -10,0

[State 1005, HitDef]
type = HitDef
trigger1 = 1
attr = S,SP
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = 80,8
getPower = 0,0
givePower = 36, 36
pauseTime = 5,6
guard.pauseTime = 3,4
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 12
ground.slideTime = 12
guard.hitTime = 12
air.hitTime = 120
airGuard.ctrlTime = 16
ground.velocity = -6, -4
ground.cornerPush.velOff = 0
guard.velocity = -3
guard.cornerPush.velOff = 0
air.velocity = -6, -4
air.cornerPush.velOff = 0
airGuard.velocity = -3, -1
airGuard.cornerPush.velOff = 0
yAccel = 0.58
fall = 1
air.fall = 1
fall.recover = 1
fall.recoverTime = 25
forceStand = 1
hitSound = -1
guardSound = -1
sparkNo = s3010
guard.SparkNo = s3020
sparkXY = -10, -20
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120
sprPriority = 3

[State 1005, ChangeState]
type = ChangeState
trigger1 = MoveContact
value = 2026
ignoreHitPause = 1

[State 1005, ChangeState]
type = ChangeState
trigger1 = MoveReversed
value = 1007
ignoreHitPause = 1

[State 1005, End]
type = DestroySelf
trigger1 = FrontEdgeDist < -100 || BackEdgeDist < -100

;======================Tank Cannon Bullet DEFUSED===================
;Bullet Defused
[StateDef 2026]
type = S
physics = N
moveType = A
ctrl = 0
anim = 2025
sprPriority = 3

[State 1005, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AP,AT
time = -1
stateno = 1007
ignoreHitPause = 1

[State 1005, HitBy]
type = HitBy
trigger1 = 1
value = SCA,NP,SP,HP
time = -1
ignoreHitPause = 1

[State 1005, VelSet]
type = VelSet
trigger1 = Time > 1
x = 25

[State 1005, Counter Flag]
type = VarSet
trigger1 = NumEnemy
trigger1 = MoveContact != 1
var(9) = (EnemyNear, MoveType = A)

[State 1005, Miss]
type = HitDef
trigger1 = 1
attr = S,SP
hitFlag =
sparkXY = -10,0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = !time
value = 2020,0
volumescale = 255
channel = -1
loop = 0

[State 1005, ChangeState]
type = null ;ChangeState
trigger1 = MoveContact
value = 1006
ignoreHitPause = 1

[State 1005, ChangeState]
type = ChangeState
trigger1 = MoveReversed
value = 1007
ignoreHitPause = 1

[State 1005, End]
type = DestroySelf
trigger1 = FrontEdgeDist < -100 || BackEdgeDist < -100


;=====================TANK BOMB===================
;Tank Bomb
[StateDef 2030]
type = S
physics = S
moveType = A
ctrl = 0
sprPriority = -1
moveHitPersist = 1
;anim = 2020

[State 2005, move]
type = changeanim
trigger1 = prevstateno != 9000
trigger1 = time = 0
value = 2030

[State 9000, move]
type = varset
trigger1 = time = 0
var(18) = 2030

[State 0, Explod]
type = null; Explod
trigger1 = AnimElem = 2
anim = 1006
bindTime = -1
sprpriority = 5
postype = p1
pos = 10,-10
ownpal = 1
removeongethit = 1
scale = 2,2

[State 1000, Projectile]
type = Helper
trigger1 = AnimElem = 2
helperType = Normal
stateNo = 2035
ID = 2035
name = "bang"
posType = P1
pos = 0,0;150,-110
ownPal = 1
size.xscale=.8
size.yscale=.8


[State 2005, move]
type = changestate
trigger1 = animtime = 0
value = 2000

;======================Tank Bomb Ball===================
;Tank Bomb Ball
[StateDef 2035]
type = S
physics = N
moveType = A
ctrl = 0
anim = 2035
sprPriority = 3

[State 1005, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AP,AT
time = -1
stateno = 1007
ignoreHitPause = 1

[State 1005, HitBy]
type = HitBy
trigger1 = 1
value = SCA,NP,SP,HP
time = -1
ignoreHitPause = 1

[State 1005, VelSet]
type = VelSet
trigger1 = Time > 1
x = 3

[State 1005, Counter Flag]
type = VarSet
trigger1 = NumEnemy
trigger1 = MoveContact != 1
var(9) = (EnemyNear, MoveType = A)

[State 1005, Miss]
type = HitDef
trigger1 = 1
attr = S,SP
hitFlag =
sparkXY = -10,0

[State 1005, HitDef]
type = HitDef
trigger1 = 1
attr = S,SP
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = 10,0
getPower = 0,0
givePower = 36, 36
pauseTime = 0,2
guard.pauseTime = 0,2
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 2;12
ground.slideTime = 2;12
guard.hitTime = 2;12
air.hitTime = 2;120
airGuard.ctrlTime = 16
ground.velocity = -1
ground.cornerPush.velOff = 0
guard.velocity = -.5
guard.cornerPush.velOff = 0
air.velocity = -1, -.5
air.cornerPush.velOff = 0
airGuard.velocity = -1, -1
airGuard.cornerPush.velOff = 0
yAccel = 0.58
fall = 1
air.fall = 1
fall.recover = 1
fall.recoverTime = 25
forceStand = 1
hitSound = -1
guardSound = -1
sparkNo = -1
guard.SparkNo = -1
sparkXY = -10, -32
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120
sprPriority = 3

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 2030,1
volumescale = 255
channel = -1
loop = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 2
value = 2031,0
volumescale = 255
channel = -1
loop = 0


[State 1005, ChangeState]
type = null ;ChangeState
trigger1 = MoveContact
value = 2036
ignoreHitPause = 1

[State 1000, Projectile]
type = Helper
trigger1 = movecontact
helperType = Normal
stateNo = 2036
ID = 2036
name = "bang"
posType = P1
pos = 0,-30
ownPal = 1
size.xscale=.9
size.yscale=.9

[State 1005, ChangeState]
type = ChangeState
trigger1 = MoveReversed
value = 1007
ignoreHitPause = 1

[State 1005, End]
type = DestroySelf
trigger1 = FrontEdgeDist < -100 || BackEdgeDist < -100
trigger2 = movecontact

;======================Tank Bomb Burst===================
;Tank Bomb Burst
[StateDef 2036]
type = S
physics = N
moveType = A
ctrl = 0
anim = 2057
sprPriority = 3



[State 1005, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AP,AT
time = -1
stateno = 1007
ignoreHitPause = 1

[State 1005, HitBy]
type = HitBy
trigger1 = 1
value = SCA,NP,SP,HP
time = -1
ignoreHitPause = 1

[State 1005, VelSet]
type = VelSet
trigger1 = Time > 1
x = 0

[State 1005, Counter Flag]
type = VarSet
trigger1 = NumEnemy
trigger1 = MoveContact != 1
var(9) = (EnemyNear, MoveType = A)

[State 1005, Miss]
type = HitDef
trigger1 = 1
attr = S,SP
hitFlag =
sparkXY = -10,0

[State 1005, HitDef]
type = HitDef
trigger1 = animelem = 1
attr = S,SP
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = 80,8
getPower = 0,0
givePower = 36, 36
pauseTime = 0,2
guard.pauseTime = 0,2
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 12
ground.slideTime = 12
guard.hitTime = 12
air.hitTime = 120
airGuard.ctrlTime = 16
ground.velocity = -6, -8
ground.cornerPush.velOff = 0
guard.velocity = -3
guard.cornerPush.velOff = 0
air.velocity = -6, -8
air.cornerPush.velOff = 0
airGuard.velocity = -3, -3
airGuard.cornerPush.velOff = 0
yAccel = 0.58
fall = 1
air.fall = 1
fall.recover = 1
fall.recoverTime = 25
forceStand = 1
hitSound = -1
guardSound = -1
sparkNo = -1
guard.SparkNo = -1
sparkXY = -10, -32
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120
sprPriority = 3

[State 0, PlaySnd]
type = PlaySnd
trigger1 = !time
value = 2030,0
volumescale = 255
channel = -1
loop = 0

[State 1005, ChangeState]
type = ChangeState
trigger1 = MoveReversed
value = 1007
ignoreHitPause = 1

[State 1005, End]
type = DestroySelf
trigger1 = FrontEdgeDist < -100 || BackEdgeDist < -100
trigger2 = !animtime


;=====================TANK CHARGE===================
;Tank Charge
[StateDef 2040]
type = S
physics = S
moveType = A
ctrl = 0
sprPriority = -1
moveHitPersist = 1
;anim = 2020

[State 2005, move]
type = velset
trigger1 = 1
x = 4

[State 3000, dust FX]
type = helper
trigger1 = (time%13)=1
helpertype = normal
stateno = 3000
ID = 3000
name = "run_dust"
postype = p1
pos = 40, -10 ;0,0
ownpal = 1
facing = -1
size.yscale = 1.25
size.xscale = 1.5

[State 2005, move]
type = changeanim
trigger1 = prevstateno != 9000
trigger1 = time = 0
value = 2040

[State 9000, move]
type = varset
trigger1 = time = 0
var(18) = 2040

[State 9000, move]
type = palfx
trigger1 = 1
time = 1
add = 100,0,0
ignorehitpause = 1

[State 1005, HitDef]
type = HitDef
;triggerall = !movehit
trigger1 = animelem = 1
trigger2 = animelem = 2
trigger3 = animelem = 3
trigger4 = animelem = 4
attr = S, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = 20,4
getPower = 0,0
givePower = 36, 36
pauseTime = 7,9
guard.pauseTime = 4,8
animType = Hard
hitsound   = s2045,0 ;s5, 5
guardsound = S2045,1
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 12
ground.slideTime = 12
guard.hitTime = 12
air.hitTime = 120
airGuard.ctrlTime = 16
ground.velocity = -6, -3
ground.cornerPush.velOff = 0
guard.velocity = -3
guard.cornerPush.velOff = 0
air.velocity = -6, -3
air.cornerPush.velOff = 0
airGuard.velocity = -3, -3
airGuard.cornerPush.velOff = 0
yAccel = 0.58
fall = 1
air.fall = 1
fall.recover = 1
fall.recoverTime = 25
forceStand = 1
sparkNo = s3010
guard.SparkNo = s3020
sparkXY = -10, floor((p2dist Y) -32)
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120
sprPriority = 3

[State 0, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 2040,0
volumescale = 255
channel = -1
loop = 0
[State 0, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 2040,0
volumescale = 255
channel = -1
loop = 0
[State 0, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 2041,0
volumescale = 255
channel = -1
loop = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 2041,0
volumescale = 255
channel = -1
loop = 0

[State 0, Explod]
type = null; Explod
trigger1 = AnimElem = 2
anim = 1006
bindTime = -1
sprpriority = 5
postype = p1
pos = 10,-10
ownpal = 1
removeongethit = 1
scale = 2,2


[State 2005, move]
type = changestate
trigger1 = animtime = 0
value = 2000

;=====================TANK TURN CHARGE===================
;Tank Turn Charge
[StateDef 2041]
type = S
physics = S
moveType = A
ctrl = 0
sprPriority = -1
moveHitPersist = 1
;anim = 2020

[State 2005, move]
type = velset
trigger1 = 1
x = 4

[State 2005, move]
type = screenbound
trigger1 = 1
value = 0

[State 2005, move]
type = screenbound
trigger1 = 1
value = 0

[State 3000, dust FX]
type = helper
trigger1 = (time%13)=1
helpertype = normal
stateno = 3000
ID = 3000
name = "run_dust"
postype = p1
pos = 40, -10 ;0,0
ownpal = 1
facing = -1
size.yscale = 1.25
size.xscale = 1.5

[State 2005, move]
type = changeanim
trigger1 = prevstateno != 9000
trigger1 = time = 0
value = 2040

[State 9000, move]
type = varset
trigger1 = time = 0
var(18) = 2040

[State 9000, move]
type = palfx
trigger1 = 1
time = 1
add = 100,0,0
ignorehitpause = 1

[State 1005, HitDef]
type = HitDef
;triggerall = !movehit
trigger1 = animelem = 1
trigger2 = animelem = 2
trigger3 = animelem = 3
trigger4 = animelem = 4
attr = S, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = 22,4
getPower = 0,0
givePower = 36, 36
pauseTime = 7,9
guard.pauseTime = 4,8
animType = Hard
hitsound   = s2045,0 ;s5, 5
guardsound = S2045,1
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 12
ground.slideTime = 12
guard.hitTime = 12
air.hitTime = 120
airGuard.ctrlTime = 16
ground.velocity = -4, -3
ground.cornerPush.velOff = 0
guard.velocity = -3
guard.cornerPush.velOff = 0
air.velocity = -4, -3
air.cornerPush.velOff = 0
airGuard.velocity = -3, -3
airGuard.cornerPush.velOff = 0
yAccel = 0.58
fall = 1
air.fall = 1
fall.recover = 1
fall.recoverTime = 25
forceStand = 1
sparkNo = s3010
guard.SparkNo = s3020
sparkXY = -10, floor((p2dist Y) -32)
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120
sprPriority = 3

[State 0, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 2040,0
volumescale = 255
channel = -1
loop = 0
[State 0, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 2040,0
volumescale = 255
channel = -1
loop = 0
[State 0, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 2041,0
volumescale = 255
channel = -1
loop = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 2041,0
volumescale = 255
channel = -1
loop = 0

[State 0, Explod]
type = null; Explod
trigger1 = AnimElem = 2
anim = 1006
bindTime = -1
sprpriority = 5
postype = p1
pos = 10,-10
ownpal = 1
removeongethit = 1
scale = 2,2


[State 2005, move]
type = changestate
trigger1 = animtime = 0
value = 2000

;=====================TANK HIDDEN MISSILES===================
;Tank Missiles
[StateDef 2050]
type = S
physics = S
moveType = A
ctrl = 0
sprPriority = 2
moveHitPersist = 1
;anim = 2020

[State 2005, move]
type = changeanim
trigger1 = prevstateno != 9000
trigger1 = time = 0
value = 2050

[State 9000, move]
type = varset
trigger1 = time = 0
var(18) = 2050

[State 0, Explod]
type = null; Explod
trigger1 = AnimElem = 2
trigger2 = AnimElem = 4
trigger3 = AnimElem = 6
trigger4 = AnimElem = 8
anim = 1006
bindTime = -1
sprpriority = 5
postype = p1
pos = 10,-10
ownpal = 1
removeongethit = 1
scale = 2,2

[State 1000, Projectile]
type = Helper
trigger1 = AnimElem = 2
trigger2 = AnimElem = 4
trigger3 = AnimElem = 6
trigger4 = AnimElem = 8
helperType = Normal
stateNo = 2055
ID = 2055
name = "bang"
posType = P1
pos = 0,-100;150,-110
ownPal = 1
size.xscale=.1
size.yscale=.1

[State 0, Explod]
type = Explod
trigger1 = AnimElem = 2
trigger2 = AnimElem = 4
trigger3 = AnimElem = 6
trigger4 = AnimElem = 8
anim = 3000
bindTime = 100
sprpriority = 0
postype = p1
pos = -4,-130
vfacing = -1
ownpal = 1
scale = .1,3

[State 0, Explod]
type = Explod
trigger1 = AnimElem = 2
trigger2 = AnimElem = 4
trigger3 = AnimElem = 6
trigger4 = AnimElem = 8
anim = 2056
bindTime = 100
sprpriority = 0
postype = p1
pos = 0,-150
vfacing = -1
ownpal = 1
scale = .5,.5


[State 2005, move]
type = changestate
trigger1 = animtime = 0
value = 2000

;=====================TANK HIDDEN MISSILES ACTUAL MISSILE PART===================
;Missile Projectiles
[StateDef 2055]
type = S
physics = N
moveType = A
ctrl = 0
anim = 2055
sprPriority = 0

[State 1005, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AP,AT
time = -1
stateno = 1007
ignoreHitPause = 1

[State 1005, HitBy]
type = HitBy
trigger1 = 1
value = SCA,NP,SP,HP
time = -1
ignoreHitPause = 1

[State 1002, NoShadow]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 1005, VelSet]
type = VelSet
trigger1 = Time = 1
y = -6

[State 1005, VelSet]
type = VelSet
trigger1 = Time = 85
y = 6

[State 1005, VelSet]
type = angledraw
trigger1 = Time > 85
value = 180

[State 1005, VelSet]
type = PosAdd
trigger1 = Time = 115 
trigger2 = Time = 85
x = p2dist x



[State 1005, Counter Flag]
type = VarSet
trigger1 = NumEnemy
trigger1 = MoveContact != 1
var(9) = (EnemyNear, MoveType = A)

[State 1005, Miss]
type = HitDef
trigger1 = 1
attr = S,SP
hitFlag =
sparkXY = -10,0

[State 0, Explod]
type = Explod
trigger1 = time % 3 = 1 
trigger1 = time < 85
anim = 2056
bindTime = 100
sprpriority = 0
postype = p1
pos = 3,7
ownpal = 1
scale = .5,.5


[State 0, Explod]
type = Explod
trigger1 = time % 3 = 1 
trigger1 = time > 85
anim = 2056
bindTime = 100
sprpriority = 0
postype = p1
pos = 3,-9
vfacing = -1
ownpal = 1
scale = .5,.5

[State 1005, HitDef]
type = HitDef
trigger1 = 1
attr = S,SP
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = 10,0
getPower = 0,0
givePower = 36, 36
pauseTime = 0,2
guard.pauseTime = 0,2
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 2;12
ground.slideTime = 2;12
guard.hitTime = 2;12
air.hitTime = 2;120
airGuard.ctrlTime = 16
ground.velocity = -1
ground.cornerPush.velOff = 0
guard.velocity = -.5
guard.cornerPush.velOff = 0
air.velocity = -1, -2
air.cornerPush.velOff = 0
airGuard.velocity = -1, -1
airGuard.cornerPush.velOff = 0
guard.dist = 0
yAccel = 0.58
fall = 0
air.fall = 1
fall.recover = 1
fall.recoverTime = 25
forceStand = 1
hitSound = -1
guardSound = -1
sparkNo = -1
guard.SparkNo = -1
sparkXY = -10, -32
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120
sprPriority = 3

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 2030,1
volumescale = 255
channel = -1
loop = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 2050,0
volumescale = 80
channel = -1
loop = 0


[State 1005, ChangeState]
type = null ;ChangeState
trigger1 = MoveContact
value = 2036
ignoreHitPause = 1

[State 1000, Projectile]
type = Helper
trigger1 = movecontact
trigger2 = pos y >= -10
helperType = Normal
stateNo = 2056
ID = 2056
name = "bang"
posType = P1
pos = 0,5
ownPal = 1
size.xscale=.7
size.yscale=.7

[State 1005, ChangeState]
type = ChangeState
trigger1 = MoveReversed
value = 1007
ignoreHitPause = 1

[State 1005, End]
type = DestroySelf
trigger1 = FrontEdgeDist < -200 || BackEdgeDist < -200
trigger2 = movecontact
trigger3 = pos y >= -10

;======================Tank Missile Burst===================
;Tank Missile Burst
[StateDef 2056]
type = S
physics = N
moveType = A
ctrl = 0
anim = 2057
sprPriority = 3



[State 1005, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AP,AT
time = -1
stateno = 1007
ignoreHitPause = 1

[State 1005, HitBy]
type = HitBy
trigger1 = 1
value = SCA,NP,SP,HP
time = -1
ignoreHitPause = 1

[State 1005, VelSet]
type = VelSet
trigger1 = Time > 1
x = 0

[State 1005, Counter Flag]
type = VarSet
trigger1 = NumEnemy
trigger1 = MoveContact != 1
var(9) = (EnemyNear, MoveType = A)

[State 1005, Miss]
type = HitDef
trigger1 = 1
attr = S,SP
hitFlag =
sparkXY = -10,0

[State 1005, HitDef]
type = HitDef
trigger1 = animelem = 1
attr = S,SP
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = 10,5
getPower = 0,0
givePower = 36, 36
pauseTime = 0,2
guard.pauseTime = 0,2
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 12
ground.slideTime = 12
guard.hitTime = 12
air.hitTime = 120
airGuard.ctrlTime = 16
ground.velocity = -2;, -8
ground.cornerPush.velOff = 0
guard.velocity = -3
guard.cornerPush.velOff = 0
air.velocity = -2, -2
air.cornerPush.velOff = 0
airGuard.velocity = -3, -3
airGuard.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
air.fall = 1
fall.recover = 1
fall.recoverTime = 25
forceStand = 1
hitSound = -1
guardSound = -1
sparkNo = -1
guard.SparkNo = -1
sparkXY = -10, -32
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120
sprPriority = 3

[State 0, PlaySnd]
type = PlaySnd
trigger1 = !time
value = 2030,0
volumescale = 255
channel = -1
loop = 0

[State 1005, ChangeState]
type = ChangeState
trigger1 = MoveReversed
value = 1007
ignoreHitPause = 1

[State 1005, End]
type = DestroySelf
trigger1 = FrontEdgeDist < -100 || BackEdgeDist < -100
trigger2 = !animtime


;=====================TANK TURN===================
;Tank Turn
[StateDef 2060]
type = S
physics = S
moveType = I
ctrl = 0
sprPriority = 2
moveHitPersist = 1
;anim = 2020

[State 2005, move]
type = changeanim
trigger1 = prevstateno != 9000
trigger1 = time = 0
value = 2040

[State 3000, dust FX]
type = helper
trigger1 = (time%13)=1
helpertype = normal
stateno = 3000
ID = 3000
name = "run_dust"
postype = p1
pos = 40, -10 ;0,0
ownpal = 1
facing = -1
size.yscale = 1
size.xscale = 1.5

[State 2005, move]
type = velset
trigger1 = 1
x = 9

[State 2005, move]
type = screenbound
trigger1 = 1
value = 0

[State 2005, move]
type = turn
trigger1 = animtime = 0



[State 9000, move]
type = varset
trigger1 = time = 0
var(18) = 2060

[State 0, Explod]
type = null; Explod
trigger1 = AnimElem = 2
anim = 1006
bindTime = -1
sprpriority = 5
postype = p1
pos = 10,-10
ownpal = 1
removeongethit = 1
scale = 2,2


[State 2005, move]
type = changestate
trigger1 =  animtime = 0 
value = 2061

;tank turn return
[StateDef 2061]
type = S
physics = S
moveType = A
ctrl = 0
sprPriority = -1
moveHitPersist = 1
;anim = 2020


[State 2005, move]
type = changeanim
trigger1 = prevstateno != 9000
trigger1 = time = 0
value = 2040

[State 3000, dust FX]
type = helper
trigger1 = (time%13)=1
helpertype = normal
stateno = 3000
ID = 3000
name = "run_dust"
postype = p1
pos = 40, -10 ;0,0
ownpal = 1
facing = -1
size.yscale = 1
size.xscale = 1.5

[State 2005, move]
type = velset
trigger1 = 1
x = 9

[State 2005, move]
type = screenbound
trigger1 = 1
value = 0

[State 2005, move]
type =null ;turn
trigger1 = animtime = 0


[State 9000, move]
type = varset
trigger1 = time = 0
var(18) = 2061

[State 0, Explod]
type = null; Explod
trigger1 = AnimElem = 2
anim = 1006
bindTime = -1
sprpriority = 5
postype = p1
pos = 10,-10
ownpal = 1
removeongethit = 1
scale = 2,2

[State 2005, ChangeState]	;Tank Turn
type = ChangeState
trigger1 = p2bodydist x < 0 && var(24) >=400 && var(24) <=800
value = 2060

[State 2005, ChangeState]	;Tank Turn
type = ChangeState
trigger1 = p2bodydist x < 0 && var(24) <400
value = 2065

[State 2005, ChangeState]	;Tank Turn
type = ChangeState
trigger1 = p2bodydist x < 0 && var(24) >800
value = 2068


[State 2005, move]
type = changestate
trigger1 =  animtime = 0 
value = 2041

;=====================TANK TURN LOOP===================
;Tank Turn Loop
[StateDef 2065]
type = S
physics = S
moveType = I
ctrl = 0
sprPriority = 2
moveHitPersist = 1
;anim = 2020

[State 3000, dust FX]
type = helper
trigger1 = (time%13)=1
helpertype = normal
stateno = 3000
ID = 3000
name = "run_dust"
postype = p1
pos = 40, -10 ;0,0
ownpal = 1
facing = -1
size.yscale = 1
size.xscale = 1.5

[State 2005, move]
type = changeanim
trigger1 = prevstateno != 9000
trigger1 = time = 0
value = 2040

[State 2005, move]
type = velset
trigger1 = 1
x = 9

[State 2005, move]
type = screenbound
trigger1 = 1
value = 0



[State 2005, move]
type = posadd ;turn
trigger1 = animtime = 0
x = -800



[State 9000, move]
type = varset
trigger1 = time = 0
var(18) = 2065

[State 0, Explod]
type = null; Explod
trigger1 = AnimElem = 2
anim = 1006
bindTime = -1
sprpriority = 5
postype = p1
pos = 10,-10
ownpal = 1
removeongethit = 1
scale = 2,2

[State 2005, move]
type = changestate
trigger1 =  animtime = 0 
value = 2066

;tank turn return
[StateDef 2066]
type = S
physics = S
moveType = A
ctrl = 0
sprPriority = -1
moveHitPersist = 1
;anim = 2020

[State 3000, dust FX]
type = helper
trigger1 = (time%13)=1
helpertype = normal
stateno = 3000
ID = 3000
name = "run_dust"
postype = p1
pos = 40, -10 ;0,0
ownpal = 1
facing = -1
size.yscale = 1
size.xscale = 1.5

[State 2005, move]
type = velset
trigger1 = 1
x = 9

[State 2005, move]
type = screenbound
trigger1 = 1
value = 0

[State 2005, move]
type =null ;turn
trigger1 = animtime = 0

[State 2005, move]
type = changeanim
trigger1 = prevstateno != 9000
trigger1 = time = 0
value = 2040

[State 9000, move]
type = varset
trigger1 = time = 0
var(18) = 2066

[State 0, Explod]
type = null; Explod
trigger1 = AnimElem = 2
anim = 1006
bindTime = -1
sprpriority = 5
postype = p1
pos = 10,-10
ownpal = 1
removeongethit = 1
scale = 2,2

[State 2005, ChangeState]	;Tank Turn
type = ChangeState
trigger1 = p2bodydist x < 0 && var(24) >=350 && var(24) <=700
value = 2060

[State 2005, ChangeState]	;Tank Turn
type = ChangeState
trigger1 = p2bodydist x < 0 && var(24) <350
value = 2065

[State 2005, ChangeState]	;Tank Turn
type = ChangeState
trigger1 = p2bodydist x < 0 && var(24) >700
value = 2068


[State 2005, move]
type = changestate
trigger1 =  animtime = 0 
value = 2041
;==============================================
;TANK FALL
[StateDef 2068]
type = S
physics = S
moveType = I
ctrl = 0
sprPriority = 2
moveHitPersist = 1
;anim = 2020

[State 2005, move]
type = changeanim
trigger1 = prevstateno != 9000
trigger1 = time = 0
value = 2040


[State 3000, dust FX]
type = helper
trigger1 = (time%13)=1
helpertype = normal
stateno = 3000
ID = 3000
name = "run_dust"
postype = p1
pos = 40, -10 ;0,0
ownpal = 1
facing = -1
size.yscale = 1
size.xscale = 1.5

[State 2005, move]
type = velset
trigger1 = 1
x = 9

[State 2005, move]
type = screenbound
trigger1 = 1
value = 0

[State 2005, move]
type = turn
trigger1 = animtime = 0

[State 2005, move]
type = posadd
trigger1 = animtime = 0
x = (p2bodydist x) - 10
y = -1100


[State 9000, move]
type = varset
trigger1 = time = 0
var(18) = 2068

[State 0, Explod]
type = null; Explod
trigger1 = AnimElem = 2
anim = 1006
bindTime = -1
sprpriority = 5
postype = p1
pos = 10,-10
ownpal = 1
removeongethit = 1
scale = 2,2

[State 2005, move]
type = changestate
trigger1 =  animtime = 0 
value = 2069
;-------------------------------------------
;tank turn return                        
[StateDef 2069]
type = S
physics = S
moveType = A
ctrl = 0
sprPriority = -1
moveHitPersist = 1
;anim = 2020

[State 2005, move]
type = changeanim
trigger1 = prevstateno != 9000
trigger1 = time = 0
value = 2040


[State 4000, Invincible]
type = NotHitBy
trigger1 = 1 ;time > 40
value = SCA

[State 1400, Gun Shot Snd]
type = PlaySnd
trigger1 = time = 0
value = 2090,0
channel = -1
volumescale = 100
[State 1400, Gun Shot Snd]
type = PlaySnd
trigger1 = time = 0
value = 2090,0
channel = -1
volumescale = 100
[State 1400, Gun Shot Snd]
type = PlaySnd
trigger1 = time = 0
value = 2090,0
channel = -1
volumescale = 100
[State 1400, Gun Shot Snd]
type = PlaySnd
trigger1 = time = 0
value = 2090,0
channel = -1
volumescale = 100


[State 3000, dust FX]
type = helper
trigger1 = (time%13)=1
helpertype = normal
stateno = 3000
ID = 3000
name = "run_dust"
postype = p1
pos = 40, -10 ;0,0
ownpal = 1
facing = -1
size.yscale = 1
size.xscale = 1.5

[State 2005, move]
type = velset
trigger1 = 1
x = 0
y = 14

[State 2005, move]
type = screenbound
trigger1 = 1
value = 0

[State 2005, move]
type =null ;turn
trigger1 = animtime = 0



[State 9000, move]
type = varset
trigger1 = time = 0
var(18) = 2069

[State 0, Explod]
type = Explod
trigger1 = (time % 13) = 1
anim = 3000
bindTime = -1
sprpriority = 5
postype = p1
pos = -70,-30
ownpal = 1
removeongethit = 1
scale = 1.5,2

[State 0, Explod]
type = Explod
trigger1 = (time % 13) = 1
anim = 3000
bindTime = -1
sprpriority = 5
postype = p1
pos = 90,-30
ownpal = 1
facing = -1
removeongethit = 1
scale = 1.5,2

[State 0, Explod]
type = null; Explod
trigger1 = AnimElem = 2
anim = 1006
bindTime = -1
sprpriority = 5
postype = p1
pos = 10,-10
ownpal = 1
removeongethit = 1
scale = 2,2

[State 2005, ChangeState]	;Tank Turn
type = turn
trigger1 = p2bodydist x < 0 && time < 70

[State 2005, move]
type = posadd
trigger1 = time < 70
x = (p2bodydist x) - 20

[State 1005, HitDef]
type = HitDef
;triggerall = !movehit
trigger1 = animelem = 1
trigger2 = animelem = 2
trigger3 = animelem = 3
trigger4 = animelem = 4
attr = S, SA
hitFlag = MAF
guardFlag = HA
priority = 4, Hit
damage = 80,20
getPower = 0,0
givePower = 36, 36
pauseTime = 1,2
guard.pauseTime = 4,8
animType = Hard
hitsound   = s2045,0 ;s5, 5
guardsound = S2045,1
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 12
ground.slideTime = 12
guard.hitTime = 12
air.hitTime = 120
airGuard.ctrlTime = 16
ground.velocity = -8, -3
ground.cornerPush.velOff = 0
guard.velocity = -7
guard.cornerPush.velOff = 0
air.velocity = -8, -3
air.cornerPush.velOff = 0
airGuard.velocity = -3, -3
airGuard.cornerPush.velOff = 0
yAccel = 0.58
fall = 1
air.fall = 1
fall.recover = 1
fall.recoverTime = 25
forceStand = 1
sparkNo = s3010
guard.SparkNo = s3020
sparkXY = -10, floor((p2dist Y) -32)
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120
sprPriority = 3

[State 2005, move]
type = velset
trigger1 = pos y > -2
x = 0
y = 0

[State 2005, move]
type = posset
trigger1 = pos y > -2
y = 0

[State 2005, move]
type = EnvShake
trigger1 = pos y > -2
time = 20
freq = 120
ampl = -16

[State 1400, Gun Shot Snd]
type = PlaySnd
trigger1 = pos y > -2
value = 1000,1
channel = 2

[State 2005, move]
type = changestate
;trigger1 =  animtime = 0 
trigger1 = pos y > -2
value = 2000

;=====================TANK BARRAGE===================
;Tank Barrage
[StateDef 2070]
type = S
physics = S
moveType = A
ctrl = 0
sprPriority = -1
moveHitPersist = 1
;anim = 2020

[State 0, AssertSpecial]
type = null ;AssertSpecial
trigger1 = time = [0,48]
flag = noBG
flag2 = noFG
ignorehitpause=1

[State 3000, superpause]
type = superpause
trigger1 = time=1
time = 50
p2defmul = 1
unhittable = 1
anim = -1
sound = s190,1
darken = 1
movetime =  0;40

[State 0, AssertSpecial]
type = playsnd
trigger1 = time = 1
value = s190,1
volumescale = 80
channel = -1
loop = 0


[State 3000, dust FX]
type = helper
trigger1 = (time%13)=1 && time < 80
helpertype = normal
stateno = 3000
ID = 3000
name = "run_dust"
postype = p1
pos = 0,0
ownpal = 1
size.yscale = 1
size.xscale = 1.5

[State 3000, dust FX]
type = helper
trigger1 = (time%13)=1 && time > 80
helpertype = normal
stateno = 3000
ID = 3000
name = "run_dust"
postype = p1
pos = 40, -10 ;0,0
ownpal = 1
facing = -1
size.yscale = 1
size.xscale = 1.5

[State 2005, move]
type = velset
trigger1 = time = [2, 40];1
x = -8

[State 2005, move]
type = screenbound
trigger1 = 1
value = 0

[State 2005, move]
type = changeanim
trigger1 = prevstateno != 9000
trigger1 = time = 0
value = 2000

[State 9000, move]
type = varset
trigger1 = time = 0
var(18) = 2070

[State 0, Explod]
type = null; Explod
trigger1 = AnimElem = 2
anim = 1006
bindTime = -1
sprpriority = 5
postype = p1
pos = 10,-10
ownpal = 1
removeongethit = 1
scale = 2,2

[State 1000, Projectile]
type = Helper
trigger1 = time = [60,85]
trigger1 = time % 2 = 1
helperType = Normal
stateNo = 2071
ID = 2071
name = "bang"
posType = P1
pos = 150,-(random % 110)
ownPal = 1
size.xscale=.8
size.yscale=.8

[State 1000, Projectile]
type = Helper
trigger1 = time = 80
helperType = Normal
stateNo = 2071
ID = 2071
name = "bang"
posType = P1
pos = 150, floor(p2bodydist y)
ownPal = 1
size.xscale=.8
size.yscale=.8

[State 4000, Invincible]
type = NotHitBy
trigger1 = 1 ;time > 40
value = SCA

[State 2005, move]
type = velset
trigger1 = time = [100, 140]
x = (p2dist x / 32)

[State 2005, move]
type = changestate
trigger1 =  time = 140
value = 2000


;=======================TANK BARRAGE BULLET===================
;Tank Barrage Bullet
[StateDef 2071]
type = S
physics = N
moveType = A
ctrl = 0
anim = 2025
sprPriority = 3

[State 1400, Gun Shot Snd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 1000,1
channel = 2
volumescale = 75

[State 1005, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AP,AT
time = -1
stateno = 1007
ignoreHitPause = 1

[State 1005, HitBy]
type = HitBy
trigger1 = 1
value = SCA,NP,SP,HP
time = -1
ignoreHitPause = 1

[State 1005, VelSet]
type = VelSet
trigger1 = Time > 1
x = 25

[State 1005, Counter Flag]
type = VarSet
trigger1 = NumEnemy
trigger1 = MoveContact != 1
var(9) = (EnemyNear, MoveType = A)

[State 1005, Miss]
type = HitDef
trigger1 = 1
attr = S,SP
hitFlag =
sparkXY = -10,0

[State 1005, HitDef]
type = HitDef
trigger1 = 1
attr = S,SP
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = 14,7
getPower = 0,0
givePower = 36, 36
pauseTime = 5,6
guard.pauseTime = 3,4
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 12
ground.slideTime = 12
guard.hitTime = 12
air.hitTime = 120
airGuard.ctrlTime = 16
ground.velocity = -6, -2
ground.cornerPush.velOff = 0
guard.velocity = -3
guard.cornerPush.velOff = 0
air.velocity = -6, -2
air.cornerPush.velOff = 0
airGuard.velocity = -3, -1
airGuard.cornerPush.velOff = 0
yAccel = 0.58
fall = 1
air.fall = 1
fall.recover = 1
fall.recoverTime = 25
forceStand = 1
hitSound = -1
guardSound = -1
sparkNo = s3010
guard.SparkNo = s3020
sparkXY = -10, -20
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120
sprPriority = 3

[State 1005, ChangeState]
type = ChangeState
trigger1 = MoveContact
value = 2026
ignoreHitPause = 1

[State 1005, ChangeState]
type = ChangeState
trigger1 = MoveReversed
value = 1007
ignoreHitPause = 1

[State 1005, End]
type = DestroySelf
trigger1 = time = 80 ;FrontEdgeDist < -100 || BackEdgeDist < -100


;===============TANK SUPLEX===============  ;mabye just a power bomb
;Tank Suplex
[StateDef 2080]
type = S
physics = S
moveType = A
ctrl = 0
sprPriority = -1
moveHitPersist = 1
;anim = 2020

[State 2005, move]
type = changestate
trigger1 = time = 0 && random > 300
value = 2000

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0 ;AnimElem = 1
value = 2080,0
volumescale = 255
channel = -1
loop = 0

[State 3000, superpause]
type = superpause
trigger1 = time=0
time = 100
p2defmul = 1
unhittable = 1
anim = -1
sound = s2080,0
darken = 1
movetime =  0;40

[State 4000, Invincible]
type = NotHitBy
trigger1 = 1 ;time > 40
value = SCA

[State 2005, move]
type = velset
trigger1 = time = [1, 5]
x = p2bodydist x / 10

[State 2005, move]
type = velset
trigger1 = time = [10,20]
x = 0
y = 0

[State 2005, move]
type = screenbound
trigger1 = 1
value = 0


[State 1010, 3]
type = TargetBind
trigger1 = time = [5 , 19]
pos = 150, 0 
time = 135

[State 2005, move]
type = velset
trigger1 = time = [21,80]
y = -20

[State 2005, move]
type = velset
trigger1 = time = [81, 141]
y = 20

[State 2005, move]
type = velset
trigger1 = time = 141
y = 0




[State 3000, dust FX]
type = helper
trigger1 = time = 1
helpertype = normal
stateno = 3000
ID = 3000
name = "run_dust"
postype = p1
pos = 40, -10 ;0,0
ownpal = 1
facing = -1
size.yscale = 1.25
size.xscale = 1.5

[State 2005, move]
type = changeanim
trigger1 = prevstateno != 9000
trigger1 = time = 0
value = 2040

[State 9000, move]
type = varset
trigger1 = time = 0
var(18) = 2080


[State 1005, HitDef]
type = HitDef
triggerall = hitcount = 0
triggerall = time > 0
trigger1 = animelem = 1
trigger2 = animelem = 2
trigger3 = animelem = 3
trigger4 = animelem = 4
attr = S, SA
hitFlag = MAF
guardFlag = 
priority = 4, Hit
damage = 20,10
getPower = 0,0
givePower = 36, 36
pauseTime = 7,9
guard.pauseTime = 4,8
animType = Hard
hitsound   = s2045,0 ;s5, 5
guardsound = S2045,1
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 12
ground.slideTime = 12
guard.hitTime = 12
air.hitTime = 120
airGuard.ctrlTime = 16
ground.velocity = -6, -3
ground.cornerPush.velOff = 0
guard.velocity = -3
guard.cornerPush.velOff = 0
air.velocity = -6, -3
air.cornerPush.velOff = 0
airGuard.velocity = -3, -3
airGuard.cornerPush.velOff = 0
yAccel = 0.58
fall = 1
air.fall = 1
fall.recover = 0
forceStand = 1
sparkNo = s3010
guard.SparkNo = s3020
sparkXY = -10, (p2dist Y) -32
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120
sprPriority = 3



[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 1 ;AnimElem = 1
value = 2040,0
volumescale = 255
channel = -1
loop = 0
[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 1 ;AnimElem = 1
value = 2040,0
volumescale = 255
channel = -1
loop = 0
[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 1 ;AnimElem = 1
value = 2041,0
volumescale = 255
channel = -1
loop = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 1 ;AnimElem = 1
value = 2041,0
volumescale = 255
channel = -1
loop = 0

[State 0, Explod]
type = null; Explod
trigger1 = AnimElem = 2
anim = 1006
bindTime = -1
sprpriority = 5
postype = p1
pos = 10,-10
ownpal = 1
removeongethit = 1
scale = 2,2

[State 0, Explod]
type = Explod
trigger1 = time = 120
anim = 3000
bindTime = -1
sprpriority = 5
postype = p1
pos = -70,-30
ownpal = 1
removeongethit = 1
scale = 1.5,3

[State 0, Explod]
type = Explod
trigger1 = time = 120
anim = 3000
bindTime = -1
sprpriority = 5
postype = p1
pos = 90,-30
ownpal = 1
facing = -1
removeongethit = 1
scale = 1.5,3

[State 1000, Projectile]
type = Helper
trigger1 = time = 141
helperType = Normal
stateNo = 2036
ID = 2036
name = "bang"
posType = P1
pos = 160, -40
ownPal = 1
size.xscale=.9
size.yscale=.9

[State 1000, Projectile]
type = Helper
trigger1 = time = 144
helperType = Normal
stateNo = 2036
ID = 2036
name = "bang"
posType = P1
pos = 160, -40
ownPal = 1
size.xscale=1.1
size.yscale=1.1

[State 1000, Projectile]
type = Helper
trigger1 = time = 147
helperType = Normal
stateNo = 2036
ID = 2036
name = "bang"
posType = P1
pos = 160, -40
ownPal = 1
size.xscale=1.3
size.yscale=1.3


[State 2005, move]
type = EnvShake
trigger1 = time = 140
time = 20
freq = 120
ampl = -40



[State 2005, move]
type = changestate
trigger1 = time = 160
trigger2 = time = 20 && hitcount = 0
value = 2000


;=====================TANK EXPLODE===================
;Tank Explode
[StateDef 2090]
type = S
physics = S
moveType = A
ctrl = 0
sprPriority = -1
moveHitPersist = 1
anim = 2000

[State 4000, Invincible]
type = NotHitBy
trigger1 = 1
value = SCA

[State 2005, move]
type = screenbound
trigger1 = 1
value = 0

[State 9000, move]
type = palfx
trigger1 = time; = [0,255];< 200
time = 1
add = (time/4),(-time/4),(-time/4)
ignorehitpause = 1

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 2036
bindTime = -1
sprpriority = 5
postype = p1
pos = 0,-50 ;(random %150) - 75, -(random % 100) - 20
ownpal = 1
removeongethit = 1
scale = 1.2,1.2

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time  = 0
value = 2030,0
volumescale = 100
channel = -1
loop = 0

[State 1400, Gun Shot Snd]
type = PlaySnd
trigger1 = time = 0
value = 1000,1
channel = 2
volumescale = 75



[State 0, Explod]
type = Explod
trigger1 = time % 25 = 1
anim = 2036
bindTime = -1
sprpriority = 5
postype = p1
pos = (random %150) - 75, -(random % 100) - 20
ownpal = 1
removeongethit = 1
scale = .7,.7

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time % 25 = 1
value = 2030,0
volumescale = 40
channel = -1
loop = 0


[State 2005, move]
type = null ;changestate
trigger1 =  animtime = 0 
value = 2040

;=====================TANK FARMER HEAD===================
;Tank Farmer Head
[StateDef 2095]
type = S
physics = S
moveType = I
ctrl = 0
sprPriority = -1
moveHitPersist = 1
anim = ifelse(random > 500,0,30001)

[State 2005, move]
type = velset
trigger1 = pos y > -85
y = -3


[State 2005, move]
type = velset
trigger1 = pos y <= -85
y = 0

[State 4000, Invincible]
type = NotHitBy
trigger1 = 1
value = SCA

[State 2005, move]
type = screenbound
trigger1 = 1
value = 0

[State 1002, NoShadow]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 60
value = 181,0
volumescale = 100
channel = -1
loop = 0

[State 2005, move]
type = null ;changestate
trigger1 =  animtime = 0 
value = 2040




;-----------------------------------
;Helper replacement
[statedef 30000]
type = S
physics = S
moveType = I
velSet = 0,0
sprPriority = 0
anim = 0

[state 3000, playerpush]
type = playerpush
trigger1 =  1
value = 0



[state 3000, pos]
type = bindToRoot
trigger1 = 1


[state 30000, turn]
type = turn
trigger1 = p2bodydist x < -30
trigger2 = p2bodydist x < -12 && p2statetype != A

[State 0, HitOverride]
type = HitOverride
trigger1 = stateno = 30000
attr = SCA, AA, AP, AT
stateno = 1100
time = 1
ignorehitpause = 1

[State 181, Assert: RoundNotOver]
type = AssertSpecial
trigger1 = root,stateno = 181
flag = invisible

[state 30000, changestate]
type = changestate
trigger1 = random < 25
trigger1 = roundstate = 2
value = 1000

;======================Tank Armor===================
[StateDef 9000]
type    = S
movetype= H
physics = N

[State 2005, move]
type = screenbound
trigger1 = var(18) = 2060 || var(18) = 2061 || var(18) = 2065 || var(18) = 2066 || var(18) = 2068 || var(18) = 2069
value = 0

[State -2, Invincible]
type = NotHitBy
trigger1 = stateno = 9000
value = SCA
time = 5

[State 9000, move]
type = changestate
trigger1 = time = 1
value = var(18)


;===========================================================================
;===============================<-2 STATES>=================================
;===========================================================================
[StateDef -2]

[State 0, CtrlSet]
type = CtrlSet
trigger1 = RoundState = 3
value = 1
ignorehitpause = 1

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = , AT
;value2 = S,NA
time = 1
;ignorehitpause = 
;persistent = 


[State 0, CtrlSet]
type = CtrlSet
triggerAll = RoundState != 3
trigger1 = !var(10) && ctrl
trigger1 = var(10) := 1
trigger2 = var(10)
value = 0
ignorehitpause = 1

[State 0, HitOverride]
type = HitOverride
trigger1 = stateno < 2000
attr = SCA, AA, AP, AT
stateno = 1100
time = 1
ignorehitpause = 1

[State 0, HitOverride]		;ARMOR
type = HitOverride
trigger1 = stateno >= 2000
attr = SCA, AA, AP, AT
stateno = 9000
time = 1
ignorehitpause = 1

[State -2, Debug]
type = null ;DisplayToClipboard
trigger1 = 1
text = "AI = %d Attack = %f Hits = %d Juggle = %d"
params = AILevel, pos x, var(13), roundstate
ignoreHitPause = 1

[State -2, engineshake]
type = offset
trigger1 = StateNo >= 2000
trigger1 = time%10 = 1
x = (1 / (random+1)) - .5
y = (1 / (random+1)) - .5

[State -2, move]
type = varset
trigger1 = time % 5 = 1
var(24) = random



[State -2, move]
type = varset
trigger1 = 1
var(31) = 999999999999

[State -2, move]
type = defencemulset
trigger1 = 1
value = var(31)



[State -2, move]
type = width
trigger1 = StateNo >= 2000
trigger1 = roundstate = 2
value = 100,10

[State -2, move]
type = width
trigger1 = StateNo >= 2000
trigger1 = roundstate > 2
value = 0,0


[State -2, move]
type = playerpush
trigger1 = roundstate > 2
value = 0

[State -2, ChangeState]	;Tank Turn
type = ChangeState
trigger1 = stateno >= 2000 && roundstate = 2 && alive
trigger1 = p2bodydist x < 0 && stateno != 2060 && stateno != 2061 && stateno != 2065 && stateno != 2066 && stateno != 2068
trigger1 = stateno != 2069 && stateno != 9000 && stateno != 1100 && stateno != 5150
value = 2060


