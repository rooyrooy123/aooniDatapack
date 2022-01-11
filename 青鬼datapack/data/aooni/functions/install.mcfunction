schedule function aooni:tick 1t
schedule function aooni:timerkillspawn 1t
scoreboard objectives add dropchuusennjoin minecraft.dropped:minecraft.soul_lantern
scoreboard objectives add dropchuusennquit minecraft.dropped:minecraft.iron_bars
scoreboard objectives add chuusennjoin dummy
scoreboard objectives add food food
scoreboard objectives add dassyutusign trigger
scoreboard objectives add aoonitimer dummy
scoreboard objectives add death deathCount
scoreboard objectives add aooniitemcool dummy
scoreboard objectives add chestopen dummy
scoreboard objectives add 5kaitaizai dummy
scoreboard objectives add 5kaitimer dummy
scoreboard objectives add seizonn dummy
scoreboard objectives add onikibou dummy
scoreboard objectives add chikachestopen dummy
scoreboard objectives add chikaget2 dummy
scoreboard objectives add 5kaaiget2 dummy
scoreboard objectives add chikaopen minecraft.used:minecraft.polished_blackstone_pressure_plate
scoreboard objectives add 5kaiopen minecraft.used:minecraft.warped_pressure_plate
execute unless entity @e[tag=chuusenn] at @a[limit=1,tag=randomsummonplayer] run summon villager ~ ~100 ~ {Silent:1b,Invulnerable:1b,CustomNameVisible:1b,NoAI:1b,Tags:["chuusenn"],CustomName:'{"text":"chuusenn","color":"red","bold":true}'}
gamerule commandBlockOutput false
gamerule showDeathMessages false
scoreboard objectives add death2 dummy
gamerule keepInventory true
gamerule doMobSpawning false
gamerule maxEntityCramming 0
gamerule spawnRadius 1
gamerule announceAdvancements false
gamerule sendCommandFeedback false
gamerule doImmediateRespawn true
gamerule logAdminCommands false
scoreboard objectives add zannki dummy
