- added roundstart protection to assists
- boss options only appear after continue


5/14/25
- updated small port
- updated K zetto

5/6/25
- updated small portrait
- updated dmg values on throws
- Back Breaker Hyper does more min dmg and causes HKD
- Tien clones no longer destroy self during Guard Recovery
- reduced dmg on fin2
- IAD changes
- land delay and guard changes
- ball drop
- boss compat


12/10/2024 - yoshins 3 eye burger and fries
-Fixed Talons Limiter failing to send enemy to knockdown state on Non-Z2 characters
-Made Overhead Punch (WHILE IN EMO - MK > MK > MP) -1, to remove infinite blockstrings
-Tien can now block after air teching
-Lowered CR_LK hitbox to the ground
-AI Focus attack now checks for the correct states
-Tweaked Chiaotzus pallete in palettes 1,2/4/13/14 to alleviate ambiguity during mirror matches (applied to previews as well)
-Added a fix to throw teching to allow more consistent teching on wakeup
-Made LVL1 Kikoho scale harder, but it does higher minimum damage


5/17/24 - tien kegglog's breakfast
- focus attack (attack portion) is now 6f startup down from 8f
- added held button roll change
- first attack fix applied
- ctrl set reapplied in states 151, 153, and 155

05/03/2024
- fixed j.hk allowing tech after hitting
- added projectile invuln like other focus
- fixed focus causing clones when hit by a kamehameha
- properly fixed chao facing the wrong direction during intros when 18 walks from behind
- fixed chao recovery effects persisting after he leaves for emo
- fixed tien not being able to block during the falling portion of airdash
- adjusted focus attack, actual attack startup down from 5 to 2
- changed anim for blank explod from 40 back to 1

1/2/24
- super dbz ko now triggers on both dodonpas
- chaos now faces correctly during intros no matter what
- chaos ready effects now blimp around him until hes ready
- chaos ready effect now dissapears in a custom state
- chaos ready effect now has the correct sprite priority

12/28/23
fixed chao appearing over tien during the hit reaction state
ex talons chip down 48 to 30
4 arm punches now does 56 chip damage on block
adjusted airdash animations and changestate
adjusted airdash buffer to be 30
fixed mp knocking down regardless if a move connected or not
added chaos recovery effect and replaced dimming

10/31/23
-crMK now moves Tien forward a bit
-crHP startup reduced from 13 to 10 and active frames increased from 2 (??) to 5
-Attack constant increased from 95 to 100 (All chars should be 100, idk why he had 95)
-Added get hit state overrides (Fixing Tien falling off of combos)
-Added cancel into grounded supers from Talons
-Added cancel into kikoho from Crane Kick

10/30/23
-Fixed Get Up timing
-Fixed Crane Kick wallbounce happening randomly (It was supposed to be a counter hit property but it didn't work properly and i don't think he needs it)
-Improved jHK hitbox
-Focus Attack is now 6f startup (Gotenks is 7 for comparison, ssj Goku is 2)
-Fixed Talons limiter
-Fixed clone spawning in Focus Attack 

6/13/23
-fixed focus to be the standard in terms of code and anims
-fixed crane stance attack to be 1500 in terms of code and anims

June/12/2023
-fixed issue with fall down hurtbox inconsistency

2/18/23
-adjusted other lvl3 finisher dmg
    - lvl1 does 510
    - lvlv2 does 616
    - lvl3 does 700 
-adjusted the dim and time of chao indicator to be more on time with chao being able to act again
-toni baby sprite added
-chao now becomes less dim but still dims as an indicator
-chao no longer comes back dim after emo exit
-raw lvl3 does the same damage jiren

2/3/23
-baby sprite added
-chao now darkens instead of meditates
-packaged updated movelist
-talons limiter shouldnt break non z2 chars anymore

12/14/22
-clones and Chiaotzu add 1 dmg dampener point on hit now
-OM moves add an additional 1 dmg dampener point
-all the above deal 3 min dmg

