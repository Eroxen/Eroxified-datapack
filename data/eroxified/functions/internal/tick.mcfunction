### load ###
execute if score #load.ticked_first_player eroxified.internal matches 0 as @a[limit=1] at @s run function eroxified:internal/load/tick_first_player


### modules ###
execute if data storage eroxified:config modules{player_head_blocks:1b} run function eroxified:internal/player_head_blocks/tick


execute if score use_interaction_advancements eroxified.config matches 0 run function eroxified:internal/entity/interaction/player_search_tick
execute as @e[type=item,tag=!eroxified.tracked_item] at @s run function eroxified:internal/item/new