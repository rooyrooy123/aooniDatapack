tellraw @a {"text":"\u30b2\u30fc\u30e0\u3092\u7d42\u4e86\u3057\u307e\u3059\u3002","bold":true,"underlined":true,"color":"yellow"}
team join hiroshi @a
tag @a remove dassyutu
function aooni:timerkillspawn
gamemode adventure @a
teleport @a @e[name=lobby,limit=1,sort=random]
scoreboard players set @a chuusennjoin 0
scoreboard players set @a dropchuusennjoin 0
scoreboard players set @a dropchuusennquit 0
tag @a remove shibou
tag @a add seizonn
tag @a remove chikaget
tag @a remove 5kaiget
setblock 39 82 96 minecraft:jungle_planks
setblock 33 82 115 jungle_planks
execute unless entity @e[tag=chuusenn] at @a[limit=1,tag=randomsummonplayer] run summon villager ~ ~100 ~ {Silent:1b,Invulnerable:1b,CustomNameVisible:1b,NoAI:1b,Tags:["chuusenn"],CustomName:'{"text":"chuusenn","color":"red","bold":true}'}
effect give @s minecraft:saturation 1 100
function aooni:aoonichuusenn

