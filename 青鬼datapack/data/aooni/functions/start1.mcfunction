difficulty hard
execute at @a run playsound block.brewing_stand.brew ambient @a
tellraw @a {"text":"=======================\n\u9593\u3082\u306a\u304f\u9752\u9b3c\u3054\u3063\u3053\u3092\u958b\u59cb\u3057\u307e\u3059\u3002\n=======================","bold":true,"color":"dark_red"}
tellraw @a ["",{"text":"\u9752\u9b3c\u306f","bold":true,"color":"dark_blue"},{"text":"[","bold":true,"color":"yellow"},{"selector":"@a[team=aooni]","bold":true,"color":"yellow"},{"text":"]","bold":true,"color":"yellow"},{"text":"\u3067\u3059\uff01","bold":true,"color":"dark_blue"}]
gamemode adventure @a
scoreboard players set @a damage 0
scoreboard players set @a chikaopen 0
scoreboard players set @a 5kaiopen 0
scoreboard players set @a chestopen 0
scoreboard players set @a chikachestopen 0
effect give @a[team=aooni] minecraft:hunger 9 100 true
scoreboard players set @a chuusennjoin -1
schedule function aooni:countdown3 7s
clear @a
