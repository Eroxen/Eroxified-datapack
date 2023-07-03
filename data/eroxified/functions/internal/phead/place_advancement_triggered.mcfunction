advancement revoke @s only eroxified:trigger/place_player_head

execute at @s rotated as @s anchored eyes positioned ^ ^ ^2 align x align y align z positioned ~0.5 ~0.5 ~0.5 as @e[type=marker,tag=eroxified.player_head_blocks.marker,distance=..8] at @s run function eroxified:internal/player_head_blocks/despawn_attempt
execute at @s rotated as @s anchored eyes positioned ^ ^ ^2 align x align y align z positioned ~0.5 ~0.5 ~0.5 as @e[type=armor_stand,tag=eroxified.player_head_blocks.armor_stand,distance=..8] at @s run function eroxified:internal/player_head_blocks/despawn_attempt

data modify storage eroxified:internal phead.context_internal set value {}
execute if predicate eroxified:phead/head_in_mainhand run data modify storage eroxified:internal phead.context_internal.itemstack_used set from entity @s SelectedItem
execute if predicate eroxified:phead/head_in_offhand run data modify storage eroxified:internal phead.context_internal.itemstack_used set from entity @s Inventory[{Slot:-106b}]
execute unless data storage eroxified:internal phead.context_internal.itemstack_used.tag.SkullOwner.Name run data remove storage eroxified:internal phead.context_internal.itemstack_used
execute if data storage eroxified:internal phead.context_internal.itemstack_used run data modify storage eroxified:internal phead.context_internal.itemstack_used.associated set value 0b

execute at @s rotated as @s anchored eyes positioned ^ ^ ^3 align xyz positioned ~0.5 ~0.5 ~0.5 run function eroxified:internal/phead/scan_cube