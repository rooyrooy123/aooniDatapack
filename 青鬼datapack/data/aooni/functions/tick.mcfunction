effect give @a[team=hiroshi,gamemode=!creative] minecraft:weakness 2 250 true
execute at @a[sort=random,limit=1,tag=randomsummonplayer] positioned ~ ~10 ~ run teleport @e[tag=gamestart] ~ ~ ~
effect give @e[tag=gamestart] minecraft:invisibility 2 1 true
execute if entity @e[tag=gamestart] run effect give @a[team=aooni,tag=!taizai] minecraft:strength 2 100 true
execute if entity @e[tag=gamestart] run effect give @a[team=aooni,tag=taizai] minecraft:weakness 2 250 true
execute if entity @e[tag=chuusenn] run execute store result score @e[tag=Timer,limit=1] onikibou if entity @a[scores={chuusennjoin=1..}]
execute if entity @e[tag=chuusenn] run title @a actionbar ["",{"text":"\u73fe\u5728\u306e\u9752\u9b3c\u5e0c\u671b\u8005:","bold":true,"underlined":true,"color":"dark_blue"},{"score":{"name":"@e[tag=Timer,limit=1]","objective":"onikibou"},"bold":true,"underlined":true,"color":"dark_blue"},{"text":"\u4eba","bold":true,"underlined":true,"color":"dark_blue"}]
effect give @a[team=aooni] instant_health 1 1 true
effect give @e[tag=toumei] minecraft:invisibility 3 1 
effect give @e[tag=toumei] minecraft:instant_health 3 1 
#青鬼ニンジン棒
tellraw @a[team=aooni,scores={clickts=1..,aooniitemcool=1..}] [{"text":"クールタイム中...(","color":"dark_gray"},{"score":{"name":"@a[team=aooni]","objective":"aooniitemcool"},"color":"dark_gray"},{"text":")","color":"dark_gray"}]
tp @a[scores={clickts=1..aooniitemcool=..1},team=aooni,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:rouka}}}] @e[name=rouka,limit=1]
execute as @a[scores={clickts=1..aooniitemcool=..1},team=aooni,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:rouka}}}] run function aooni:5kaireset
scoreboard players set @a[scores={clickts=1..aooniitemcool=..1},team=aooni,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:rouka}}}] aooniitemcool 60
tp @a[scores={clickts=1..aooniitemcool=..1},team=aooni,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:hachi}}}] @e[name=hachi,limit=1]
execute as @a[scores={clickts=1..aooniitemcool=..1},team=aooni,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:hachi}}}] run function aooni:5kaireset
scoreboard players set @a[scores={clickts=1..aooniitemcool=..1},team=aooni,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:hachi}}}] aooniitemcool 60
tp @a[scores={clickts=1..aooniitemcool=..1},team=aooni,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:piano}}}] @e[name=piano,limit=1]
execute as @a[scores={clickts=1..aooniitemcool=..1},team=aooni,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:piano}}}] run function aooni:5kaireset
scoreboard players set @a[scores={clickts=1..aooniitemcool=..1},team=aooni,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:piano}}}] aooniitemcool 60
execute at @a[team=aooni,scores={clickts=..1}] run playsound minecraft:entity.enderman.teleport ambient @a[team=aooni,scores={clickts=1..}]
scoreboard players set @a[scores={clickts=1..}] clickts 0
#死亡
effect give @a[tag=shibou] minecraft:saturation 2 10 true
effect give @a[tag=shibou] minecraft:instant_health 2 10 true
effect give @a[scores={death=1..}] minecraft:invisibility 10 1 true
effect give @a[scores={death=1..}] minecraft:resistance 10 200 true
scoreboard players remove @a[scores={death2=0..}] death2 1
scoreboard players remove @a[scores={death3=0..}] death3 1
execute if entity @a[scores={death=1..}] run execute at @a run playsound entity.lightning_bolt.thunder master @a ~ ~ ~ 1.0 1.0
execute if entity @a[scores={death=1..}] run tellraw @a [{"selector":"@a[scores={death=1..}]","color":"dark_blue"},{"text":"は青鬼に倒された","color":"dark_blue"}]
scoreboard players set @a[scores={death=1..}] death2 10
scoreboard players set @a[scores={death=1..}] death3 10
scoreboard players remove @a[scores={death=1..}] zannki 1
tp @a[scores={death2=1..}] @e[name=parkour,limit=1]
execute at @e[name=parkour] run scoreboard players set @a[distance=..3] death 0
clear @a[scores={death2=0..}]
tp @a[scores={zannki=1..,death3=0..}] @e[tag=fukkatu,sort=random,limit=1]
tag @a[scores={zannki=..0,death3=0..}] remove seizonn
tag @a[scores={zannki=..0,death3=0..}] add shibou
execute if entity @a[scores={death2=1..,zannki=1..}] run tellraw @a ["",{"text":"[\u9752\u9b3c] ","color":"dark_blue"},{"selector":"@a[scores={death2=1..,zannki=1..}]","color":"yellow"},{"text":" \u306e\u6b8b\u308a\u6b8b\u6a5f\u306f1\u4ee5\u4e0a\u306a\u306e\u3067\u81ea\u52d5\u5fa9\u6d3b\u3055\u308c\u307e\u3057\u305f\u3002","color":"yellow"},{"text":"(\u6b8b\u308a\u6b8b\u6a5f:","color":"red"},{"score":{"name":"@a[scores={death2=1..,zannki=1..}]","objective":"zannki"},"color":"red"},{"text":")","color":"red"}]
execute if entity @a[scores={death2=1..,zannki=1..}] run say 死亡前に感圧版を獲得していた場合はエンダーチェスト内(場所はHI.Mi.TSU)から感圧版を回収できます。
execute if entity @a[scores={death2=1..,zannki=1..}] run replaceitem entity @a[scores={death2=1..,zannki=1..}] hotbar.4 iron_bars{display:{Name:'{"text":"アイテムロスト対策のためここにアイテムを置かないでください","color":"dark_gray"}',Lore:['{"text":"アイテムロスト対策","color":"dark_gray","bold":true,"italic":false}']}} 1
scoreboard players set @a[scores={zannki=1..,death2=1..}] death2 -1
#人数把握
execute store result score @e[tag=Timer] seizonn if entity @a[team=hiroshi,tag=seizonn]
#脱出
scoreboard players enable @a dassyutusign
tellraw @a[scores={dassyutusign=1..},nbt=!{SelectedItem:{id:"minecraft:tripwire_hook"}}] {"text":"青鬼の鍵を持っていないと脱出できないぞ！","color":"red","bold":true,"italic":false}
scoreboard players set @a[scores={dassyutusign=1..},nbt=!{SelectedItem:{id:"minecraft:tripwire_hook"}}] dassyutusign 0
execute if entity @a[scores={dassyutusign=1..}] run tellraw @a ["",{"text":"[\u9752\u9b3c]","bold":true,"color":"dark_blue"},{"text":" "},{"selector":"@a[scores={dassyutusign=1..}]","bold":true,"color":"gold"},{"text":" \u3055\u3093\u304c","bold":true,"color":"gold"},{"text":"\u9752\u9b3c\u306e\u9928","bold":true,"color":"blue"},{"text":"\u304b\u3089\u8131\u51fa\u3057\u307e\u3057\u305f\uff01\uff01\uff01","bold":true,"color":"gold"},{"text":"\u304a\u3081\u3067\u3068\u3046\u3054\u3056\u3044\u307e\u3059\uff01\uff01\uff01","bold":true,"color":"light_purple"}]
gamemode spectator @a[scores={dassyutusign=1..}]
tag @a[scores={dassyutusign=1..}] add dassyutu
tag @a[scores={dassyutusign=1..}] remove seizonn
execute at @a[scores={dassyutusign=1..}] run summon firework_rocket ~ ~5 ~ {LifeTime:25,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Flight:1,Explosions:[{Type:1,Flicker:1,Trail:1,Colors:[I;11743532],FadeColors:[I;14602026]}]}}}}
scoreboard players set @a[scores={dassyutusign=1..}] dassyutusign 0
schedule function aooni:tick 1t

