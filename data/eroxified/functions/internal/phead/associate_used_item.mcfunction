data modify storage eroxified:internal phead.scan_head.compare set from storage eroxified:internal phead.scan_head.name
execute store success score #different eroxified.temp run data modify storage eroxified:internal phead.context_internal.itemstack_used.tag.SkullOwner.Name

execute if score #different eroxified.temp matches 1 run return 0

# mark the used itemstack as associated, so the same data cannot be applied twice
# if multiple heads with the same name are somehow present
data modify storage eroxified:internal phead.context_internal.itemstack_used.associated set value 1b

data modify storage eroxified:internal phead.scan_head.item_used set value {Count:1b,id:"minecraft:player_head"}
data modify storage eroxified:internal phead.scan_head.item_used.tag set from storage eroxified:internal phead.context_internal.itemstack_used.tag