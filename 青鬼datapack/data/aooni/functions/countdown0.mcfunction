title @a title {"text":" \u0020 Start \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 ","bold":true,"underlined":true,"color":"yellow"}
execute at @a run playsound entity.experience_orb.pickup ambient @a ~ ~ ~ 1 2
teleport @a[team=!aooni] @e[limit=1,tag=spawn]
scoreboard players set @a zannki 4
tag @a remove shibou
tag @a add seizonn
tag @a remove chikaget
tag @a remove 5kaiget
scoreboard players set @a 5kaitimer 0
scoreboard players set @a 5kaitaizai 0
scoreboard players set @a chikaget2 0
scoreboard players set @a 5kaiget2 0
setblock 39 82 96 minecraft:jungle_planks
setblock 33 82 115 jungle_planks
clear @a
function aooni:timer0
team join hiroshi @a[team=!aooni]
effect give @a[team=!aooni] minecraft:saturation 1 10 true
effect give @a[team=!aooni] minecraft:hunger 10 100
function aooni:randomchest
execute at @a run playsound entity.lightning_bolt.thunder master @a ~ ~ ~ 1.0 1.0
replaceitem entity @a[team=!aooni,tag=!chikaget] hotbar.4 iron_bars{display:{Name:'{"text":"アイテムロスト対策のためここにアイテムを置かないでください","color":"dark_gray"}',Lore:['{"text":"アイテムロスト対策","color":"dark_gray","bold":true,"italic":false}']}} 1
schedule function aooni:aoonigo 30s

