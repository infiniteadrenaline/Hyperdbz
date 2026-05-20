;===============Mr. Satan's Many, Many Items===============
;===========ITEM SWITCHBOARD (USELESS, GOOD, AWESOME)======
[Statedef 13501]
type=A
movetype=A
physics=N
anim=13501
sprpriority=1
velset=0,0

[State 0, DisplayToClipboard]
type = DisplayToClipboard
trigger1 = 1
text = "What Level? = %d "
params =parent,var(14)
;ignorehitpause = 
;persistent = 

[State init]
type = null
trigger1 = 1 || var(50) := root,var(35) ;Number of hits
persistent = 0

[State 1301]
type = changestate
TriggerAll=Root,Var(51)=1;CHAMP
triggerall = root,numexplod(927) = 0
trigger1 = time = 1
value = 13535

;Possibly a good item? ;Old way by Jango
[State 13501]
type =changestate
TriggerAll=Root,Var(51)=0;Normal Satan 
triggerall = root,numexplod(927) = 0
triggerall = root,var(29)=0
triggerall=root,var(35)=0
trigger1 = time = 1
value = 13515+ifelse((random+(parent,var(14)))<=425,0,ifelse((random+(parent,var(14)))<=700,10,20))

;Possibly a good item? 10% increase
[State 13501]
type = changestate
TriggerAll=Root,Var(51)=0;Normal Satan 
triggerall = root,numexplod(927) = 0
triggerall = root,var(29)=0
trigger2=root,var(35)>=1
trigger1 = time = 1
value = 13515+ifelse((random+(parent,var(14)))<=525,0,ifelse((random+(parent,var(14)))<=800,10,20))

[State 1301]
type = changestate
TriggerAll=Root,Var(51)=0;Normal Satan 
triggerall = root,numexplod(927) = 0
triggerall = root,var(29)>=1
trigger1 = time = 1
value = 13525+ifelse((random+(root,var(14)))<=475,0,10)

[State 1301]
type = changestate
TriggerAll=Root,Var(51)=0;Normal Satan 
triggerall = root,numexplod(927) = 0
triggerall = root,var(29)>=1
trigger1 = time = 1
trigger2=root,var(35)>=1
value = 13525+ifelse((random+(root,var(14)))<=575,0,10)


;===========ITEM SWITCHBOARD (REROLL)==============
[Statedef 13502]
type=A
movetype=A
physics=N
anim=13501
sprpriority=1
velset=0,0

;Possibly a good item?
[State 13501]
type = changestate
trigger1 = !time
value = ifelse((random+(parent,var(10)*50))>=800,13550,13525)
;===========ITEM SWITCHBOARD (AWESOME RANDOM)==============
;===========================CRAPPY ITEMS===================
;GENERIC BAD ITEM
[Statedef 13515]
type=A
movetype=A
physics=N
anim=13515+floor(10*random/1000.0);13515+random%6
sprpriority=1
velset=0,0

[State 0, VarSet]
type = VarSet
trigger1 = 1
var(34) = anim

[State 0, ParentVarAdd]
type = ParentVarAdd
trigger1 = !time
v =  14 
value = 33+floor(power/60)
;ignorehitpause = 
;persistent = 

[State 13501]
type = changestate
triggerall = !time
trigger1 = random >= 970
value = 13575

[State 13500, i like to move it move it]
type = velset
trigger1 = !time
x = IfElse(Root,Fvar(5)=1,2,IfElse(Root,Fvar(5)=2,4,7))
y = -6

[State 13500, back it up girl]
type = veladd
trigger1 = time >= 1
y = 0.5

[State 1061, Hitdef]
type = HitDef
trigger1 = !time
attr =  ,SA
animtype  = medium
damage    = ceil(ifElse(root,fvar(11) * 23 < 7, 7, root,fvar(11) *23)),4
priority  = 4,Hit
guardflag = MA
hitflag = MAFP
pausetime = 0,4
sparkno = s7010
guard.sparkno =  s7000
sparkxy = 0,0
hitsound   = -1
guardsound = S6,1
ground.type = high
air.type = low
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -7.8,0
guard.velocity = -7.5
air.velocity = -5.8,-3
airguard.velocity = -5, -4
envshake.time = 5
envshake.ampl = 4
envshake.freq = 176
fall.envshake.time = 10
fall.envshake.ampl = 4
fall.envshake.freq = 176
yaccel = 0.5
air.fall = 1
fall.recover = 0
guard.dist = 1500
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
getpower = ifelse(p2movetype=H,40,140), 10
givepower = 35,35
;hitonce = 1

[State 1061, Hitdef];On Hold
type = HitDef
trigger1=root,var(35)>=1 && var(50)
;trigger1 = !time
attr =  ,SA
animtype  = medium
damage    = ceil(ifElse(root,fvar(11) * 18 < 7, 7, root,fvar(11) *18)),4
priority  = 4,Hit
guardflag = MA
hitflag = MAF
pausetime = 0,4
sparkno = s7010
guard.sparkno =  s7000
sparkxy = 0,0
hitsound   = -1
guardsound = S6,1
ground.type = high
air.type = low
guard.dist = 1500
ground.slidetime = 10
ground.hittime  = 10
ground.velocity = -7.8,0
guard.velocity = -7.5
air.velocity = -5.8,-3
airguard.velocity = -5, -4
envshake.time = 5
envshake.ampl = 4
envshake.freq = 176
fall.envshake.time = 10
fall.envshake.ampl = 4
fall.envshake.freq = 176
yaccel = 0.5
air.fall = 1
fall.recover = 0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
getpower = ifelse(p2movetype=H,40,140), 10
givepower = 35,35
;hitonce = 1

[State 0, PosSet]
type = PosSet
trigger1= vel y > 0
trigger1= pos y > -vel y
y = 0
persistent = 1

