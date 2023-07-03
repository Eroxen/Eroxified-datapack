# this function is referenced in function tag #eroxified:placed_head_despawn_attempt
# and is ran periodically on player heads markers to see if the entity should be removed
# if the marker should be removed:
# /scoreboard players set player_head_blocks.despawn eroxified_var.api 1
#
# markers will be automatically removed if:
# - there is no player head at their position
# they have their field data.head_name or ArmorItems[0].tag.data.head_name set and
# this does not match the name of the player head at their location