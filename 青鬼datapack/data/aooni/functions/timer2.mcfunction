execute at @a[sort=random,limit=1,tag=randomsummonplayer] positioned ~ ~5 ~ run teleport @e[tag=Timer] ~ ~ ~
effect give @e[tag=Timer] minecraft:invisibility 2 1 true
execute if entity @e[tag=Timer,scores={aoonitimer=605..}] run setblock 39 82 96 minecraft:jungle_planks
execute if entity @e[tag=Timer,scores={aoonitimer=605..}] run setblock 39 83 96 minecraft:air
execute if entity @e[tag=Timer,scores={aoonitimer=600}] run function aooni:chikashitukaihou
execute if entity @e[tag=Timer,scores={aoonitimer=305..}] run setblock 33 82 115 jungle_planks
execute if entity @e[tag=Timer,scores={aoonitimer=305..}] run setblock 33 83 115 air
execute if entity @e[tag=Timer,scores={aoonitimer=300}] run function aooni:5kaikaihou
execute if entity @e[tag=Timer,scores={aoonitimer=0}] run function aooni:finish1
execute if entity @e[tag=Timer] run function aooni:timer1
