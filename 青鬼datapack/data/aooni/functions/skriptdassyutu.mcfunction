scoreboard players enable @a dassyutusign
execute if entity @a[scores={dassyutusign=1..}] run tellraw @a ["",{"text":"[\u9752\u9b3c]","bold":true,"color":"dark_blue"},{"text":" "},{"selector":"@a[scores={dassyutusign=1..}]","bold":true,"color":"gold"},{"text":" \u3055\u3093\u304c","bold":true,"color":"gold"},{"text":"\u9752\u9b3c\u306e\u9928","bold":true,"color":"blue"},{"text":"\u304b\u3089\u8131\u51fa\u3057\u307e\u3057\u305f\uff01\uff01\uff01","bold":true,"color":"gold"},{"text":"\u304a\u3081\u3067\u3068\u3046\u3054\u3056\u3044\u307e\u3059\uff01\uff01\uff01","bold":true,"color":"light_purple"}]
gamemode spectator @a[scores={dassyutusign=1..}]
tag @a[scores={dassyutusign=1..}] add dassyutu
tag @a[scores={dassyutusign=1..}] remove seizonn
execute at @a[scores={dassyutusign=1..}] run summon firework_rocket ~ ~5 ~ {LifeTime:25,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Flight:1,Explosions:[{Type:1,Flicker:1,Trail:1,Colors:[I;11743532],FadeColors:[I;14602026]}]}}}}
scoreboard players set @a[scores={dassyutusign=1..}] dassyutusign 0