#死亡時
#憑依用のエンダーマン召喚
summon enderman ~ ~ ~ {Tags:[RewindRespawn],NoAI:1b,Silent:1b,Invulnerable:1b,Team:"RewindRespawn",DeathTime:19s,DeathLootTable:"minecraft:empty"}
#ゲームモードを保存しスペクテイターに
execute if entity @s[gamemode=adventure] run tag @s add RewindRespawnAdventure
gamemode spectator @s
spectate @e[tag=RewindRespawn,limit=1,sort=nearest] @s
#死亡時間のスコアカウント開始
scoreboard players set @s DeathTime 1
#トリガー解除
advancement revoke @s only rewind_respawn:death
#スポーンポイントをセット
spawnpoint @s ~ ~ ~
#演出
playsound minecraft:block.portal.trigger master @s ~ ~ ~ 1 0
