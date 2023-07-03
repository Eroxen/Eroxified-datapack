# this function is referenced in function tag #eroxified:new_player_head_item
# and is ran on every player head item once

execute if data storage eroxified:api new_player_head_item{id:"eroxified.example.sculk_emitter"} run data modify entity @s Item.tag merge value {display:{Name:'{"text":"Sculk Emitter","italic":false}'}}

execute if data storage eroxified:api new_player_head_item{id:"eroxified.example.sculk_blaster"} run data modify entity @s Item.tag merge value {display:{Name:'{"text":"Sculk Blaster","italic":false}'}}