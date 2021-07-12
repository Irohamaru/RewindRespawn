#スコア
scoreboard objectives add DeathTime dummy {"text":"死亡後経過時間"}
scoreboard objectives add RespawnTime dummy {"text":"復活までの時間"}
gamerule keepInventory true
gamerule doImmediateRespawn true

team add RewindRespawn
team modify RewindRespawn collisionRule never
