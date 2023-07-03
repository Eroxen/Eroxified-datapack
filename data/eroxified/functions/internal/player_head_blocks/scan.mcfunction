data modify storage eroxified:internal place_player_head_block set value {}
data modify storage eroxified:internal place_player_head_block.SkullOwner set from block ~ ~ ~ SkullOwner
data modify storage eroxified:internal place_player_head_block.id set from storage eroxified:internal place_player_head_block.SkullOwner.Name
data modify storage eroxified:api place_player_head_block set from storage eroxified:internal place_player_head_block
function #eroxified:scan_placed_head

data modify storage eroxified:internal place_player_head_block.Owner set from entity @s UUID
execute as @e[type=marker,tag=eroxified.player_head_blocks.marker.new] run data modify entity @s data.Owner set from storage eroxified:internal place_player_head_block.Owner
execute as @e[type=armor_stand,tag=eroxified.player_head_blocks.armor_stand.new] run data modify entity @s ArmorItems[0].tag.data.Owner set from storage eroxified:internal place_player_head_block.Owner
execute if data storage eroxified:internal saved_head_data as @e[type=marker,tag=eroxified.player_head_blocks.marker.new,limit=1] run function eroxified:internal/player_head_blocks/saved_data/apply_maybe
execute if data storage eroxified:internal saved_head_data as @e[type=armor_stand,tag=eroxified.player_head_blocks.armor_stand.new,limit=1] run function eroxified:internal/player_head_blocks/saved_data/apply_maybe
execute as @e[type=marker,tag=eroxified.player_head_blocks.marker.new,tag=eroxified.player_head_blocks.marker.new.face_attached_block] at @s run function eroxified:internal/player_head_blocks/face_attached_block
execute as @e[type= armor_stand,tag=eroxified.player_head_blocks.armor_stand.new,tag=eroxified.player_head_blocks.armor_stand.new.face_attached_block] at @s run function eroxified:internal/player_head_blocks/face_attached_block
tag @e[type=marker,tag=eroxified.player_head_blocks.marker.new] remove eroxified.player_head_blocks.marker.new
tag @e[type=armor_stand,tag=eroxified.player_head_blocks.armor_stand.new] remove eroxified.player_head_blocks.armor_stand.new