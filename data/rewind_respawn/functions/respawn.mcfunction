#復活時
execute if entity @s[tag=RespawnAdventure] run gamemode adventure @s
execute unless entity @s[tag=RespawnAdventure] run gamemode survival @s
tag @s remove RespawnAdventure
#エンダーマンkill
kill @e[tag=RewindRespawn,limit=1,sort=nearest]
data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].RewindRespawn
#スコア初期化
scoreboard players reset @s DeathTime
scoreboard players set @s RespawnTime 180
#演出
playsound minecraft:block.glass.break master @s ~ ~ ~ 1 0
playsound minecraft:block.beacon.power_select master @s ~ ~ ~ 1 0
