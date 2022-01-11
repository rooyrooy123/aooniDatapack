execute at @a[limit=1,tag=randomsummonplayer] run summon villager ~ ~10 ~ {Silent:1b,Invulnerable:1b,CustomNameVisible:1b,NoAI:1b,Tags:["Timer"],CustomName:'{"text":"Timer","color":"red","bold":true}'}
scoreboard players set @e[tag=Timer] aoonitimer 900
say 青鬼のゲーム時間が900に設定されました。
function aooni:timertp2
