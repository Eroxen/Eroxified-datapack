execute if data storage eroxified:internal saved_head_data run data remove storage eroxified:internal saved_head_data
execute if entity @s[tag=eroxified.player_head_blocks.holding_head_with_saved_data] run function eroxified:internal/player_head_blocks/saved_data/trigger_place

execute positioned ^ ^ ^2 align x align y align z positioned ~0.5 ~0.5 ~0.5 as @e[type=marker,tag=eroxified.player_head_blocks.marker,distance=..8] at @s run function eroxified:internal/player_head_blocks/despawn_attempt
execute positioned ^ ^ ^2 align x align y align z positioned ~0.5 ~0.5 ~0.5 as @e[type=armor_stand,tag=eroxified.player_head_blocks.armor_stand,distance=..8] at @s run function eroxified:internal/player_head_blocks/despawn_attempt

execute positioned ^ ^ ^ align x align y align z positioned ~0.5 ~0.5 ~0.5 run function eroxified:internal/player_head_blocks/grid
execute positioned ^ ^ ^1 align x align y align z positioned ~0.5 ~0.5 ~0.5 run function eroxified:internal/player_head_blocks/grid
execute positioned ^ ^ ^2 align x align y align z positioned ~0.5 ~0.5 ~0.5 run function eroxified:internal/player_head_blocks/grid
execute positioned ^ ^ ^3 align x align y align z positioned ~0.5 ~0.5 ~0.5 run function eroxified:internal/player_head_blocks/grid
execute positioned ^ ^ ^4 align x align y align z positioned ~0.5 ~0.5 ~0.5 run function eroxified:internal/player_head_blocks/grid