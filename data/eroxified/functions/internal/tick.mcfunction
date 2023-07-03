### modules ###
execute if data storage eroxified:config modules{player_head_blocks:1b} run function eroxified:internal/player_head_blocks/tick


execute as @e[type=item,tag=!eroxified.tracked_item] at @s run function eroxified:internal/item/new