# summons an item at the executing entity's position
# if the entity is a player, the item's Owner field is set to that player's UUID
# input: item object: /data modify storage eroxified:api item set value {Count:1b,id:"minecraft:stone"}

data modify storage eroxified:internal item set from storage eroxified:api item
function eroxified:internal/item/give