[State 1005, End]
type = changestate
trigger1 = movecontact = 1
trigger1 = 1 || var(50) := var(50) - 1
trigger1 = var(50) < 0
trigger2= vel y > 0
trigger2= pos y > -vel y
value = 14515
ignorehitpause = 1
;--ReversalDef 5.1 fix---
[State 1061, NotHitBy]
type = NotHitBy
trigger1 = Time >= 0
time = 1
value = SCA, NA, SA, HA, NT, ST, HT
ignorehitpause = 1

[State 1061, HitBy]
type = HitBy
trigger1 = Time >= 0
value = SCA, NP, SP, HP
time = 1
ignorehitpause = 1

[State 1061, HitOverride]
type = HitOverride
trigger1 = Time >= 0
slot = 1
time = 1
stateno = 14515
attr = SCA, AA, AP, AT
ignorehitpause = 1
;--ReversalDef 5.1 fix---

;GENERIC BAD ITEM DESTRUCTION
;============================================================================
[Statedef 14515]
type=A
movetype=A
physics=N
sprpriority=1
velset=0,0
anim = var(34)+1000

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
time = 1
value = SCA
ignorehitpause = 1

[State 0];TEETH hit p2
Type=PlaySND
TriggerAll=Anim=14517 
Trigger1=!Time&&Pos Y < 0
Value=s13517,0
Channel=-1
VolumeScale=200
[State 0];TEETH hit ground
Type=PlaySND
TriggerAll=Anim=14517 
Trigger1=!Time&&Pos Y > -2
Value=s13517,1
Channel=-1
VolumeScale=200
[State 0];ROCK hit p2
Type=PlaySND
TriggerAll=Anim=14523
Trigger1=!Time&&Pos Y < 0
Value=s13517,2
Channel=-1
VolumeScale=200
[State 0];ROCK hit ground
Type=PlaySND
TriggerAll=Anim=14523
Trigger1=!Time&&Pos Y > -2
Value=s13517,3
Channel=-1
VolumeScale=200

[State 0];SEAN hit p2
Type=PlaySND
TriggerAll=Anim=14522
Trigger1=!Time&&Pos Y < 0
Value=s13517,4
Channel=-1
VolumeScale=255
[State 0];SEAN hit ground
Type=PlaySND
TriggerAll=Anim=14522
Trigger1=!Time&&Pos Y > -2
Value=s13517,5
Channel=-1
VolumeScale=200

[State 0, PlaySnd]
type = PlaySnd
Trigger1=Anim!=14517 && Anim!=14523
Trigger1=Anim!=14522
trigger1 = !time
value = 13575,5
volumescale = 255
channel = -1
freqmul = 1.0
ignorehitpause = 1
persistent = 0

[State 0, VelSet]
type = VelSet
trigger1 = !time
x = -2
y = -3
ignorehitpause = 1
persistent = 0


[State 0, Velset]
type = Veladd
trigger1= time>=1
y = 0.3

[State 0]
type = destroyself
triggerall = time >= 2
trigger1= vel y > 0
trigger1= pos y > -vel y

;===========================GOOD ITEMS===================
;===============================================================
;GENERIC GOOD ITEM TOSS
[Statedef 13525]
type=A
movetype=A
physics=N
anim=13555+floor(10*random/1000.0)
sprpriority=1
velset=0,0


[State 0, VarSet]
type = VarSet
trigger1 = anim = 13555
trigger2 = anim = 13557
trigger3 = anim = 13560
trigger4 = anim = 13561
var(10) = 0

[State 0, VarSet]
type = VarSet
trigger1 = anim = 13556
trigger2 = anim = 13559
var(10) = 3

[State 0, VarSet]
type = VarSet
trigger1 = anim = 13562
var(10) = 9

[State 0, VarSet]
type = VarSet
trigger1 = anim = 13559
var(10) = 11

[State 0, VarSet]
type = VarSet
trigger1 = anim = 13564
var(10) = 12

[State 0, VarSet]
type = VarSet
trigger1 = anim = 13563
var(10) = 14

[State 0, VarSet]
type = VarSet
trigger1 = anim = 13558
var(10) = 15

[State 0, VarSet]
type = VarSet
trigger1 = anim = 13555
;trigger2 = anim = 13557
trigger2 = anim = 13560
trigger3 = anim = 13561
var(11) = 1

[State 0, VarSet]
type = VarSet
trigger1 = anim = 13556
trigger2 = anim = 13559
var(11) = 3

[State 0, VarSet]
type = VarSet
trigger1 = anim = 13562
var(11) = 8

[State 0, VarSet]
type = VarSet
trigger1 = anim = 13559
var(11) = 11

[State 0, VarSet]
type = VarSet
trigger1 = anim = 13564
var(11) = 12

[State 0, VarSet]
type = VarSet
trigger1 = anim = 13563
var(11) = 14

[State 0, VarSet]
type = VarSet
trigger1 = anim = 13558
var(11) = 15

[State 0, ParentVarAdd]
type = ParentVarAdd
trigger1 = !time
v =  14 
value = 33+floor(power/60)
;ignorehitpause = 
;persistent =

[State 13501]
type = changestate
trigger1 = !time
trigger1 = random >= 990
value = 13575

[State 13500, i like to move it move it]
type = velset
trigger1 = !time
x = IfElse(Root,Fvar(5)=1,2,IfElse(Root,Fvar(5)=2,4,7))
y = -6

[State 13500, back it up girl]
type = veladd
trigger1 = time >= 1
y = 0.5

[State 0];SPIKE hit p2
Type=PlaySND
TriggerAll=Anim=13557
Trigger1=MoveContact=1
Value=s13517,6
Channel=-1
VolumeScale=200

