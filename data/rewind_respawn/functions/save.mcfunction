#PosとRotationを保存
function oh_my_dat:please
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].RewindRespawn.Pos append from entity @s Pos
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].RewindRespawn.Rotation append from entity @s Rotation

#安全なら巻き戻す時間を180tickに
#安全でない場合は+延長
scoreboard players add @s RespawnTime 1
execute unless block ~ ~-0.1 ~ #rewind_respawn:no_hitbox unless block ~ ~ ~ lava if data entity @s {HurtTime:0s} unless entity @e[type=#rewind_respawn:enemy,distance=..4] run scoreboard players set @s RespawnTime 180
