tellraw @a ["",{"text":"[\u9752\u9b3c] ","color":"dark_blue"},{"selector":"@p","color":"yellow"},{"text":" \u3055\u3093\u304c\u5fa9\u6d3b\u3057\u307e\u3057\u305f\uff01","color":"yellow"}]
effect give @p minecraft:invisibility 10 1 true
effect give @p minecraft:resistance 10 200 true
tell @p 死亡前に感圧版を獲得していた場合はエンダーチェスト内(場所はHI.Mi.TSU)から感圧版を回収できます。
tag @p remove shibou
tag @p add seizonn
tp @p @e[tag=fukkatu,sort=random,limit=1]
replaceitem entity @p hotbar.4 iron_bars{display:{Name:'{"text":"アイテムロスト対策のためここにアイテムを置かないでください","color":"dark_gray"}',Lore:['{"text":"アイテムロスト対策","color":"dark_gray","bold":true,"italic":false}']}} 1
execute at @a run playsound entity.cat.ambient master @p ~ ~ ~ 1.0 1.0