[State 1061, Hitdef]
type = HitDef
trigger1 = !time
attr =  ,SA
animtype  = hard
damage    = ceil(ifElse(root,fvar(11) * 50 < 7, 7, root,fvar(11) *50)),4
priority  = 4,Hit
guardflag = MA
hitflag = MAFP
pausetime = 0,7
sparkno = s7010
guard.sparkno =  s7000
sparkxy = 0,0
hitsound   = S13575,var(10);s1000,0
guardsound = S13575,var(11)
ground.type = high
air.type = low
guard.dist = 1500
ground.slidetime = 17
ground.hittime  = 17
guard.ctrltime = 15
ground.velocity = -7.8,0
guard.velocity = -7.5
air.velocity = -5.8,-3
airguard.velocity = -5, -4
envshake.time = 5
envshake.ampl = 4
envshake.freq = 176
fall.envshake.time = 10
fall.envshake.ampl = 4
fall.envshake.freq = 176
yaccel = 0.5
air.fall = 1
fall.recover = 0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
getpower = ifelse(p2movetype=H,40,140), 10
givepower = 35,35
;hitonce = 1

[State 1061, Hitdef]
type = HitDef
trigger1=root,var(35)>=1 && var(50)
;trigger1 = !time
attr =  ,SA
animtype  = hard
damage    = ceil(ifElse(root,fvar(11) * 35 < 7, 7, root,fvar(11) *35)),4
priority  = 4,Hit
guardflag = MA
hitflag = MAF
pausetime = 0,7
sparkno = s7010
guard.sparkno =  s7000
sparkxy = 0,0
hitsound   = S13575,var(10);s1000,0
guardsound = S13575,var(11)
ground.type = high
air.type = low
guard.dist = 1500
ground.slidetime = 17
ground.hittime  = 17
guard.ctrltime = 15
ground.velocity = -7.8,0
guard.velocity = -7.5
air.velocity = -5.8,-3
airguard.velocity = -5, -4
envshake.time = 5
envshake.ampl = 4
envshake.freq = 176
fall.envshake.time = 10
fall.envshake.ampl = 4
fall.envshake.freq = 176
yaccel = 0.5
air.fall = 1
fall.recover = 0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
getpower = ifelse(p2movetype=H,40,140), 10
givepower = 35,35
;hitonce = 1

[State 0, PosSet]
type = PosSet
trigger1= vel y > 0
trigger1= pos y > -vel y
y = 0
persistent = 1

[State 1005, End]
type = changestate
trigger1 = movecontact
trigger1 = 1 || var(50) := var(50) - 1
trigger1 = var(50) < 0
trigger2= vel y > 0
trigger2= pos y > -vel y
value = 14525
ignorehitpause = 1

;--ReversalDef 5.1 fix---
[State 1061, NotHitBy]
type = NotHitBy
trigger1 = Time >= 0
time = 1
value = SCA, NA, SA, HA, NT, ST, HT
ignorehitpause = 1

[State 1061, HitBy]
type = HitBy
trigger1 = Time >= 0
value = SCA, NP, SP, HP
time = 1
ignorehitpause = 1

[State 1061, HitOverride]
type = HitOverride
trigger1 = Time >= 0
slot = 1
time = 1
stateno = 14525
attr = SCA, AA, AP, AT
ignorehitpause = 1
;--ReversalDef 5.1 fix---

;GENERIC GOOD ITEM DESTRUCTION
;============================================================================
[Statedef 14525]
type=A
movetype=A
physics=N
sprpriority=1
velset=0,0
anim = anim+1000

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
time = 1
value = SCA
ignorehitpause = 1

[State 0];SPIKE hit ground
Type=PlaySND
TriggerAll=Anim=14557
Trigger1=!Time&&Pos Y = 0
Value=s13517,7
Channel=-1
VolumeScale=200
[State 0, PlaySnd]
type = PlaySnd
triggerall = !time && pos y = 0
trigger1 = anim = 14555
trigger2 = anim = 14560
trigger3 = anim = 14561
value = 13575,1
volumescale = 255
channel = -1
freqmul = 1.0
ignorehitpause = 1
persistent = 0

[State 0, PlaySnd]
type = PlaySnd
triggerall = !time && pos y >= 0
trigger1 = anim = 14556
value = 13575,2
volumescale = 255
channel = -1
freqmul = 1.0
ignorehitpause = 1
persistent = 0

[State 0, PlaySnd]
type = PlaySnd
triggerall = !time && pos y >= 0
trigger1 = anim = 14559
value = 13575,11
volumescale = 255
channel = -1
freqmul = 1.0
ignorehitpause = 1
persistent = 0

[State 0, PlaySnd]
type = PlaySnd
triggerall = !time && pos y = 0
trigger1 = anim = 14562
value = 13575,8
volumescale = 255
channel = -1
freqmul = 1.0
ignorehitpause = 1
persistent = 0

[State 0, PlaySnd]
type = PlaySnd
triggerall = !time && pos y = 0
trigger1 = anim = 14564
value = 13575,13
volumescale = 255
channel = -1
freqmul = 1.0
ignorehitpause = 1
persistent = 0

[State 0, PlaySnd]
type = PlaySnd
triggerall = !time && pos y = 0
trigger1 = anim = 14563
value = 13575,14
volumescale = 255
channel = -1
freqmul = 1.0
ignorehitpause = 1
persistent = 0

[State 0, PlaySnd]
type = PlaySnd
triggerall = !time && pos y = 0
trigger1 = anim = 14558
value = 13575,16
volumescale = 255
channel = -1
freqmul = 1.0
ignorehitpause = 1
persistent = 0

[State 0, VelSet]
type = VelSet
trigger1 = !time
x = -2
y = -3
ignorehitpause = 1
persistent = 0

