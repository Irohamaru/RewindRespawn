#死亡中
spectate @e[tag=RewindRespawn,limit=1,sort=nearest] @s
#tellraw
execute if score @s DeathTime matches 10 run title @s times 10 70 20
execute if score @s DeathTime matches 10 run title @s subtitle ["神は言っている..."]
execute if score @s DeathTime matches 10 run title @s title [""]
execute if score @s DeathTime matches 80 run title @s times 10 70 20
execute if score @s DeathTime matches 80 run title @s subtitle ["ここで死ぬ運命ではないと..."]
execute if score @s DeathTime matches 80 run title @s title [""]
#直近のPosとRotationをセット
function oh_my_dat:please
data modify entity @e[tag=RewindRespawn,limit=1,sort=nearest] Pos set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].RewindRespawn.Pos[-1]
data modify entity @e[tag=RewindRespawn,limit=1,sort=nearest] Rotation set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].RewindRespawn.Rotation[-1]
#90tick～巻き戻す
execute if score @s DeathTime matches 90.. run data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].RewindRespawn.Pos[-1]
execute if score @s DeathTime matches 90.. run data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].RewindRespawn.Rotation[-1]
#復活処理
execute if score @s DeathTime >= @s RespawnTime run function rewind_respawn:respawn
