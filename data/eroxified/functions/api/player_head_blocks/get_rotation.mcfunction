# sets field rotation to the Rotation that the head is facing
# /data modify storage eroxified:api rotation set value [0f,0f]

execute if block ~ ~ ~ player_head[rotation=0] run data modify storage eroxified:api rotation set value [180.0f,0.0f]
execute if block ~ ~ ~ player_head[rotation=1] run data modify storage eroxified:api rotation set value [202.5f,0.0f]
execute if block ~ ~ ~ player_head[rotation=2] run data modify storage eroxified:api rotation set value [225.0f,0.0f]
execute if block ~ ~ ~ player_head[rotation=3] run data modify storage eroxified:api rotation set value [247.5f,0.0f]
execute if block ~ ~ ~ player_head[rotation=4] run data modify storage eroxified:api rotation set value [270.0f,0.0f]
execute if block ~ ~ ~ player_head[rotation=5] run data modify storage eroxified:api rotation set value [292.5f,0.0f]
execute if block ~ ~ ~ player_head[rotation=6] run data modify storage eroxified:api rotation set value [315.0f,0.0f]
execute if block ~ ~ ~ player_head[rotation=7] run data modify storage eroxified:api rotation set value [337.5f,0.0f]
execute if block ~ ~ ~ player_head[rotation=8] run data modify storage eroxified:api rotation set value [0.0f,0.0f]
execute if block ~ ~ ~ player_head[rotation=9] run data modify storage eroxified:api rotation set value [22.5f,0.0f]
execute if block ~ ~ ~ player_head[rotation=10] run data modify storage eroxified:api rotation set value [45.0f,0.0f]
execute if block ~ ~ ~ player_head[rotation=11] run data modify storage eroxified:api rotation set value [67.5f,0.0f]
execute if block ~ ~ ~ player_head[rotation=12] run data modify storage eroxified:api rotation set value [90.0f,0.0f]
execute if block ~ ~ ~ player_head[rotation=13] run data modify storage eroxified:api rotation set value [112.5f,0.0f]
execute if block ~ ~ ~ player_head[rotation=14] run data modify storage eroxified:api rotation set value [135.0f,0.0f]
execute if block ~ ~ ~ player_head[rotation=15] run data modify storage eroxified:api rotation set value [157.5f,0.0f]
execute if block ~ ~ ~ player_wall_head[facing=north] run data modify storage eroxified:api rotation set value [180.0f,0.0f]
execute if block ~ ~ ~ player_wall_head[facing=east] run data modify storage eroxified:api rotation set value [270.0f,0.0f]
execute if block ~ ~ ~ player_wall_head[facing=south] run data modify storage eroxified:api rotation set value [0.0f,0.0f]
execute if block ~ ~ ~ player_wall_head[facing=west] run data modify storage eroxified:api rotation set value [90.0f,0.0f]