12/13/22
-HKD sound fix
-5 second safeguard for being stuck in emo exit (this is very hard to reproduce so I didn't find the actual issue)
-Volley serve has smaller hurtbox
-IAD Crane Kick can actually hit and has extra startup frames depending on how close Tien is to the ground
-dmg scale points reduced for hypers
-min dmg increased from 3 to 7
-additional safeguard added to prevent gaining clones back too soon


10/19/22
-Tien will no longer try to commit suicide while shooting kikoho
-Comboable grab (grab chain from lights or mediums) sends p2 to a non-invuln flip state (This change is mostly because i thought that for some people it would be hard to do the Talons limiter combos, so it should made it easier for them. And to give the move a bit more usability)
-Fix for the bug where Chaos was able to attack before round start
-Velocity for run state now kicks in on frame 3
-Removed Chaos 1 move per combo limiter
-Increased damage for finishers
-Fixed a bug where clones could be grabbed
== Bugfixes ==
-Tien post-kikoho exhaustion state is now throw-able
-Tien can now use stHP while running

== Changes ==
-6K ender now causes HKD

5/6/2022 Bug Fix/Final Stretch For Tien
- Volley Super Jump State Changed From S --> A (Forced Him To Stand In The Air If Hit)
- Added "V1" into his name

Tien 5.1 Closing Points 5/5/2022
- Added Small EMO Scaling System
- Inserted "P" into hitflag for some moves
- Updated Turn Code

Tien 5.1 Small Changes/Fixes 5/1/2022
- Fixed FA Not Having Armor
- No Longer Allowed To Combo/OTG After LVL3
- Focus ACTUALLY Doesn't Have Frame 1 Armor After A Roll

Tien 5.1 Preparation Updates 4/28/2022
- AI Allowed To Tech Throw
- Wall-Breaking Helpers Bugging Out Fixed
- Allowed To Hold Focus After Roll
- Added IAD Buffer
- Run Buffs Applied
- 5.1 Move Priority Updates Applied
- Lows Are Able To Be Air-Guarded
- No Armor On Focus After Roll
*Other General 5.1 Changes

2/23/2022
- Chaos can no longer act during Tien FA, ki charge and zettos
- 5.1 updates

2/20/2022
- Reduced Emo meter gain from normals
- Changed airdashes
- Paralysis state disables juggle points

2/19/22
**Buff**
	-Chaotzu:
		-Shield [F,D,F + P] has reduced knockback on grounded opponents for more
		consistency for multi-hits mid-screen
**Misc**
	-First Attack:
		-Bugfix on Tien not being able to get the first hit bonus after damaging
		himself from Lvl1 Kikoho
	-Emo:
		-Bugfix on Om Bar
	-Clones:
		-Bugfix on Solar Flare Clone and Dodonpa Clone not changing to air state properly in combos
		-Tien cant summon clones while throwing, during Zetto, being hit, or Focus Attack
	-Chaotzu:
		-Shield [F,D,F + P] vfx change

2/3/2022
- Air Tayoken slides a bit forward now
- Air Dodonpa slides a bit backward now (It pushes a bit P2 so its more consistent with the hit)
- Now Buddha moves can cancel into levitate with the correct input
- Added the other two clone moves to the AI
- Limited FA now leaves P2 in a invuln state on kd

1/8/2022
- Chaos shield FX fix
- Wallbreak fix
- Added chaos meditation anim for his recovery

12/29/2021
- 5.1 updates/fixes
- Air inputs fix
- Fixed finisher lvl3 bug

12/23/2021
- Fixed normals frame data
- Added all 4 air clones
- Removed white flash
- Fixed Chiaotzu dodonpa bug

12/18/2021
- Fixed JPs
- Removed JP usage from Talons
- Now Talons limiter triggers after Talons follow up
- Crane stance follow ups now consume different JP's
  - Up+K consumes 7
  - Fwd+K consumes 5
  - P consumes 6

12/15/2021
- Fixed the bugs i removed from pinned messages
- Made AI better
- Added system changes
- Added Roll

Feb/2/21
-----------------------------
-wings now has air invuln and projectile invuln 

jan/26/21
-----------------------------
-applied ground bounce limiter from jSP to serve

jan/20/21
-----------------------------
-removed juggle reset from telekinisis and ground bounce
-Rekka U+K follow up wall bounces
-proximity throw added
-updated winquotes
-removed defense nerf from OM mode
-added get up backturn protection

jan/12/21
-----------------------------
-lowered run hurtbox to floor
-can no longer run over back thrown opponent
-added dizzy sound to solar flare dizzy
-Max Focus now causes hard KD if opponent is in hit state

jan/8/21
-----------------------------
-reduced min dmg to 3
-reduced dmg of Chiatzu Dodompa from 70 to 50
-reduced power charge time if opponent is in hit state
-reduced power gain from hits

5.0a Patch
-----------------------------
-added juggle point requirement to volley ball

5.0 PATCH
---------------------------------------------------------
-added Focus Limiter2
-added fail safe for flying pink pig to leave the stage
-made Talons not oH throughout as intended
-added destroyed helper protection
-adds 23 dampener points after zetto hits
-adds 2 dampener points after throw hits
-can now use 2P to dash after back dash
-updated throws
-added min air dash height
-otg hits add to juggle points
-debug now displays juggle points
-jSP can now cross up

12/15/20FINAL
=========================================
-chiaotzu moves will be destroyed if he's removed
-incresed throw box height so he can grab candy
-now has a 5 tick delay before he can attack after airdash
-added chiaotzu torso for lose pose
-updated basic limiter from helper to explod

Tien Update 12/15/20
=========================================
-added negative edge
-updated chioatzu idle anims (for worried too)
-updated LVL2 super spark/snd
-updated LVL3 sounds
-updated cheap KO code

--------------------------------------------------------------------------------------------------------------------------
Update 12/10/2020
-adjusted hitboxes to make certain moves connect better sMK, sHK, F+HK,jMK,and 1st hit of rekka
-Solar flare is -oB
-LVL3 DMG increased
-Changes to Kikoho
--Kikoho requires 1000 meter to use each blast without life penalty
--If he does not have 1000 meter he pulls from his own health. Each blast pulls more health.
--He can die before firing the final blast. He yells, fires, then dies. Since he dies before the blast comes out it will not kill.
-Chiaotzu attacks allowed like before during combos.
-Chiaotzu commands restored back to their old commands ;_;
-Tien gets lower defence in OM mode. This uses the NOT fixed version of defencemulset so the lower defense only applies after the first hit in a combo

----------appending more updates-----------------
-fixed issue with him getting dizzy after firing Kikoho he had meter for
-added dizzy sound to his kikoho dizzy
-fixed defence issue and lowered dmg taken in emo

---------------------------------------------------------------------------------------------------------------------------
Update 12/09/2020
-fixed issues with LVL3 (I hope)
-reduced dmg from LVL3
-reduced time from stances using Chiaotzu moves
-Chiaotzu moves can be done in combos
-1st rekka no longer oH
-gave Tien the air dash attack delay standard
-reduced guardtime from Chiaotzu Dodompa
-removed ability to air dash back while jumping fwd
-rekkas - oB and give less power
-minimum dmg on normals and specials reduced to 7
-jMK no longer oH


---------------------------------------------------------------------------------------------------------------------------
Update 12/09/2020
-Nerfed all normals and special CLSN boxes
-made P Zetto able to be hit after active and deals no actual dmg (it's a full body burst of invincibility!)
-nerfed jMP hitpausetime
-focus attack startup increased to 8 frames from 1
-added antifuzzy code to air basics
-added more endlag to sMP and sHP
-fixed dizzy on U+K ender
-fixed invalid state 56
-changed Chaotzu specials to D,D+K (attacks now cause pose)
--LK = telekinesis (press F or B during pose for closer or further attack)
--MK = Dodompa
--SK = Shield
-shield speed delayed and slowed down
-meter is now lost when Chaotzu starts before he attacks with shield
-Kikosho no longer + oB. Anim has more recovery time
-Emo exit now only requires LVL1
-Emo exit DMG increases with more emo meter
-Emo exit no longer requires any super meter nor does it take from the super meter


Alex Sin is coding TenShinHan Z2
---------------------------------------------------------------------------------------------------------------------------
Update 09/03/2019
-Added state 5030
-made various changes to override.cns
-changed the way superjumps work
-added the attack delay to air dashes
-modified several CLSN boxes

---------------------------------------------------------------------------------------------------------------------------
Update 09/03/2019

- TenShinHan will not think he's continuing his Volley string if he doesn't hit the enemy but he does their helpers.
Eg Gotenks's ghosts.
- All kicked objects will "bounce on the ground" out of the screen (sound effect).
Added Snake Way in the list of stages where you won't hear a bouncing sound and env.shake.
- Tenshinhan is invincible if he hits with the Shiva's Cage uppercut.
- Tenshinhan is invincible in the retreat animation of the back throws.
- Fixed hitspark problem for the Kikoho (correct position, used explod instead of the sparkno and guard.sparkno parameters in the hitdefs).
- Added Chou Kamehameha fatality behaviour.
- Chiaotzu will react differently to Tien getting disintegrated by Chou Kamehameha.
- Get up animation fixed. Well, it wasn't really wrong before, but I made it all in one anim and state instead of two.
- Changed sounds thanks to Balthazar.
- Recovery command changed to "hold any button".



---------------------------------------------------------------------------------------------------------------------------
Update 17/12/2018

- Now when Tenshinhan is doing any low volleyball attacks, he has the statetype fixed to C (Crouching). 
- Added a red CLSN box on Hunting Crane.
- Crouching attacks don't make infinites (OTG fix).
- Altered state 5020 (now found in override.cns). In all cases TenShinHan should display the low get hit animations while in the air.
- If TenShinHan gets hit by a Cinematic move and Chiaotzu is still doing his action, Chiaotzu will teleport away immediately.
(fixed the telekinesis effect that stayed in the screen for a bit of time)
- Copied and pasted the guard states from PiccoloZ2. You can find them in the override.cns.
- The Z counters now don't give power back.
- j.HK makes the opponent fall down while airborne.
- j.MP makes the opponent fall down when performed after a j.LK or j.LP 
(the j.MK1 and j.MK2 don't make the opponent fall on purpose so you can do more combos).
- Fixed HCF/B explods/commands.
- All palettes added.
- Changed small portrait (courtesy of Toni).
- Chiaotzu's Sacrifice now can be perormed when the OM bar is LVL 2.
- Now Tenshinhan talks (mouth sprites added) in the Forgiveness winpose.
- Now Chiaotzu will use 750 points of power for his moves. I tried to make it so that when the enemy was hurt (in a combo) it would consume 1000, but what about when the enemy is lying down or throwing? It would cause problems.




---------------------------------------------------------------------------------------------------------------------------
Update 08/12/2018

- Time Out when performing Shiva Cage fixed.
- Now if you skip the pre battle for any round when Tenshinhan has the OM mode activated you won't see Chiaotzu.
(It was fixed by making two calling helpers, one without the OM, the other with it)
- Added control in some of the air basics (j.LP, j.MP, j.LK, j.MK)
- Simplified Volley ball stance from hold DF,z to DD,z.
- Added bar for the OM mode.
- Z counter changed from FF, 2 punches or FF, 2 kicks to F, 2 punches or F, 2 kicks.
- Now he can't combo from throws using Kikoho.
- Now Tenshinhan talks (mouth sprites added) in the Students winpose.
- Now Chiaotzu's Dodonpa isn't unguardable when close to the enemy. Also changed how it behaves and it stays longer in the screen.
- When Chiaotzu is out or almost out of screen, the marker with his face will appear on the screen.
This appear only when fighting (no intro / ending).
It will be positioned lower for  P1, higher for P2.
This marker does not appear when: 
_Tenshinhan is on OM mode;
_in the cinematic supers;
_during Chiaotzu's sacrifice.
- Now Telekinesis reset the juggle point for more possible combos.
(sometimes it happened that some attacks whiffed when doing combos and when the Telekinesis connected)
- Inoshikacho intro added.
- AI Done (used Gohan, Normal Vegeta and Piccolo as reference).
- Fixed some ChangeState codes in the throws.



---------------------------------------------------------------------------------------------------------------------------
Update 26/11/2018

- Intro problem (camera) with Chiaotzu fixed.
- Time Out when doing Chiaotzu sacrifice (Exit OM mode) fixed.
- Now Chiaotzu sacrifice (Exit OM mode) uses 2000 of power.
- Chiaotzu: voices in the intro. They will be removed if you skip them.
- "Hold!" screams Tien as Chiaotzu paralyzes the enemy. I mean, that's what I added to the character.
He can't talk when Chiaotzu is going to do Telekinesis.
- Time Out when doing Ungrounded fixed.
- Lowered the explosion sound volume of the LVL 2 finisher (last Dodonpas).
- LVL Markers OM mode added.
- Hop! (Volleyball serve) infinite removed.
- Now he can't guard when dashing back (ground).
- Removed screenbound for all of Chiaotzu's actions. (test) How do you feel about this?


---------------------------------------------------------------------------------------------------------------------------
Update 20/11/2018


- Throw tech done.
NOTE: All Character that choose the dash collision tech are bugged. Not only Tenshinhan, but everyone.
To fix that, you'll have to use a SelfState for the statedef 899 instead of a ChangeState, since it's against Z2 characters.
- Camera effect for the big objects lowered a bit.




---------------------------------------------------------------------------------------------------------------------------
Update 11/11/2018

- Now TenShinHan uses one finger for the Dodonpa lvl 1, 2 fingers for the Dodonpa lvl 2.
- Added "big fish" (shaking) and "shark" (chewing) sound.
- Added camera effect for the big objects.
- Explod Buffer done.
- Removed Funimation voices, added custom voices.
TenShinHan = Mike Varker
Chiaotzu = Jared J. Lee (Alpha Proto)










---------------------------------------------------------------------------------------------------------------------------
Update 04/11/2018

- Added voices for his basic attacks.
- Increased volume for the Dodonpa voice clips.
- Added intro and winpose voices.
- Crane stance (QCF + kick) now isn't an attack: changed MoveType from Attack to Idle so that the enemy doesn't guard for no reason.
- Wings can make the opponent stand (forcestand = 1).
- Finisher LVL 3 (Shin Kikoho): no music plays when the enemy is defeated.
- Dying scream added.
- Aura charge voice clip added.
- Added guard damage to Hunting Crane.
- Added very small stage compatibility with Tien's "object kicking" intro. If you're on these stages:
"Korin's Tower"
"Neko Majin s gathering"
"Kami's Lookout"
"Kami's Lookout (Eclipse)"
"Space"
you won't hear the object bouncing/hitting the ground after it falls.
- Added many submissions from the Tien kicking intro contest, all thanks to the guys in the HDBZ Discord and Mugen Guild.
- The start of J.LP is faster, now it's easier to combo. (from 9 ticks to 6)
- Dodonpa now uses one finger at the start-up (thanks Toni). The old frame is still in the .sff.
- Fixed shading for the Flip KO animation sprites.

Buffer is what you're waiting for. I've implemented it for the most part, now the only thing missing is adding it for Chiaotzu, the specials and the supers.



---------------------------------------------------------------------------------------------------------------------------
Update 26/09/2018


- OM points: from 60 OM points (20-40-60) to 90 (30-60-90).
- Now when doing OM attacks, the character flashes; this tells you OM points are added:
3 points for basics and specials;
7 points for taunts.


---------------------------------------------------------------------------------------------------------------------------
Update 16/09/2018

- Dodonpa charge (Finisher 2) sound changed.
- Spiral Kick coded.
Two versions: one during the Talons combo, one for the pose (OM mode).
Command: Up + any kick button.
And yes, it hits Gotenks.

- Added some graphical effects for the Finisher 3 - Shin Kikoho, now he'll have some electric charges around. It seemed too empty before.

- Ripping off shirt&pants coded. Two versions, one with and one without polka dots.
It may happen when you have your life lower than 300 points.

- Added Giran and Veku as objects for the object kicking intro.

- Fixed OTG bug. Changed states 5100 and 5110 to be redirecting states and added states 5102 and 5111 (which were the previous 5100 and 5110), so Krillin's forward throw bug doesn't happen anymore.
You could mash buttons to recover much faster/becoming invincible, which is a Mugen built-in characteristic.

- Stupid oversight, finishers don't give power back to Tien now.

- Removed voice choice in the config.txt file, I don't care if you want it back. It's not going to happen.
The new voices still have to be added in the correct places though and I'll have to replace the old ones.
Get hit voices are already in there.

- OM point system implemented.
3 points for each target combo hit (it must hit), 7 for each pose (QCF, any kick; directional buttons+start).
Needs further testing.





---------------------------------------------------------------------------------------------------------------------------
Update 29/08/2018

- Winpose: "ripping off shirt" added.
- Winpose: "Shalom pose" added
- Ungrounded now can be used in a combo.
- Ungrounded is faster and can hit Buu while he walks forward Tien.
- Shin Kikoho finished, added M.Vegeta's ground for the winpose. It'll look terrible in the Mountain Road stage, but who cares.
- Added up + punch for Talons rekka.
- Ungrounded can't be done in team mode and/or against saibamen. Same for the OM mode activation.
- Chiaotzu should move a bit better when close to Tien.




---------------------------------------------------------------------------------------------------------------------------
Update 13/08/2018

- Finisher 2 (Double Dodonpa) coded.
- Volleyball intro (with volleyball sprites made by me) coded.
- Meditation intro (with Chiaotzu meditating sprites by me) coded.
- Various fixes all around.
- OM bar started. For now you can get levels just by doing the first s.LP.

Sorry, I haven't written everything, so I may forget some stuff.



---------------------------------------------------------------------------------------------------------------------------
Update 31/07/2018

- Finalized the Finisher 1 - Volleyball Smackdown with sounds and fixes all around.
- After Ungrounded it shouldn't be possible to activate the OM mode otherwise the enemy will get dizzy - fixed.
(actually it would be very very hard to do, but to be sure...)

- Chiaotzu's position when he leaves must be off-screen (always) - adjusted.
- Hover mode must be done only once per combo - done.
- Chiaotzu shouldn't be able to go into the self destruct state after the Ungrounded move. Also the position for the self destruction move. - done
- Change Tien's reaction for self-destruction - done.
- Nico: "by pressing f+medium kick at the start of hover mode he'll 'stand' on air" - fixed.
- Cinematic reaction for Chiaotzu - teleport - added. Used Tien's effects for now.



---------------------------------------------------------------------------------------------------------------------------
Update 22/07/2018

- Changed Shiyoken sprites to the new updated ones.
- Corrected Chiaotzu's sprite priority when he leaves.
- Started Volleyball match (15-07-2018)
Finished Volleyball match (22-07-2018)
- Implemented throw tech for the forward throw, so buggy!!! So for now it's commented and it won't be used.
- Air dashes modified even more so that if you hold the forward/back button you can fly more. (OM mode)
- Added other 4.5 and 5.0 fixes to Tien.





List of things to do:

- juggle system

triggerall = Var(18) <= 15
finished for specials
JNP: put it at 55 instead for specials.
Done.

This has to be done for supers too. (maybe?)



- Check for infinites, bugs.
- Explod-sive buffering.
- Create the OM mode system.
- Code the other finishers.








---------------------------------------------------------------------------------------------------------------------------
Update 24/06/2018

- Ungrounded: aerial start-up animation fixed.
- Ungrounded: whoosh sound effect for knee attack changed.
- Ungrounded: air version sends his clones downwards instead of upwards. They'll teleport near the floor level.
- Added Master Shen and Sonic to the Meditation intro (Sonic removed for the moment). Also changed Shen's hair colour to blue to be more accurate.
- Coded Chiaotzu's Sacrifice (OM mode exit move).
- Tien will walk in the middle of the screen for all intros.
- Air dashes will cover more space in OM mode.
- Chiaotzu's shield move will behave differently now.
DD, 2 punches: Chiaotzu will go after the enemy and cast his shield.
- Goku's Bicycle Kick can now work normally against Tien. (the problem was that the animation 5100 wasn't 9 ticks long)
- Changed Hover Mode to a+b+c.
- It's possible to go into Hover mode with a lot of basic attacks, even specials in some cases.



---------------------------------------------------------------------------------------------------------------------------
Update 10/06/2018

Fixed:
- Tien bug: Tien could be hit after Ungrounded has ended and he landed on the ground.
- Tien bug: problem with Gotenks's ghosts (and similar cases).
- Added panting animation for death by Kikoho.
- "Fixed" trip behaviour against any character (especially Gotenks's SSJ3 c.HP).
- Added air version of Ungrounded.
- Added hitsparks for Shiva's Cage.
- Added sound effect for second Meditation intro (characters, thought sound).
- Aura charge poweradd starts when he's actually charging ki.
- Added worried expressions for Chiaotzu when Tien has 300 or less points of health.
- Midnight Bliss sprite drawn by Daeron added and updated by me.
- Start of Finisher lvl 1. When in Emo mode, after Ungrounded, the enemy will get up and go into the tired/dizzy state. Of course the move is not yet coded, but I started coding a possible custom state.
- Second intro for Chiaotzu added (tongue).
- Chiaotzu comes back after the move Ungrounded ended. (not finished)
- Started coding Chiaotzu's Sacrifice.




---------------------------------------------------------------------------------------------------------------------------
Update 20/05/2018

- c.HK CLSN adjusted so it can hit small characters, like Gotenks. Hitspark position fixed.
- c.LP CLSN adjusted so it can hit small characters, like Gotenks. Hitspark position fixed.
- Changed the forward throw CLSN to have a little less range. I wouldn't want to mess that up though.
If anyone's going to ask, the back throw attempt CLSN is like that on purpose: if I had it look the same as the s.LK (close) it would have had too much range and so the forward throw would've been basically useless.
- Fixed landing state from getting up state: nothitby missing, now it's added.
- Added some flair to the Students winpose. (full screen effect, sound effect)
- Width for standing, stand to crouch and crouching states.
- Removed s. back HK.
- Removed "mash punch button" Shiyoken.
- Reduced amount of ticks for jump start animation.
- Removed ability to charge power while the enemy is paralyzed.
- Made sure Chiaotzu can't do more than one action per combo.  [var(10) for Chiaotzu only]
- Fixed wrong colours in Chiaotzu's skin.
- Juggle points on basic attacks fixed. (7 for standing and crouching, 2 for aerial attacks; custom juggle system, like in Piccolo) var(18)
- Added invulnerability to Super Wings Attack.
- Added Meditation elements. He uses the same state but will show them randomly.
- Changed get hit animations for aerial basic attacks (all attacks will use the "Low" get hit while in the air).
- Tien will be able to do two aerial combos.
- Changed frame data for basic attacks.
- Changed Levitation command from UU (Up, Up) to QCB_p (D,B, any punch). Also possible on ground.
- Jump start from 4 frames to 3.
- Juggle points maxed out during throw.



---------------------------------------------------------------------------------------------------------------------------
Update 23/04/2018

- Chiaotzu winpose (waving hand) added.


---------------------------------------------------------------------------------------------------------------------------
Update 22/04/2018

- Changed sprites for Crane stance (fighting, not winpose).
- Costume intro finished.
- Students winpose finished (beta).
- Crane stance has its own state  (also it's a bit slower).
Change command to QCF, any kick button.
Follow up attacks: F+punch (Energy attack); F+kick (overhead attack). This is also possible after the Talons rekka.
- Changed Ungrounded command to QCBx2, any kick. Changed final hits and some hitsounds.
- Changed custom state lying on ground time for OM mode back throw.
- Chiaotzu comes back after Ungrounded (still buggy).
- Ungrounded costs Lvl2 when in Emo mode and Lvl3 outside.
- Ungrounded doesn't give back power.
- Transition from intro to stand given to Chiaotzu.

Found bug: s.HK in the corner -> Dodonpa lvl 1 (lvl 2 too?) -> beam isn't bound to Tien. This is because of the pushback the heavy kick causes.





---------------------------------------------------------------------------------------------------------------------------
Update 15/04/2018


(Bravery mode => OM mode)
- Fixed AssertSpecial for Backbreaker.
- Backbreaker uses the Z2 broken back standard animation for Z2 characters. Needs testing for all characters.
- Backbreaker makes Tien jump instead of teleporting (first concept).
- (RawkHawk's ideas) Added cancelability: after Talons, you can go into Volley stance.
- (RawkHawk's ideas) Added Crane stance (Down, Down, Down); also after any standing attack you can go into Crane stance.

- Edited Ungrounded more. Used Gohan's Masenko charge FX as hitsparks, made it so you can only hear one hitsound and see one hitspark. Finished for the time being.
FOR THE MOMENT Ungrounded uses the D,D,y+b command and you can use it to cancel the Emotion mode.
We know it's not going to be like that, but we'll have to decide its new input.

- Added comboability: Shiyoken (mash punch buttons) can be done after any non-aerial basic attack. Still pondering on whether or not it could be useful or cool, or not...



- Fixed bounce custom state redirection for a.HP.
- Added comboability: Air Hunting Crane (also EX version) can be done after any aerial attack.
- The Dodonpas' damage dampener has been edited a bit.
- Changed big portrait.
- Added Chiaotzu's sprites: Self Destruction, get hits 2.
- Added Tien's sprites: Shin Kikoho.




---------------------------------------------------------------------------------------------------------------------------
Update 02/04/2018

- (Bravery mode) Shiyoken (button mashing) is easier to do.
- Clothing intro started.
- Fixed shading for 5070,10 and 5070,20. Now they get light from above, like they should.
- (only available for Bravery mode) Back breaker coded. Command = D,D, 2 punches.
- (only available for Bravery mode) Back breaker can be cancelled from Shiyoken after 13 hits and before 18 hits (of Shiyoken, of course).
- Changed Z Counter - punch.
- Changed VelSets for the aerial medium kicks. Hopefully they'll make the combos easier to perform.
- Coding Ungrounded Lvl 3. Not finished. If you want to test it, have 3 bars of power and press Start.





---------------------------------------------------------------------------------------------------------------------------
Update 4/03/2018

- Focus attack effects sprite priority fixed.
- Added frame for Volleyball Fist.
- (only available for Bravery mode) Solar Flare coded. Command's the same as Chiaotzu's telekinesis.
- (only available for Bravery mode) Buddha's Rise (up a.HP) coded.
- (only available for Bravery mode) Wings are now Bravery mode only.
- (only available for Bravery mode) Fast Shiyoken added. Keep pressing the punch buttons. The buttons you choose determines the initial distance Tien covers and the speed of the attacks.
- Tweaked the back throw for the Bravery mode.
- Fixed bug: if Tien is moved by p2 while shooting a Dodonpa, the beam isn't bound to Tien.
- Bravery Mode activation looks better than before now. Tien now talks and Chiaotzu doesn't show any bug: if he's doing an action, he'll finish and then he goes away. Everything shall need some tweakings of course, but yeah.







---------------------------------------------------------------------------------------------------------------------------
Update 11/02/2018

- Added palettes made by the guys in the HDBZ channel;
AgentofDestiny, NinjaCapybara, likiji123, EthanTheHuman
- Fixed Chiaotzu movement states yet again! 
- Bug reported by RawkHawk fixed: hitting the enemy with the EX Hunting Crane while paralyzed by Chiaotzu would put the enemy in a custom state in the air.
- Volleyball fist y values altered (lowered) for the "Save!!" and "Serve!!".
- Cheap KO added.
- Chiaotzu reacts to Cheap KO / Time Over.
- Cursed form sprites-animations added.
- Chiaotzu's reaction sprites (Tien is defeated) added. Started coding it, but I think I still have some problems in certain specific cases. This shall need extensive testing.
- Bravery mode activation. Very buggy.




---------------------------------------------------------------------------------------------------------------------------
Update 7/01/2018.

- Dizzy stars are now bound to Tien.
- Chiaotzu's shield sound changed.
- Chiaotzu is now correctly aligned.
- Shiyoken/Four Arms technique changed to level 1 supermove, also sprites changed.
- The Shield move (Chiaotzu) now tracks Tien and tries to defend him.
- Chiaotzu's basic movement states should be fixed.
- Kikoho helper speed fixed. It can be decided with the button you press (light, medium or hard punch)
- The Volleyball Spike will make Tien jump normally towards the enemy, if the enemy jumps Tien will attack.
- Sprites colour separated.
Tien and Chiaotzu's soles don't share the same colours as Tien's shirt.
The teeth and the sclera colours are not shared.
Chiaotzu's eyelines and eyebrows don't share colours with the hat/shoes.
- All palettes updated. Added palette 23.

Also started on the level 3 (clones) but nothing much is really done. I need the sprites to proceed, so it's not available.


---------------------------------------------------------------------------------------------------------------------------
Update 30/11/2017.

- Lose pose added.
- Volleyball Fist (special) now can be done in three separate ways.
You can start with Save!!! and do the others, or start with Serve!!! and end with Spike!!!, or you can just do the Spike!!! attack.
You can fool the enemy with this new tool! :D
The commands are the same:
D+z = Save!!!
z   = Serve!!!
U+z = Spike!!!
- The Volleyball Fist stance has also been sped up.
- Bug from Dodonpa lvl 1 -> lvl2 fixed.

- Hopefully the Dodonpa positioning bug has been fixed.
Instead of directly destroying the helpers, I made them change their state (anim is invisible) and they get removed when the enemy is no longer in a get hit state.
I also removed a BindToRoot / BindToParent present in the helpers.

- Super BG method by JustNoPoint implemented. Use of invisible projectiles with their own ID.

- Shiyoken / Shiva's punishment coded, with sounds ripped from the anime.

- Shield coded.

- Taunt (Tien and Chiaotzu) coded.




---------------------------------------------------------------------------------------------------------------------------
Update 7/11/2017.

- Chiaotzu will pose when you win the game!
- Damage dampener for Kikoho adjusted.
(I forgot to put persistent = 0)

- Dodonpa lvl1 -> dodonpa lvl2 chain now possible.
- Volleyball Fist coded.
DF+z = stance
            -> D+z = Save!!!
                        -> z = Serve!!!
                                     -> U+z = Spike!!!
(it also works on Gotenks!!)

- c.HP sprites updated.
- s.MK -> c.HP/K chain added.
- Weird behaviour with a.HP (custom state) fixed, hopefully.


---------------------------------------------------------------------------------------------------------------------------
Update 3/11/2017.

- CLSNs slightly updated.
- Walk back animation added.
- Kung Fu Palm sound effect changed.
- Dodonpa lvl 2 hitsound changed.
- s.HP close added.
- Chiaotzu's moves will now consume meter (500). No EX PalFX (yellow).
- Kikoho will drain life if you're out of power.
- Chiaotzu will react more if Tien gets hit seven times or more.
- More voices!
- Clone pose updated: Tien walks to the center of the screen, Chiaotzu follows him and poses with him.
- Step sounds added while walking.
- Oversight of mine: the other winposes are enabled.
- Added AssertSpecial so that the mugen doesn't fade to black while Tien poses.

---------------------------------------------------------------------------------------------------------------------------
Update 8/10/2017.

- Added double bounce to Tien's Volleyball Save. This will of course need fixing (the enemy can recover in mid-air).

- Adjusted aura sprites (palette).
If you want to use and/or colour the aura differently use mine! The palette is much more simple and you won't have to worry about shared palettes or stuff like that. Don't take it from Choujin or the other Z2 characters anymore! :D

- Added Chicken block.
- Removed poweradd from all basic attacks.
- Added tall char jump link infinite fix.
- Added poweradd if throw is successful (p1 +180, p2 +35).
- Chiaotzu reacts if Tien gets damaged.
- Focus attack added.
- Dust effect adjusted from explod to helper (I wanted to test something, but I'd better keep it as a helper).
- Clone intro updated. (new sprites)
- Wing attacks can be done one time per combo; if it hits a second time during a combo the enemy falls down, preventing infinites.
- Added palette 21 and 22.
- Fixed link: Buddha's Fist -> F, HP (air).
- LVL2 Dodonpa coded.

---------------------------------------------------------------------------------------------------------------------------
Update 16/09/2017.

- New frame for roll (after Volleyball save - whiff) added.
- Added Aura charge.
- Added c.HP. (???)
- Added stun feature to the KiKoHo. (needs fixing)
- Small Chiaotzu movement fix.



---------------------------------------------------------------------------------------------------------------------------
Update 3/09/2017.

- Added Volleyball Save (F,F,HP)
- All Z Counters do not kill. Chiaotzu's Telekinesis doesn't kill either now.
- Added walk frames (forward, transition frame). Added new run frames (#1 and #5 from the spritesheet).
- Added additional forward grab frame. Adjusted thrown animation.
- Gotenks can't guard the EX Talons last attack. (Gotenks is too small >:( so I increased the ground.hittime and ground.slidetime)
- Added link: Buddha's Fist -> F,F, HP (air) (you can easily do it by just pressing forward and Z, no double tapping F).
- Added big portrait (now there's Chiaotzu!).
- Speaking of Chiaotzu, he now has an intro where he counts 9+1=?; it's still in the early stages, I'll make it look like Goku's taunt.
- Slightly altered the velocities of the first Wing attacks (not the following Wing attacks).
- Dodonpa (Chiaotzu) is now a special, not a super. (mistake in the hitdef fixed)


---------------------------------------------------------------------------------------------------------------------------
Update 20/08/2017.


- Added limiter to EX Hunting Crane (only once per combo, might be bumped up to 2)
- Wings super (Lvl 1) added. QCFx2, any kick
- EX Talons added.
- Talons: kick finisher added.
- Added guard damage values to Wings, Talons, EX Talons, Wings super.
- Back, s.HK added.
- F,F, a.HP added. (I might have to lower the velocity)
- Dash collision bug fixed.
- Chiaotzu: Telekinesis command changed to HCB, any punch. (F,D,B, any punch button)
- Chiaotzu: Telekinesis effects fixed during superpause;
- Chiaotzu: Telekinesis range increased;
- Added Daeron's palettes.
- For the moment the back throw will only have Tien turn regardless of being in the corner or not, I'm trying to find a way to fix it.







---------------------------------------------------------------------------------------------------------------------------
Update 10/08/2017.

- Talons: QCF, any punch (instead of QCB, because of Chiaotzu's Dodompa).
To keep attacking you have to keep pressing QCF, any punch.

- Wings: F,D,DF, any punch
Different distances for each button. EX version included.
(sound effect may have to be changed)

- Get up now has a sound effect.
- Telekinesis got a new hit sound.
- Slightly lowered the red CLSN for a.MK 2.
- Throw bug (combo count) fixed.


---------------------------------------------------------------------------------------------------------------------------
Update 6/08/2017.

- Hover mode from Buddha fist added.
- Dash collision compatibility added.
- New palette added. Also re-organized the palette order a bit (from 7 to 12)
- The forward throw is the default throw. (s.LP + s.LK)
- After s.MKx2, it's now possible to do s.HK, c.HK, c.HP (the latter not being included in the character, the link is already there).
- s.HK is quicker, so it can combo from s/c.MP.
- Air Z Counter (Punch) added.
- Standing Z Counter (Punch/Kick) added.
- Flip KO for Air Z Counter (Kick) added.
- Run forward added.
- Chiaotzu's Telekinesis behaviour fixed. Also you can decide where to attack with it:
light: close to Chiaotzu
medium: a bit farther;
heavy: farthest.




---------------------------------------------------------------------------------------------------------------------------
Update 25/07/2017.

- All cross-chains (combos) should be added.
- Added more stun to a.HK.
- Dodompa (Tien) completed. Together with sound effects and english voices (two voiceclips, Funimation).
- Dodompa (Chiaotzu) completed. Only missing english voice clip.
- Clone winpose added.
- Made sure the forward throw can't be done if previous attacks are guarded.
- After s.MKx2, it's now possible to do s.HP.
- Forward throw bugs have been fixed (if p2 faces the wrong way and gets thrown, there would be position errors).
- Intro (kicks object): anvil rotates when kicked out.
- c.LP, c.MP added.
- Twist KO sprites added.
- Get up sprites added.
- Knee breaker hitsound slightly changed by Balthazar and added in the char's .snd.
- Air-recovery sound effect added.

- Started on Chiaotzu's Telekinesis attack, you can do it with HCF, any punch (B,D,F, x/y/z).





---------------------------------------------------------------------------------------------------------------------------
Update 8/07/2017.

- Chiaotzu's animation problem fixed (sometimes he would get stuck in the flying forward/backward animation). ???
- All required sprites are present in Tien. Only missing get up animation and Twist KO animation.
- s.LP 1, s.LP 2, s.MP close added and coded.
- Winpose 2 - Kung Fu pose added. Also added a gong sound effect.
- Combo chains added/fixed.
- KiKoHo now shows the Super DBZ BG helper when it defeats the enemy.
The KiKoHo will also move with the background if there's environment shake during a superpause, unlike before.
- Dodompa finished. Press Start to check the new Dodompa, use Chiaotzu's to test the old one.
- Some adjustments added to the down a.SP.


---------------------------------------------------------------------------------------------------------------------------
11/06/2017

- Chiaotzu's palette problem is now solved. I just had to summon him one tick later.
- Fall recovery animations added.
- c.HK and s.HP added.
- Chiaotzu's get hit sprites added.
- Changed all StateTypeSet state controllers with AttackDist.
- a.LP added.
- Sprite 5060,10 added.
- Two Chiaotzu winposes added.

---------------------------------------------------------------------------------------------------------------------------
2-4/06/2017

- a.LK, a.HP, c.LK, c.MK, back throw added. I'm particularly happy about the back throw! Ah, also added the ground bounce on a.HP.
- Some Chiaotzu problems regarding his movements are resolved. But please report any you might find.
- I haven't fixed the Dodompa helper sprite priority; I don't know if Chiaotzu has to have a higher sprite priority than Tien while shooting the Dodompa.
Added some sounds for it though, from DragonBall Advanced Adventure.
- Added a new palette.

---------------------------------------------------------------------------------------------------------------------------
20-21/05/2017

- Chiaotzu's winning problems are solved.
- Added a.HP. No ground bounce added.
- First look at the Dodompa: recoloured Freeza's Death Beam sprites, used the same animation, copied the same codes.
No sounds at the moment. Still at early stages.
- Added placeholder changeanim for up and down movements.
This will be deleted in the next versions, I'm going to code and adjust the states for them.



---------------------------------------------------------------------------------------------------------------------------
13/05/2017

- a.HK added (Lineart by deddy95, finished by Balthazar) and coded.
- Fixed minor aesthetic problem with Chiaotzu (he can't be hit, he moves normally now, he doesn't remain stuck in an animation when in the edge of the screen).


---------------------------------------------------------------------------------------------------------------------------
25/04/2017

- Sprite groups 5030, 5031 and 5032 added.


---------------------------------------------------------------------------------------------------------------------------
22/04/2017

- Aerial Z counter added.
- s.LK (close) added.
- Chiaotzu sprites added. I've also started coding him but...




---------------------------------------------------------------------------------------------------------------------------
27/03/2017

- Config.txt added: only palette selection available for the moment.
- Added damage to forward throw: -50
- Increased Kikoho damage from 80 to 150 and from 15 to 50 (when dampened at max). Also fixed damage dampening.
- Added comboability from many standing basic attack to the forward throw (no strong attacks).


---------------------------------------------------------------------------------------------------------------------------
20-26/03/2017

- Throw sprites added.
- Aerial medium kicks added.
- KiKoHo reworked a bit. Still not finished.
- Added forward throw.
- Two new palettes added.





---------------------------------------------------------------------------------------------------------------------------
13/03/2017

- Added new palettes. The palettes are correctly ordered.



---------------------------------------------------------------------------------------------------------------------------
07/03/2017

- Coded Kikoho Lvl 1.



---------------------------------------------------------------------------------------------------------------------------
06/03/2017

- Coded Intro 3- "Training 2".
- Added KiKoHo sprite effects.
- Added tired animation (original sprite by Balthazar, animated by me).
- Added Get hit - low (sprites by Deddy and Balthazar).
- Slightly changed some CLSNs (red collision boxes enlarged to hit Gotenks for medium kicks and strong kick, crouching animation has a smaller blue collision box).



---------------------------------------------------------------------------------------------------------------------------
04/03/2017

- Jump sprites updated (thanks to HQ).
- a.MP coded.
- Added s.MK 1   -> s.MK 2   -> s.MP (3) combo.
- Added "My Toes!" sprites and animation.



---------------------------------------------------------------------------------------------------------------------------
26/02/2017

- Coded Hunting Crane EX. Only on the ground.
- Added some effects, sounds and combos.




---------------------------------------------------------------------------------------------------------------------------
25/02/2017

- s.LK coded, also added chain s.LK -> s.MK.
- Added air back/forward dash sprites and adjusted their animations.
- Added sounds for Levitation - fall down, Levitation - Dash down, Hunting Crane.




---------------------------------------------------------------------------------------------------------------------------
18-19/02/2017

- Started coding Hunting Crane.
- Added jump sprites (they need to be fixed).


---------------------------------------------------------------------------------------------------------------------------
07/02/2017

- Levitation sprites added, adjusted the levitation codes a bit.
- Portrait (9000,2) also added.
- Hitsound for Buddha's Fist edited.
- s.MK 3 hitsound reverted back to a strong hitsound.
- Added/changed swing sound of the first attack of fwd s.MK.





---------------------------------------------------------------------------------------------------------------------------
05/02/2017

- Levitation system started. Press UU (Up direction twice) to float in mid-air, then press Up, Down, Left or Right to move around (dashes).
Levitation sound taken from one of my rips (Dragon Ball Advanced Adventure) that you can get here:
http://spritedatabase.net/file/19184

- Forward and Backward aerial dashes added.

[Note: if you levitate and do a dash, you can't do the dash again; this goes vice versa too, in that if you dash forward/backward you can't levitate, this was done as a balancing feature. It can always be reversed if needed]

- I forgot to write this in the other days, but I already coded the Buddha's Fist attack (down a.HP).
- Added fwd s.MK -> s.HK combo.
- Added s.MP     -> s.MK 1           combo.
- Shocked aura added.
- Added another palette (green dude with purple gi), Tien now has 6 palettes.





---------------------------------------------------------------------------------------------------------------------------
04/02/2017

- Hunting Crane sprites added.
- Crouch guard sprite added.
- Crane winpose added.
- Coded fwd s.MK.
- Coded s.MK 1   -> fwd s.MK attack.
- Added s.MK 1   -> fwd s.MK -> s.HK combo.





---------------------------------------------------------------------------------------------------------------------------
02/02/2017

- s.MK x3 forward coded. No custom state for the moment.
- Added sprites for Stand to Crouch, Crouching and Crouch to Stand animations.
- Added flip knockout sprites and animation.





---------------------------------------------------------------------------------------------------------------------------
31/01/2017

- s.HK and fwd s.HK made into only one state.
- Shocked sprites and anim added.
- Broken back sprites added.
- s.MK x3 forward sprites added.





---------------------------------------------------------------------------------------------------------------------------
29/01/2017

- More sprites added.
- Coded s.MK 1.
- Coded s.MK 2.
- Coded s.MK 3.
- Added s.MP     -> s.MK 1             combo.
- Added s.MK 1   -> s.MK 2   -> s.MK 3 combo.
- Added s.MK 1   -> s.HK               combo.
- Added the boulder sprite to the Intro 1- "Training" and added new sounds.
- Moved the big portrait (9000,1) some pixels down.





---------------------------------------------------------------------------------------------------------------------------
28/01/2017

- Started adding sprites to the .sff.
- Coded s.MP.
- Coded s.HK.
- Coded Intro 1- "Training".
- Added 3 palettes made by me.

















Credits to:
- the Team Z2 for making this a reality;
- altoiddealer for the hovering [offset] coding used in Jailbot.

and many I may have missed.



HyperDBZ content can be found in Mugen Fighters Guild (MFG).
In MFG you can remain up to date with our project and you don't have to see those pesky ads that may give you viruses!


