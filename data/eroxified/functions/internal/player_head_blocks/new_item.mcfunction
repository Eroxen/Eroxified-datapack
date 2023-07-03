data modify storage eroxified:internal new_player_head_item set value {}
data modify storage eroxified:internal new_player_head_item.Item set from entity @s Item
data modify storage eroxified:internal new_player_head_item.saved_head_data set value {block_name:"",saved:0b,data:{}}
data modify storage eroxified:internal new_player_head_item.SkullOwner set from storage eroxified:internal new_player_head_item.Item.tag.SkullOwner
data modify storage eroxified:internal new_player_head_item.id set from storage eroxified:internal new_player_head_item.SkullOwner.Name
data modify storage eroxified:internal new_player_head_item.saved_head_data.block_name set from storage eroxified:internal new_player_head_item.SkullOwner.Name
#execute store result score tags eroxified_var run data get storage eroxified:calc Item.tag
data modify storage eroxified:api new_player_head_item set from storage eroxified:internal new_player_head_item
function #eroxified:player_head_blocks/new_item
#execute unless score tags eroxified_var matches 1 run data remove storage eroxified:calc saved_head_data
#execute if score tags eroxified_var matches 1 if data storage eroxified:calc id run function #eroxified:new_player_head_item_broken
execute align x align y align z as @e[type=marker,tag=eroxified.player_head_blocks.marker,dx=0,dy=0,dz=0] at @s run function eroxified:internal/player_head_blocks/despawn_attempt
execute align x align y align z as @e[type=armor_stand,tag=eroxified.player_head_blocks.armor_stand,dx=0,dy=0,dz=0] at @s run function eroxified:internal/player_head_blocks/despawn_attempt
#execute if data storage eroxified:calc {saved_head_data:{saved:1b}} store result score tags eroxified_var run data get storage eroxified:calc saved_head_data.data
#execute if data storage eroxified:calc {saved_head_data:{saved:1b}} if score tags eroxified_var matches 1.. run function eroxified:head/saved_data/save_to_item