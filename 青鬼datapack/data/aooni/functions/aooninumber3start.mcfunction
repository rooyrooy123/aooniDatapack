kill @e[tag=chuusenn]
team leave @a
team join aooni @r[sort=random,limit=3,scores={chuusennjoin=1..}]
tellraw @a [{"text":"抽選結果:青鬼は\n","color":"dark_blue","bold":true},{"selector":"@a[team=aooni]","color":"gold","bold":true},{"text":"になりました！","bold":true}]
clear @a
clear @a
clear @a
clear @a
clear @a
clear @a
