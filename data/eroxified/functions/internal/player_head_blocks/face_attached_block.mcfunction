execute if block ~ ~ ~ player_head run data modify entity @s Rotation set value [0f,90f]
execute if block ~ ~ ~ player_wall_head[facing=north] run data modify entity @s Rotation set value [0f,0f]
execute if block ~ ~ ~ player_wall_head[facing=east] run data modify entity @s Rotation set value [90f,0f]
execute if block ~ ~ ~ player_wall_head[facing=south] run data modify entity @s Rotation set value [180f,0f]
execute if block ~ ~ ~ player_wall_head[facing=west] run data modify entity @s Rotation set value [270f,0f]