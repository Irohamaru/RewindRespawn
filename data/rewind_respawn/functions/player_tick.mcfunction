execute if entity @s[gamemode=!creative,gamemode=!spectator] run function rewind_respawn:save
execute if score @s DeathTime matches 1.. run function rewind_respawn:rewind
scoreboard players add @s[scores={DeathTime=1..}] DeathTime 1
