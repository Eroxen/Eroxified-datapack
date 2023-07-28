advancement revoke @s only eroxified:trigger/rclick_interaction
execute unless score use_interaction_advancements eroxified.config matches 1 run return 0
execute at @s anchored eyes positioned ^ ^ ^4 run function eroxified:internal/entity/interaction/player_rclick_search