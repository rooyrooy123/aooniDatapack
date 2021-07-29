scoreboard players add @a[scores={5kaitaizai=1..},team=aooni] 5kaitimer 1
execute if entity @a[team=aooni,scores={5kaitaizai=1..,5kaitimer=180..}] run tag @a[team=aooni,scores={5kaitaizai=1..,5kaitimer=180..}] add taizai
execute if entity @a[team=aooni,scores={5kaitaizai=1..,5kaitimer=180}] run say @a[team=aooni,scores={5kaitaizai=1..,5kaitimer=180}] (鬼)が5階に居続けたので攻撃できなくなりました。
effect clear @a[team=aooni,scores={5kaitaizai=1..,5kaitimer=180}]
schedule function aooni:5kaitaizai 20t