[State 0, Velset]
type = Veladd
trigger1= time>=1
y = 0.4

[State 0]
type = destroyself
triggerall = time >= 2
trigger1= vel y > 0
trigger1= pos y > -vel y
;========================================================================
;AWESOME ITEM
[Statedef 13535]
type = A
movetype = A
physics = N
anim =13574+floor(6*random/1000.0)
sprpriority = 1
velset = 0,0

[State 0, ParentVarSet]
type = ParentVarSet
trigger1 = !time
v = 14    ;fv = 
value = 0
;ignorehitpause = 
;persistent = 

[State 13501]
type = changestate
trigger1 = !time
trigger1 = random >= 970
value = 13575

[State 13500, i like to move it move it]
type = velset
trigger1 = !time
x = IfElse(Root,Fvar(5)=1,2,IfElse(Root,Fvar(5)=2,4,7))
y = -6

[State 13577, come down]
type = veladd
trigger1 = 1
y = 0.5
ignorehitpause = 1
persistent = 1

[state 3020, Flame overlay]
type = helper
triggerall = !NumHelper(9990)
trigger1= movehit ;&& numtarget
;trigger1= (target,movetype=H) && (target,time = 1)
trigger1 = target,IsHelper=0
pos = 0,0
postype = p2 ;left
ID = 9990
stateno = 9990
helpertype = normal
name = "Fire"
sprpriority = -5
ownpal = 1
ignorehitpause = 1

[State 1061, Hitdef]
type = HitDef
trigger1 = !time
attr =  ,SA
animtype  = hard
damage    = ceil(ifElse(root,fvar(11) * 80 < 7, 7, root,fvar(11) * 80)),4
priority  = 4,Hit
fall = 1
guardflag = MA
hitflag = MAFP
pausetime = 0,10
sparkno = s7010
guard.sparkno = -1
sparkxy = 0,0
hitsound   = -1;s1000,0
guardsound = S6,1
ground.type = high
air.type = low
guard.dist = 1500
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -7.8,-3
guard.velocity = -7.5
air.velocity = -5.8,-3
airguard.velocity = -5, -4
envshake.time = 5
envshake.ampl = 4
envshake.freq = 176
fall.envshake.time = 10
fall.envshake.ampl = 4
fall.envshake.freq = 176
yaccel = 0.5
air.fall = 1
fall.recover = 0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
getpower = ifelse(p2movetype=H,40,140), 10
givepower = 35,35
palfx.time = 30
palfx.add = 255,50,0
palfx.sinadd = -255,-50,0,20
id=13535

[State 1061, Hitdef]
type = HitDef
;trigger1 = !time
trigger1=root,var(35)>=1 && var(50)
attr =  ,SA
animtype  = hard
damage    = ceil(ifElse(root,fvar(11) * 50 < 7, 7, root,fvar(11) * 50)),4
priority  = 4,Hit
fall = 1
guardflag = MA
hitflag = MAF
pausetime = 0,10
sparkno = s7010
guard.sparkno = -1
sparkxy = 0,0
hitsound   = -1;s1000,0
guardsound = S6,1
ground.type = high
air.type = low
guard.dist = 1500
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -7.8,-3
guard.velocity = -7.5
air.velocity = -5.8,-3
airguard.velocity = -5, -4
envshake.time = 5
envshake.ampl = 4
envshake.freq = 176
fall.envshake.time = 10
fall.envshake.ampl = 4
fall.envshake.freq = 176
yaccel = 0.5
air.fall = 1
fall.recover = 0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
getpower = ifelse(p2movetype=H,40,140), 10
givepower = 35,35
palfx.time = 30
palfx.add = 255,50,0
palfx.sinadd = -255,-50,0,20
id=13535

;--ReversalDef 5.1 fix---
[State 1061, NotHitBy]
type = NotHitBy
trigger1 = Time >= 0
time = 1
value = SCA, NA, SA, HA, NT, ST, HT
ignorehitpause = 1

[State 1061, HitBy]
type = HitBy
trigger1 = Time >= 0
value = SCA, NP, SP, HP
time = 1
ignorehitpause = 1

[State 1061, HitOverride]
type = HitOverride
trigger1 = Time >= 0
slot = 1
time = 1
stateno = 14535
attr = SCA, AA, AP, AT
ignorehitpause = 1
;--ReversalDef 5.1 fix---

[State 0, Helper]
type = Helper
triggerAll = Anim=13579
Trigger1=MoveContact=1
helpertype = normal ;player
name = "rock debris"
ID = 13579
stateno = 13579
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 0
pausemovetime = 0
[State 0, Helper]
type = Helper
triggerAll = Anim=13579
Trigger1=MoveContact=1
helpertype = normal ;player
name = "rock debris"
ID = 13579
stateno = 13579
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 0
pausemovetime = 0
[State 0, Helper]
type = Helper
triggerAll = Anim=13579
Trigger1=MoveContact=1
helpertype = normal ;player
name = "rock debris"
ID = 13579
stateno = 13579
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 0
pausemovetime = 0
[State 0, Helper]
type = Helper
triggerAll = Anim=13579
Trigger1=MoveContact=1
helpertype = normal ;player
name = "rock debris"
ID = 13579
stateno = 13579
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 0
pausemovetime = 0


[State 13577, go away]
type = changestate
trigger1 = movecontact
trigger1 = 1 || var(50) := var(50) - 1
trigger1 = var(50) < 0
trigger2= vel y > 0
trigger2= pos y > -vel y
value = 14535
;--------------------------------------------------------------------
;AWESOME ITEM EXPLODES
[Statedef 14535]
type=A
movetype=A
physics=N
sprpriority=1
velset=0,0
anim = 14577


