scoreboard players set player_head_blocks.despawn eroxified.api 0
function #eroxified:player_head_blocks/despawn_attempt
scoreboard players operation player_head_blocks.despawn eroxified.internal = player_head_blocks.despawn eroxified.api

execute unless predicate eroxified:player_head_blocks/player_head run scoreboard players set player_head_blocks.despawn eroxified.internal 1
execute if predicate eroxified:player_head_blocks/player_head if entity @s[type=marker] if data entity @s data.block_name run function eroxified:internal/player_head_blocks/despawn_attempt_compare
execute if predicate eroxified:player_head_blocks/player_head if entity @s[type=armor_stand] if data entity @s ArmorItems[0].tag.data.block_name run function eroxified:internal/player_head_blocks/despawn_attempt_compare

execute if score player_head_blocks.despawn eroxified.internal matches 1 run function #eroxified:player_head_blocks/despawn
execute if score player_head_blocks.despawn eroxified.internal matches 1 if data entity @s data{save_data_on_despawn:1b} if data storage eroxified:api {saved_head_data:{saved:0b}} run function eroxified:internal/player_head_blocks/saved_data/save_maybe
execute if score player_head_blocks.despawn eroxified.internal matches 1 run kill @s