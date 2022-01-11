schedule function aooni:timer1 20t
schedule function aooni:timertp 1t
execute unless entity @e[tag=Timer] at @a[limit=1,tag=randomsummonplayer] run summon villager ~ ~10 ~ {Silent:1b,Invulnerable:1b,CustomNameVisible:1b,NoAI:1b,Tags:["Timer"],CustomName:'{"text":"Timer","color":"red","bold":true}'}
execute at @a[limit=1,tag=randomsummonplayer] run summon villager ~ ~10 ~ {Silent:1b,Invulnerable:1b,CustomNameVisible:1b,NoAI:1b,Tags:["gamestart"],CustomName:'{"text":"gamestart","color":"red","bold":true}'}
scoreboard players set @e chikaopening 0