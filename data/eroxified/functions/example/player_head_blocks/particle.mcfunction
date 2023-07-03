# this function is referenced in function tag #eroxified:placed_head_particle
# and is ran randomly on player heads markers depending on their tags:
# eroxified.player_head_blocks.particle.025: on average every 0.25 seconds (5 ticks)
# eroxified.player_head_blocks.particle.05: on average every 0.5 seconds (10 ticks)
# eroxified.player_head_blocks.particle.1: on average every 1 seconds (20 ticks)
# eroxified.player_head_blocks.particle.2: on average every 2 seconds (40 ticks)
# eroxified.player_head_blocks.particle.5: on average every 5 seconds (100 ticks)
# eroxified.player_head_blocks.particle.10: on average every 10 seconds (200 ticks)
# !eroxified.player_head_blocks.particle.far: if a player is within 32 blocks
# eroxified.player_head_blocks.particle.far: if a player is within 128 blocks

execute if entity @s[tag=eroxified.example.sculk_emitter] run particle minecraft:soul_fire_flame ~ ~0.25 ~ 0.22 0.22 0.22 0 1

execute if entity @s[tag=eroxified.example.sculk_blaster] if score player_head_blocks.direction eroxified.api matches 0 run particle minecraft:soul_fire_flame ^ ^0.25 ^0.2 0 0 -1 0.2 0
execute if entity @s[tag=eroxified.example.sculk_blaster] if score player_head_blocks.direction eroxified.api matches 1 run particle minecraft:soul_fire_flame ^ ^0.25 ^0.2 0.383 0 -0.924 0.2 0
execute if entity @s[tag=eroxified.example.sculk_blaster] if score player_head_blocks.direction eroxified.api matches 2 run particle minecraft:soul_fire_flame ^ ^0.25 ^0.2 0.707 0 -0.707 0.2 0
execute if entity @s[tag=eroxified.example.sculk_blaster] if score player_head_blocks.direction eroxified.api matches 3 run particle minecraft:soul_fire_flame ^ ^0.25 ^0.2 0.924 0 -0.383 0.2 0
execute if entity @s[tag=eroxified.example.sculk_blaster] if score player_head_blocks.direction eroxified.api matches 4 run particle minecraft:soul_fire_flame ^ ^0.25 ^0.2 1 0 0 0.2 0
execute if entity @s[tag=eroxified.example.sculk_blaster] if score player_head_blocks.direction eroxified.api matches 5 run particle minecraft:soul_fire_flame ^ ^0.25 ^0.2 0.924 0 0.383 0.2 0
execute if entity @s[tag=eroxified.example.sculk_blaster] if score player_head_blocks.direction eroxified.api matches 6 run particle minecraft:soul_fire_flame ^ ^0.25 ^0.2 0.707 0 0.707 0.2 0
execute if entity @s[tag=eroxified.example.sculk_blaster] if score player_head_blocks.direction eroxified.api matches 7 run particle minecraft:soul_fire_flame ^ ^0.25 ^0.2 0.383 0 0.924 0.2 0
execute if entity @s[tag=eroxified.example.sculk_blaster] if score player_head_blocks.direction eroxified.api matches 8 run particle minecraft:soul_fire_flame ^ ^0.25 ^0.2 0 0 1 0.2 0
execute if entity @s[tag=eroxified.example.sculk_blaster] if score player_head_blocks.direction eroxified.api matches 9 run particle minecraft:soul_fire_flame ^ ^0.25 ^0.2 -0.383 0 0.924 0.2 0
execute if entity @s[tag=eroxified.example.sculk_blaster] if score player_head_blocks.direction eroxified.api matches 10 run particle minecraft:soul_fire_flame ^ ^0.25 ^0.2 -0.707 0 0.707 0.2 0
execute if entity @s[tag=eroxified.example.sculk_blaster] if score player_head_blocks.direction eroxified.api matches 11 run particle minecraft:soul_fire_flame ^ ^0.25 ^0.2 -0.924 0 0.383 0.2 0
execute if entity @s[tag=eroxified.example.sculk_blaster] if score player_head_blocks.direction eroxified.api matches 12 run particle minecraft:soul_fire_flame ^ ^0.25 ^0.2 -1 0 0 0.2 0
execute if entity @s[tag=eroxified.example.sculk_blaster] if score player_head_blocks.direction eroxified.api matches 13 run particle minecraft:soul_fire_flame ^ ^0.25 ^0.2 -0.924 0 -0.383 0.2 0
execute if entity @s[tag=eroxified.example.sculk_blaster] if score player_head_blocks.direction eroxified.api matches 14 run particle minecraft:soul_fire_flame ^ ^0.25 ^0.2 -0.707 0 -0.707 0.2 0
execute if entity @s[tag=eroxified.example.sculk_blaster] if score player_head_blocks.direction eroxified.api matches 15 run particle minecraft:soul_fire_flame ^ ^0.25 ^0.2 -0.383 0 -0.924 0.2 0