tag @s add eroxified.tracked_item

execute if data storage eroxified:config modules{player_head_blocks:1b} if data entity @s Item{id:"minecraft:player_head"} run function eroxified:internal/player_head_blocks/new_item