# summons a marker with tag eroxified.player_head_blocks.origin at the center of the bottom face of the
# player head, with a Rotation in the direction the head is facing.
# all other origin markers are removed.

kill @e[type=marker,tag=eroxified.player_head_blocks.origin]
execute if block ~ ~ ~ player_head[rotation=0] align y run summon marker ~ ~ ~ {Tags:["eroxified.player_head_blocks.origin"],Rotation:[180.0f,0.0f]}
execute if block ~ ~ ~ player_head[rotation=1] align y run summon marker ~ ~ ~ {Tags:["eroxified.player_head_blocks.origin"],Rotation:[202.5f,0.0f]}
execute if block ~ ~ ~ player_head[rotation=2] align y run summon marker ~ ~ ~ {Tags:["eroxified.player_head_blocks.origin"],Rotation:[225.0f,0.0f]}
execute if block ~ ~ ~ player_head[rotation=3] align y run summon marker ~ ~ ~ {Tags:["eroxified.player_head_blocks.origin"],Rotation:[247.5f,0.0f]}
execute if block ~ ~ ~ player_head[rotation=4] align y run summon marker ~ ~ ~ {Tags:["eroxified.player_head_blocks.origin"],Rotation:[270.0f,0.0f]}
execute if block ~ ~ ~ player_head[rotation=5] align y run summon marker ~ ~ ~ {Tags:["eroxified.player_head_blocks.origin"],Rotation:[292.5f,0.0f]}
execute if block ~ ~ ~ player_head[rotation=6] align y run summon marker ~ ~ ~ {Tags:["eroxified.player_head_blocks.origin"],Rotation:[315.0f,0.0f]}
execute if block ~ ~ ~ player_head[rotation=7] align y run summon marker ~ ~ ~ {Tags:["eroxified.player_head_blocks.origin"],Rotation:[337.5f,0.0f]}
execute if block ~ ~ ~ player_head[rotation=8] align y run summon marker ~ ~ ~ {Tags:["eroxified.player_head_blocks.origin"],Rotation:[0.0f,0.0f]}
execute if block ~ ~ ~ player_head[rotation=9] align y run summon marker ~ ~ ~ {Tags:["eroxified.player_head_blocks.origin"],Rotation:[22.5f,0.0f]}
execute if block ~ ~ ~ player_head[rotation=10] align y run summon marker ~ ~ ~ {Tags:["eroxified.player_head_blocks.origin"],Rotation:[45.0f,0.0f]}
execute if block ~ ~ ~ player_head[rotation=11] align y run summon marker ~ ~ ~ {Tags:["eroxified.player_head_blocks.origin"],Rotation:[67.5f,0.0f]}
execute if block ~ ~ ~ player_head[rotation=12] align y run summon marker ~ ~ ~ {Tags:["eroxified.player_head_blocks.origin"],Rotation:[90.0f,0.0f]}
execute if block ~ ~ ~ player_head[rotation=13] align y run summon marker ~ ~ ~ {Tags:["eroxified.player_head_blocks.origin"],Rotation:[112.5f,0.0f]}
execute if block ~ ~ ~ player_head[rotation=14] align y run summon marker ~ ~ ~ {Tags:["eroxified.player_head_blocks.origin"],Rotation:[135.0f,0.0f]}
execute if block ~ ~ ~ player_head[rotation=15] align y run summon marker ~ ~ ~ {Tags:["eroxified.player_head_blocks.origin"],Rotation:[157.5f,0.0f]}
execute if block ~ ~ ~ player_wall_head[facing=north] align y positioned ~ ~0.25 ~ align z positioned ~ ~ ~0.75 run summon marker ~ ~ ~ {Tags:["eroxified.player_head_blocks.origin"],Rotation:[180.0f,0.0f]}
execute if block ~ ~ ~ player_wall_head[facing=east] align y positioned ~ ~0.25 ~ align x positioned ~0.25 ~ ~ run summon marker ~ ~ ~ {Tags:["eroxified.player_head_blocks.origin"],Rotation:[270.0f,0.0f]}
execute if block ~ ~ ~ player_wall_head[facing=south] align y positioned ~ ~0.25 ~ align z positioned ~ ~ ~0.25 run summon marker ~ ~ ~ {Tags:["eroxified.player_head_blocks.origin"],Rotation:[0.0f,0.0f]}
execute if block ~ ~ ~ player_wall_head[facing=west] align y positioned ~ ~0.25 ~ align x positioned ~0.75 ~ ~ run summon marker ~ ~ ~ {Tags:["eroxified.player_head_blocks.origin"],Rotation:[90.0f,0.0f]}