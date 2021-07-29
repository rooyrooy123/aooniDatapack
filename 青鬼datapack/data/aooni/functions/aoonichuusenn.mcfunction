scoreboard players set @a[scores={dropchuusennjoin=1..}] chuusennjoin 1
scoreboard players set @a[scores={dropchuusennquit=1..}] chuusennjoin 0
scoreboard players set @a[scores={dropchuusennjoin=1..}] dropchuusennjoin 0
scoreboard players set @a[scores={dropchuusennquit=1..}] dropchuusennquit 0
execute unless entity @e[name=gamestart] run replaceitem entity @a[scores={chuusennjoin=1..}] container.4 iron_bars{display:{Name:'{"text":"現在、青鬼を希望しています","color":"dark_blue","bold":true}',Lore:['{"text":"アイテムを捨てると青鬼抽選をキャンセル","color":"yellow"}']}}
execute unless entity @e[name=gamestart] run replaceitem entity @a[scores={chuusennjoin=0}] container.4 soul_lantern{display:{Name:'{"text":"現在、青鬼を希望していません","color":"dark_red","bold":true}',Lore:['{"text":"アイテムを捨てると青鬼抽選に参加","color":"yellow"}']}}
kill @e[type=item]
execute if entity @e[tag=chuusenn,limit=1] run schedule function aooni:aoonichuusenn 4t
