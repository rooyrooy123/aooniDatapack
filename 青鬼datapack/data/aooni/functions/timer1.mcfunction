scoreboard players set @a[tag=chikaget,scores={chestopen=22}] chikaget2 1
scoreboard players set @a[tag=5kaiget,scores={chikachestopen=16}] 5kaiget2 1
scoreboard players remove @e[tag=Timer] aoonitimer 1
scoreboard players remove @a[team=aooni] aooniitemcool 1
execute if entity @e[tag=gamestart] if entity @a[scores={chestopen=22}] run tag @a[scores={chestopen=22}] add chikaget
execute if entity @e[tag=gamestart] if entity @a[scores={chikachestopen=16}] run tag @a[scores={chikachestopen=16}] add 5kaiget
replaceitem entity @a[tag=chikaget,scores={chikaget2=0}] hotbar.0 polished_blackstone_pressure_plate{CanPlaceOn:["minecraft:ancient_debris"],display:{Name:'{"text":"地下ゲート開放用感圧版","color":"dark_gray","bold":true,"italic":false}'}} 1
replaceitem entity @a[tag=5kaiget,scores={5kaiget2=0}] hotbar.2 warped_pressure_plate{CanPlaceOn:["minecraft:netherite_block"],display:{Name:'{"text":"5階ゲート開放用感圧版","color":"dark_blue","bold":true,"italic":false}'}} 1
execute if entity @e[tag=gamestart] run replaceitem entity @a[team=hiroshi,tag=!chikaget] hotbar.0 iron_bars{display:{Name:'{"text":" ","color":"dark_gray"}',Lore:['{"text":"アイテムロスト対策","color":"dark_gray","bold":true,"italic":false}']}} 1
execute if entity @e[tag=gamestart] run replaceitem entity @a[team=hiroshi,tag=!5kaiget] hotbar.2 iron_bars{display:{Name:'{"text":" ","color":"dark_gray"}',Lore:['{"text":"アイテムロスト対策","color":"dark_gray","bold":true,"italic":false}']}} 1
execute if entity @e[tag=gamestart] if entity @e[tag=Timer,scores={seizonn=0}] run say 生存者が0人になったのでゲームが強制終了されました。
execute if entity @e[tag=gamestart] if entity @a[scores={chikaopen=1..}] run say 地下室への扉が開きました！
execute if entity @e[tag=gamestart] if entity @a[scores={5kaiopen=1..}] run say 5階への道が開きました！
execute if entity @e[tag=gamestart] if entity @e[tag=Timer,scores={seizonn=..0}] run schedule function aooni:finish1 8t
execute if entity @e[tag=gamestart] if entity @a[scores={chikaopen=1..}] run scoreboard players set @a[scores={chikaopen=1..}] chikaopen 0
execute if entity @e[tag=gamestart] if entity @a[scores={5kaiopen=1..}] run scoreboard players set @a[scores={5kaiopen=1..}] 5kaiopen 0
replaceitem entity @a enderchest.0 iron_bars
replaceitem entity @a enderchest.1 iron_bars
replaceitem entity @a enderchest.2 iron_bars
replaceitem entity @a enderchest.3 iron_bars
replaceitem entity @a enderchest.4 iron_bars
replaceitem entity @a enderchest.5 iron_bars
replaceitem entity @a enderchest.6 iron_bars
replaceitem entity @a enderchest.7 iron_bars
replaceitem entity @a enderchest.8 iron_bars
replaceitem entity @a enderchest.9 iron_bars
replaceitem entity @a enderchest.10 iron_bars
replaceitem entity @a enderchest.11 iron_bars
replaceitem entity @a[tag=!chikaget] enderchest.12 air
replaceitem entity @a[tag=chikaget] enderchest.12 polished_blackstone_pressure_plate{CanPlaceOn:["minecraft:ancient_debris"],display:{Name:'{"text":"地下開放用感圧版","color":"dark_gray","bold":true,"italic":false}'}}
replaceitem entity @a enderchest.13 iron_bars
replaceitem entity @a[tag=5kaiget] enderchest.14 warped_pressure_plate{CanPlaceOn:["minecraft:netherite_block"],display:{Name:'{"text":"5階ゲート開放用感圧版","color":"dark_blue","bold":true,"italic":false}'}}
replaceitem entity @a[tag=!5kaiget] enderchest.14 air
replaceitem entity @a enderchest.15 iron_bars
replaceitem entity @a enderchest.16 iron_bars
replaceitem entity @a enderchest.17 iron_bars
replaceitem entity @a enderchest.18 iron_bars
replaceitem entity @a enderchest.19 iron_bars
replaceitem entity @a enderchest.20 iron_bars
replaceitem entity @a enderchest.21 iron_bars
replaceitem entity @a enderchest.22 iron_bars
replaceitem entity @a enderchest.23 iron_bars
replaceitem entity @a enderchest.24 iron_bars
replaceitem entity @a enderchest.25 iron_bars
replaceitem entity @a enderchest.26 iron_bars
schedule function aooni:timer2 20t



