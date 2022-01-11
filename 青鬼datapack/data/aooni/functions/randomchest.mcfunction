tag @e[name=randomchest] remove chest0
tag @e[name=randomchest] remove chest1
tag @e[name=randomchest] remove chest2
tag @e[name=randomchest] remove chest3
tag @e[name=randomchest] add chest0
tag @e[name=randomchest,sort=random,limit=6,tag=chest0] add chest1
tag @e[name=randomchest,tag=chest1] remove chest0
tag @e[name=randomchest,sort=random,limit=7,tag=chest0] add chest2
tag @e[name=randomchest,tag=chest2] remove chest0
tag @e[name=randomchest,sort=random,limit=5,tag=chest0] add chest3
tag @e[name=randomchest,tag=chest3] remove chest0
execute at @e[name=randomchest,tag=chest0] run clone 221 31 58 221 31 58 ~ ~ ~ replace
execute at @e[name=randomchest,tag=chest1] run clone 221 32 58 221 32 58 ~ ~ ~ replace
execute at @e[name=randomchest,tag=chest2] run clone 221 33 58 221 33 58 ~ ~ ~ replace
execute at @e[name=randomchest,tag=chest3] run clone 221 34 58 221 34 58 ~ ~ ~ replace

tag @e[name=randomchest2] remove trapchest0
tag @e[name=randomchest2] remove trapchest1
tag @e[name=randomchest2] remove trapchest2
tag @e[name=randomchest2] remove trapchest3
tag @e[name=randomchest2] add trapchest0
tag @e[name=randomchest2,sort=random,limit=4,tag=trapchest0] add chest1
tag @e[name=randomchest2,tag=trapchest1] remove trapchest0
tag @e[name=randomchest2,sort=random,limit=5,tag=trapchest0] add chest2
tag @e[name=randomchest2,tag=trapchest2] remove trapchest0
tag @e[name=randomchest2,sort=random,limit=3,tag=trapchest0] add chest3
tag @e[name=randomchest2,tag=trapchest3] remove trapchest0
execute at @e[name=randomchest2,tag=trapchest0] run clone 219 31 58 219 31 58 ~ ~ ~ replace
execute at @e[name=randomchest2,tag=trapachest1] run clone 219 32 58 219 32 58 ~ ~ ~ replace
execute at @e[name=randomchest2,tag=trapchest2] run clone 219 33 58 219 33 58 ~ ~ ~ replace
execute at @e[name=randomchest2,tag=trapchest3] run clone 219 34 58 219 34 58 ~ ~ ~ replace