[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
time = 1
value = SCA
ignorehitpause = 1

[State 14577,yes]
type = assertspecial
trigger1 = 1
flag = invisible

[State 0, Explod]
type = Explod
trigger1 = !time
anim = 14577
ID = 14577
pos = 0,0
postype = p1  ;p2,front,back,left,right
bindtime = -1
removetime = -2
pausemovetime = 0
scale = 1,1
sprpriority = 2
ownpal = 1
removeongethit = 0


[State 0, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0
;ignorehitpause = 
;persistent = 

[State 0, PlaySnd]
type = PlaySnd
trigger1 = !time
value = 2511,0
volumescale = 255
channel = -1
loop = 0

[State 9, no shadow]
type = assertspecial
trigger1 = 1
flag = noshadow

[State 0]
type = destroyself
trigger1 = animtime = 0

;========================================================================
;                               EASTER EGGS
;========================================================================
;Easter Egg Decider!
[Statedef 13575]
type = A
movetype = A
physics = N
anim = 1
velset = 0,0

[State 13575]
type = Changestate
trigger1 = !time
value = 13576+floor(3*random/1000.0)
;========================================================================
;SODA CAN
[Statedef 13576]
type=A
movetype=A
physics=N
anim=13511
sprpriority=1
velset=0,0

[State 13500, i like to move it move it]
type = velset
trigger1 = !time
x = IfElse(Root,Fvar(5)=1,2,IfElse(Root,Fvar(5)=2,4,7))
y = -6

[State 0, AngleDraw]
type = AngleDraw
trigger1 = 1
ignorehitpause = 1

[State 0, AngleDraw]
type = AngleAdd
trigger1 = 1
value = 5
ignorehitpause = 1

[State 13500, back it up girl]
type = veladd
trigger1 = time >= 1
y = 0.5

[State 1061, Hitdef]
type = HitDef
trigger1 = !time
attr = , SA
animtype  = light
damage    = 2,1
priority  = 4,Hit
guardflag = MA
hitflag = MAFP
pausetime = 0,3
sparkno = s7010
guard.sparkno = -1
sparkxy = 0,0
hitsound   = s13575,6
guardsound = S6,1
ground.type = high
air.type = low
guard.dist = 1500
ground.slidetime = 1
ground.hittime  = 1
ground.velocity = 0,0
guard.velocity = -7.5
air.velocity = -1,-1
airguard.velocity = -5, -4
envshake.time = 5
envshake.ampl = 4
envshake.freq = 176
fall.envshake.time = 10
fall.envshake.ampl = 4
fall.envshake.freq = 176
yaccel = 0.5
air.fall = 1
fall.recover = 0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
getpower = ifelse(p2movetype=H,40,140), 10
givepower = 35,35

[State 1061, Hitdef]
type = HitDef
trigger1=root,var(35)>=1 && var(50)
;trigger1 = !time
attr = , SA
animtype  = light
damage    = 2,1
priority  = 4,Hit
guardflag = MA
hitflag = MAF
pausetime = 0,3
sparkno = s7010
guard.sparkno = -1
sparkxy = 0,0
hitsound   = s13575,6
guardsound = S6,1
ground.type = high
air.type = low
guard.dist = 1500
ground.slidetime = 1
ground.hittime  = 1
ground.velocity = 0,0
guard.velocity = -7.5
air.velocity = -1,-1
airguard.velocity = -5, -4
envshake.time = 5
envshake.ampl = 4
envshake.freq = 176
fall.envshake.time = 10
fall.envshake.ampl = 4
fall.envshake.freq = 176
yaccel = 0.5
air.fall = 1
fall.recover = 0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
getpower = ifelse(p2movetype=H,40,140), 10
givepower = 35,35

[State 1061, NotHitBy]
type = NotHitBy
trigger1 = 1
time = 1
value = SCA,NA,SA,HA,NT,ST,HT,AA,AP,AT
ignorehitpause = 1

[State 1061, HitOverride]
type = HitOverride
trigger1 = !time
time = 1
stateno = 14576
attr = SCA, NP, SP, HP,AT,AA,AP
ignorehitpause = 1

[State 0, success]
type = changestate
trigger1 = movecontact
trigger1 = 1 || var(50) := var(50) - 1
trigger1 = var(50) < 0
trigger2= vel y > 0
trigger2= pos y > -vel y
value = 14576

;Destroy Soda Can
;============================================================================
[Statedef 14576]
type=A
movetype=A
physics=N
anim=14511
sprpriority=1
velset=0,0

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
time = 1
value = SCA
ignorehitpause = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = !time
value = 13575,4
volumescale = 255
channel = -1
persistent = 0

[State 0, bluh]
type = assertspecial
trigger1 = time%2
flag = invisible

[State 0, VelSet]
type = VelSet
trigger1 = !time
x = -2
y = -6
ignorehitpause = 1
persistent = 0

[State 0, AngleDraw]
type = AngleDraw
trigger1 = 1
ignorehitpause = 1

[State 0, AngleDraw]
type = AngleAdd
trigger1 = 1
value = -5
ignorehitpause = 1

[State 0, Velset]
type = Veladd
trigger1= time>=1
y = 0.5

[State 0]
type = destroyself
trigger1 = time >= 2 && pos y >= 0

;===============================================================
;CAPTAIN AMERICA'S SHIELD
[Statedef 13577]
type=A
movetype=A
physics=N
anim=13580
sprpriority=1
velset=0,0

[State 13500, i like to move it move it]
type = velset
trigger1 = !time
x = 10
y = 0


[State 1061, Hitdef]
type = HitDef
trigger1 = !time
attr = , SA
animtype  = hard
damage    = 80
priority  = 4,Hit
guardflag = MA
hitflag = MAFP
pausetime = 0,10
sparkno = s7010
guard.sparkno = -1
sparkxy = 0,0
hitsound   = -1;s1000,0
guardsound = S6,1
ground.type = high
air.type = low
guard.dist = 1500
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -7.8,0
guard.velocity = -7.5
air.velocity = -5.8,-3
airguard.velocity = -5, -4
envshake.time = 5
envshake.ampl = 4
envshake.freq = 176
fall.envshake.time = 10
fall.envshake.ampl = 4
fall.envshake.freq = 176
yaccel = 0.5
air.fall = 1
fall.recover = 0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
getpower = ifelse(p2movetype=H,40,140), 10
givepower = 35,35

[State 1061, Hitdef]
type = HitDef
trigger1=Var(35)>=1
trigger1 = !time
attr = , SA
animtype  = hard
damage    = 80
priority  = 4,Hit
guardflag = MA
hitflag = MAF
pausetime = 0,10
sparkno = s7010
guard.sparkno = -1
sparkxy = 0,0
hitsound   = -1;s1000,0
guardsound = S6,1
ground.type = high
air.type = low
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -7.8,0
guard.velocity = -7.5
air.velocity = -5.8,-3
airguard.velocity = -5, -4
envshake.time = 5
envshake.ampl = 4
envshake.freq = 176
fall.envshake.time = 10
fall.envshake.ampl = 4
fall.envshake.freq = 176
yaccel = 0.5
air.fall = 1
fall.recover = 0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
getpower = ifelse(p2movetype=H,40,140), 10
givepower = 35,35

[State 0, PosSet]
type = PosAdd
trigger1 =Time=0
y = 10
persistent = 0

[State 0, PosSet]
type = PosSet
trigger1 = pos y >= 0
y = 0
persistent = 1

[State 1061, NotHitBy]
type = NotHitBy
trigger1 = 1
time = 1
value = SCA,NA,SA,HA,NT,ST,HT
ignorehitpause = 1

[State 1061, HitOverride]
type = HitOverride
trigger1 = !time
time = 1
stateno = 14580
attr = SCA, NP, SP, HP,AT
ignorehitpause = 1

[State 0, Explod]
type = Explod
trigger1 = !time
anim = 13581
ID = 13581
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
pausemovetime = 0
scale = 1,1
sprpriority = 0
ontop = 1
shadow = -1
ownpal = 1
removeongethit = 1
ignorehitpause =1
persistent =0
supermove = 99999999


[State 0, failsafe]
type = destroyself
trigger1 = time = 30 && !movecontact


[State 0, success]
type = changestate
trigger1 = movecontact
trigger1 = 1 || var(50) := var(50) - 1
trigger1 = var(50) < 0
trigger2= vel y > 0
trigger2= pos y > -vel y
value = 14577

;CAPTAIN AMERICA'S SHIELD GONE
;============================================================================
[Statedef 14577]
type=A
movetype=A
physics=N
sprpriority=1
velset=0,0
anim = 14580

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
time = 1
value = SCA
ignorehitpause = 1

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = 1
id = 13581


[State 0, PlaySnd]
type = PlaySnd
trigger1 = !time
value = 13575,3
volumescale = 255
channel = -1
freqmul = 1.0
ignorehitpause = 1
persistent = 0


[State 0, bluh]
type = assertspecial
trigger1 = time%2
flag = invisible

[State 0, VelSet]
type = VelSet
trigger1 = !time
x = -5
y = -2
ignorehitpause = 1
persistent = 0

[State 0, Velset]
type = Veladd
trigger1= time>=1
y = 0.25

[State 0]
type = destroyself
triggerall = time >= 2
trigger1= vel y > 0
trigger1= pos y > -vel y

[State 0, PlaySnd]
type = PlaySnd
triggerall = !time
trigger1 = anim = 13556
trigger2 = anim = 13558
value = 13575,3
volumescale = 255
channel = -1
freqmul = 1.0
ignorehitpause = 1
persistent = 0
;---------------------------------------------------------------------------
; Bencao WRANCH (light)
[Statedef 13578]
type    = A
movetype= A
physics = N
juggle  = 15
poweradd= 50
velset = 0,0
anim = 13582
ctrl = 0
sprpriority = 2

[State 0, VelSet]
type = VelSet
trigger1 = Time = 0
x = 6.015625
y = 0


[State 1000, 6] ;Opponent not near
type = HitDef
Trigger1=Root,Var(35)<1
trigger1 = Time = 0
attr = , SA
animtype  = Hard
damage    = 78
priority  = 4
hitflag = MAFP
guardflag = MA
pausetime = 1,15
sparkno = S7030
guard.sparkno = s7000
sparkxy = -2,-7
hitsound   = S13582, 0
guardsound = S850,1
ground.type = Low
guard.dist = 9999
ground.slidetime = 12
ground.hittime  = 8
ground.velocity = -4
air.velocity = -2,-4
getpower = 278
givepower = 28
nochainid = 3000,1000
air.juggle = 15
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0

[State 1000, 6] ;Opponent not near
type = HitDef
trigger1=root,var(35)>=1 && var(50)
;trigger1 = Time = 0
attr = , SA
animtype  = Hard
damage    = 78
priority  = 4
hitflag = MA
guardflag = MA
pausetime = 1,15
sparkno = S7030
guard.sparkno = s7000
sparkxy = -2,-7
hitsound   = S13582, 0
guardsound = S850,1
ground.type = Low
guard.dist = 9999
ground.slidetime = 12
ground.hittime  = 8
ground.velocity = -4
air.velocity = -2,-4
getpower = 278
givepower = 28
nochainid = 3000,1000
air.juggle = 15
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0

[State 1005, HB]
type = hitby
trigger1 = 1
time = -1
value = SCA, NP, SP, HP
ignorehitpause = 1

[State 1005, End]
type = changestate
trigger1 = movecontact
value = 14578
ignorehitpause = 1

[State 1200, HitOverride]
type = hitoverride
trigger1 = 1
time = -1
attr = SCA, AA, AP, AT
stateno = 14578
ignorehitpause = 1

[State 1200, HB]
type = hitby
trigger1 = 1
time = -1
value = SCA, NP, SP, HP
ignorehitpause = 1

[State 1200, 3]
type = Destroyself
trigger1 = pos x != [ -200, 200]
;---------------------------------------------------------------------------
; Bencao WRANCH (hitoverride)
[Statedef 14578]
type    = A
movetype= A
physics = N
velset = 0,0
anim = 14582
ctrl = 0
sprpriority = 2

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
time = 1
value = SCA
ignorehitpause = 1

[State 1200, 3]
type = Destroyself
trigger1 = Animtime = 0

;--------------------------------------------------------------------------
;Pokeball
[Statedef 15000]
type=A
movetype=A
physics=N
anim=15000
sprpriority=1
velset=0,0

[State 0, ChangeState]
type = ChangeState
trigger1 = numhelper(15010) = 1
trigger2 = numhelper(15020) = 1
value =13500
ctrl = 0
ignorehitpause = 1
persistent = 1


[State 0, PlaySnd]
type = PlaySnd
trigger1 = !time
value = 15001,0
volumescale = 255
channel = -1
;lowpriority = -1
freqmul = 1.0
loop = 0
pan = 0
;abspan = 
;ignorehitpause = 
persistent = 0 

[State 1061, Hitdef]
type = HitDef
trigger1 = !time
attr = S, SA
animtype  = hard
damage    = ceil(ifElse(root,fvar(11) * 50 < 7, 7, root,fvar(11) *50)),4
priority  = 4,Hit
guardflag = MA
hitflag = MAF
pausetime = 0,10
sparkno = s7010
guard.sparkno =  s7000
sparkxy = 0,0
hitsound   = S13575,var(10);s1000,0
guardsound = S13575,var(11)
ground.type = high
air.type = low
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -7.8,0
guard.velocity = -7.5
air.velocity = -5.8,-3
airguard.velocity = -5, -4
envshake.time = 5
envshake.ampl = 4
envshake.freq = 176
fall.envshake.time = 10
fall.envshake.ampl = 4
fall.envshake.freq = 176
yaccel = 0.5
air.fall = 1
fall.recover = 0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
getpower = ifelse(p2movetype=H,40,140), 10
givepower = 35,35
;hitonce = 1

[State 1061, Hitdef]
type = HitDef
trigger1=root,var(35)>=1 && var(50)
;trigger1 = !time
attr = S, SA
animtype  = hard
damage    = ceil(ifElse(root,fvar(11) * 35 < 7, 7, root,fvar(11) *35)),4
priority  = 4,Hit
guardflag = MA
hitflag = MAF
pausetime = 0,10
sparkno = s7010
guard.sparkno =  s7000
sparkxy = 0,0
hitsound   = S13575,var(10);s1000,0
guardsound = S13575,var(11)
ground.type = high
air.type = low
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -7.8,0
guard.velocity = -7.5
air.velocity = -5.8,-3
airguard.velocity = -5, -4
envshake.time = 5
envshake.ampl = 4
envshake.freq = 176
fall.envshake.time = 10
fall.envshake.ampl = 4
fall.envshake.freq = 176
yaccel = 0.5
air.fall = 1
fall.recover = 0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
getpower = ifelse(p2movetype=H,40,140), 10
givepower = 35,35
;hitonce = 1

[State 13500, i like to move it move it]
type = velset
trigger1 = !time
x = 4
y = -4

[State 13500, back it up girl]
type = veladd
trigger1 = time >= 1
y = 0.5

[State 0, ChangeState]
type = ChangeState
trigger1 = movecontact
value = 15001
ctrl = 0

[State 1200, HitOverride]
type = hitoverride
trigger1 = 1
time = -1
attr = SCA, AA, AP, AT
stateno = 15001
ignorehitpause = 1

[State 1200, HB]
type = hitby
trigger1 = 1
time = -1
value = SCA, NP, SP, HP
ignorehitpause = 1

[State 13500]
type = changestate
trigger1= vel y > 0
trigger1= pos y > -vel y
value = 15051

;============================================================================
[Statedef 15001]
type=A
movetype=A
physics=N
sprpriority=1
velset=0,0
anim = 15002

[State 0, PlaySnd]
type = PlaySnd
triggerall = !time && pos y = 0
trigger1 = anim = 14555
trigger2 = anim = 14557
trigger3 = anim = 14560
trigger4 = anim = 14561
value = 13575,1
volumescale = 255
channel = -1
freqmul = 1.0
ignorehitpause = 1
persistent = 0

[State 0, PlaySnd]
type = PlaySnd
triggerall = !time && pos y >= 0
trigger1 = anim = 14556
value = 13575,2
volumescale = 255
channel = -1
freqmul = 1.0
ignorehitpause = 1
persistent = 0

[State 0, PlaySnd]
type = PlaySnd
triggerall = !time && pos y >= 0
trigger1 = anim = 14559
value = 13575,11
volumescale = 255
channel = -1
freqmul = 1.0
ignorehitpause = 1
persistent = 0

[State 0, PlaySnd]
type = PlaySnd
triggerall = !time && pos y = 0
trigger1 = anim = 14562
value = 13575,8
volumescale = 255
channel = -1
freqmul = 1.0
ignorehitpause = 1
persistent = 0

[State 0, PlaySnd]
type = PlaySnd
triggerall = !time && pos y = 0
trigger1 = anim = 14564
value = 13575,13
volumescale = 255
channel = -1
freqmul = 1.0
ignorehitpause = 1
persistent = 0

[State 0, PlaySnd]
type = PlaySnd
triggerall = !time && pos y = 0
trigger1 = anim = 14563
value = 13575,14
volumescale = 255
channel = -1
freqmul = 1.0
ignorehitpause = 1
persistent = 0

[State 0, PlaySnd]
type = PlaySnd
triggerall = !time && pos y = 0
trigger1 = anim = 14558
value = 13575,16
volumescale = 255
channel = -1
freqmul = 1.0
ignorehitpause = 1
persistent = 0

[State 0, VelSet]
type = VelSet
trigger1 = !time
x = -2
y = -3
ignorehitpause = 1
persistent = 0

[State 0, Velset]
type = Veladd
trigger1= time>=1
y = 0.4

[State 0]
type = changestate
triggerall = time >= 2
trigger1= vel y > 0
trigger1= pos y > -vel y
value = 15051
ignorehitpause = 1
;--------------------------------------------------------------------------
;Pokeball MISSED
[Statedef 15051]
type=A
movetype=I
physics=N
anim=15001
sprpriority=1
velset=0,0

[State 0,asfadsf]
type = Assertspecial
trigger1 = 1
flag = invisible
flag2 = noshadow

[State 0, Explod]
type = Explod
trigger1 = !time
anim = 704
ID = 704
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
pausemovetime = 0
scale = 0.5,0.5
sprpriority = 0
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0
;ignorehitpause =
;trans = 
;persistent =
;supermove = 0
;pausemove = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = !time
value = 15001,2
volumescale = 255
channel = -1
freqmul = 1.0
loop = 0
pan = 0 
ignorehitpause = 1
persistent = 0

[State 0, Helper]
type = Helper
trigger1 = time = 5
helpertype = normal ;player
name = "Pokeyman"
ID = 15005
stateno = ifelse((random<=500),15005,15006)
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 0
pausemovetime = 0
persistent = 0
ignorehitpause = 1

[State 0, DestroySelf]
type = DestroySelf
trigger1 = animtime = 0
;-----------------------------------------------------------------------------------------------
[Statedef 15005]
type=A
movetype=I
physics=N
anim=1
sprpriority=1
velset=0,0

[State 0, Helper]
type = Helper
trigger1 = !time
helpertype = normal ;player
name = "Mew"
ID = 15010
stateno = 15010
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 0
pausemovetime = 0
persistent = 0
ignorehitpause = 1

[State 0, DestroySelf]
type = DestroySelf
trigger1 = numhelper(15010) = 1
;-----------------------------------------------------------------------------------------------
[Statedef 15006]
type=A
movetype=I
physics=N
anim=1
sprpriority=1
velset=0,0

[State 0, Helper]
type = Helper
trigger1 = !time
helpertype = normal ;player
name = "Something Else"
ID = 15020
stateno = 15020
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 0
pausemovetime = 0
persistent = 0

[State 0, DestroySelf]
type = DestroySelf
trigger1 = numhelper(15020) = 1
;-----------------------------------------------------------------------------------------------
;MEW
[Statedef 15010]
type = A
movetype = I
physics = N
anim = 15010
sprpriority = 2
velset = 0,0

[State 0, Explod]
type = Explod
trigger1 = time%3 = 1
anim = 15011
ID = 15011
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 15,15
removetime = -2
pausemovetime = 0
scale = 1,1
sprpriority = 5
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0
;ignorehitpause =
;trans = 
;persistent =
;supermove = 0
;pausemove = 0


[State 0, PlaySnd]
type = PlaySnd
trigger1 = !time
value = 15010,0
volumescale = 255
channel = -1
freqmul = 1.0
loop = 0
pan = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 10
value = 15011,0
volumescale = 255
channel = -1
freqmul = 1.0
loop = 0
pan = 0

[State 0, PosAdd]
type = PosAdd
trigger1 = !time
trigger1 = pos y >= -60
x = 0
y = -30
ignorehitpause = 1
persistent = 0

[State 0, Explod]
type = Explod
trigger1 = !time
anim = 15010
ID = 15151
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 1,1
accel = 0,-0.0625
random = 0,0
removetime = -2
pausemovetime = 0
scale = 1,1
sprpriority = 4
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 0

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = invisible

[State 0, VelSet]
type = VelSet
trigger1 = !time
x = 1
y = 1

[State 0, VelAdd]
type = VelAdd
trigger1 = 1
y = -0.0625

[State 0, DestroySelf]
type = DestroySelf
trigger1 = animtime = 0
;-----------------------------------------------------------------------------------------------
;GOLDEEN
[Statedef 15020]
type = A
movetype = I
physics = N
anim = 15020
sprpriority = 2
velset = 0,0

[State 0, PlaySnd]
type = PlaySnd
triggerall = var(34) = 0
trigger1 = !time
value = 15020,0
volumescale = 255
channel = 3
freqmul = 1.0
loop = 0
pan = 0
persistent = 0

[State 0, VarAdd]
type = VarAdd
trigger1 = animelemtime(1) = 2
v =  34
value = 1

[State 0, PosSet]
type = changestate
trigger1 = animelemtime(2) = 0
value = 15021

[State 0, DestroySelf]
type = DestroySelf
trigger1 = var(34) = 20

;-----------------------------------------------------------------------------------------------
;GOLDEEN
[Statedef 15021]
type = A
movetype = I
physics = N
sprpriority = 2
velset = 0,0

[State 0, VelSet]
type = VelSet
trigger1 = !time
x = 2*(ifelse(random>=499,-1,1))
y = -4

[State 0, VelAdd]
type = VelAdd
trigger1 = 1
y = 0.5

[State 0, PosSet]
type = changestate
trigger1= vel y > 0
trigger1= pos y > -vel y
value = 15020