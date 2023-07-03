data modify storage eroxified:internal different set value ""
data modify storage eroxified:internal different set from block ~ ~ ~ SkullOwner.Name
execute if entity @s[type=marker] store success score player_head_blocks.despawn eroxified.internal run data modify storage eroxified:internal different set from entity @s data.block_name
execute if entity @s[type=armor_stand] store success score player_head_blocks.despawn eroxified.internal run data modify storage eroxified:internal different set from entity @s ArmorItems[0].tag.data.block_name