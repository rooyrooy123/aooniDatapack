clear @a
kill @e[type=item]
tag @a remove chikaget
tag @a remove 5kaiget
title @a title ["",{"text":" \u0020 \u0020","bold":true,"underlined":true,"color":"yellow"},{"text":"\u9752\u9b3c\u3054\u3063\u3053","bold":true,"underlined":true,"color":"blue"},{"text":"\u7d42\u4e86 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 ","bold":true,"underlined":true,"color":"yellow"}]
execute at @a run playsound entity.wither.spawn ambient @a
gamemode spectator @a
kill @e[tag=gamestart]
tellraw @a ["",{"text":"\u9752\u9b3c\u3054\u3063\u3053","bold":true,"underlined":true,"color":"blue"},{"text":"\u7d42\u4e86\uff01\uff01\uff01","bold":true,"underlined":true,"color":"yellow"}]
setblock 39 82 96 minecraft:jungle_planks
setblock 33 82 115 jungle_planks
schedule function aooni:finish2 7s

