execute at @a[sort=random,limit=1,tag=randomsummonplayer] positioned ~ ~5 ~ run teleport @e[tag=Timer] ~ ~ ~
effect give @e[tag=Timer] minecraft:invisibility 2 1 true
execute if entity @e[tag=gamestart] run effect give @a[team=aooni,scores={food=4..}] minecraft:hunger 3 100 true
effect give @a[team=aooni,scores={food=0..3}] minecraft:saturation 1 1 true
execute at @a if block ~ ~-1 ~ minecraft:white_glazed_terracotta run effect give @a minecraft:jump_boost 1 250 true
execute if entity @e[tag=Timer] run schedule function aooni:timertp2 2t
