replaceitem entity @a[team=aooni] armor.head player_head{Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],SkullOwner:{Id:[I;258569460,-1096268749,-1758311856,-1384472547],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZWVkOGNiNjQwN2NiYmIyNzMxYmU1YjYwNWI0MzJiM2IyYmI3NTY3MjBhM2Y0YTkxMDQ1MjFiOWZlMjA5NmVhNSJ9fX0="}]}}}
replaceitem entity @a[team=aooni] armor.chest leather_chestplate{display:{color:5910783},HideFlags:127,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
replaceitem entity @a[team=aooni] armor.legs leather_leggings{display:{color:5910783},HideFlags:127,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
replaceitem entity @a[team=aooni] armor.feet leather_boots{display:{color:5910783},HideFlags:127,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]}
teleport @a[team=aooni] @e[limit=1,tag=aoonispawntp]
scoreboard players set @a[team=aooni] aooniitemcool 30
execute at @a run playsound entity.ender_dragon.growl master @a ~ ~ ~ 1.0 1.0
tellraw @a {"text":"\u9752\u9b3c\u304c\u9928\u306b\u51fa\u73fe\u3057\u307e\u3057\u305f\u3002","bold":true,"underlined":true,"color":"blue"}
replaceitem entity @a[team=aooni] hotbar.6 carrot_on_a_stick{display:{Name:'[{"text":"ピアノ室(１階)","color":"dark_blue","bold":true,"italic":false},{"text":"に移動する","color":"blue","italic":false}]',Lore:['{"text":"右クリックで実行","color":"dark_gray","italic":false}']},CustomModelData:piano} 1
replaceitem entity @a[team=aooni] hotbar.7 carrot_on_a_stick{display:{Name:'[{"text":"養蜂場(２階)","color":"dark_blue","bold":true,"italic":false},{"text":"に移動する","color":"blue","italic":false}]',Lore:['{"text":"右クリックで実行","color":"dark_gray","italic":false}']},CustomModelData:hachi} 1
replaceitem entity @a[team=aooni] hotbar.8 carrot_on_a_stick{display:{Name:'[{"text":"廊下(３階)","color":"dark_blue","bold":true,"italic":false},{"text":"に移動する","color":"blue","italic":false}]',Lore:['{"text":"右クリックで実行","color":"dark_gray","italic":false}']},CustomModelData:rouka} 1

