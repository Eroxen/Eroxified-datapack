data modify storage eroxified:internal phead.scan_head set value {}
data modify storage eroxified:internal phead.scan_head.name set from block ~ ~ ~ SkullOwner.Name
data modify storage eroxified:internal phead.scan_head.namespace set string storage eroxified:internal phead.scan_head.name 0 10
execute unless data storage eroxified:internal phead.scan_head{namespace:"eroxified."} run return 0
data modify storage eroxified:internal phead.scan_head.id set string storage eroxified:internal phead.scan_head.name 10

# associate head with used item if names match
execute if data storage eroxified:internal phead.context_internal.itemstack_used{associated:0b} run function eroxified:internal/phead/associate_used_item

data modify storage eroxified:api place_player_head_block set from storage eroxified:internal phead.scan_head
function #eroxified:player_head_blocks/scan




# itemstack_used is the literal item stack from player's inventory: contains slot, can have Count over 1
# item always has a count of 1 and can only be associated with 1 placed head
execute if data storage eroxified:internal phead.place_context.itemstack_used run data modify storage eroxified:internal phead.place_context.item set value {Count:1b,id:"minecraft:player_head"}
execute if data storage eroxified:internal phead.place_context.itemstack_used.tag run data modify storage eroxified:internal phead.place_context.item.tag set from storage eroxified:internal phead.place_context.itemstack_used.tag