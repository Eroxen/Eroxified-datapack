#####################################################################
# referenced in eroxified/tags/functions/player_head_blocks/scan.json
# written by Eroxen
#
# Gets called on any newly placed Player Head that has 'eroxified.' at the start of SkullOwner.Name
# Storage context :
# - eroxified:api :
#   - scan_head :
#     - name : the Player Head's SkullOwner.Name
#     - namespace : 'eroxified.'
#     - id : the Player Head's SkullOwner.Name without 'eroxified.'
#     - (@Nullable) item_used : item that was used to place this head. Count = 1b and does not know Slot.
#####################################################################
execute if data storage eroxified:api place_player_head_block{id:"eroxified.example.sculk_emitter"} unless entity @e[type=marker,tag=eroxified.player_head_blocks.marker,tag=eroxified.example.sculk_emitter,distance=..0.1,limit=1] run summon marker ~ ~ ~ {Tags:["eroxified.player_head_blocks.marker","eroxified.player_head_blocks.marker.new","eroxified.example.sculk_emitter","eroxified.player_head_blocks.particle","eroxified.player_head_blocks.particle.1"],data:{block_name:"eroxified.eroxified.example.sculk_emitter"}}

execute if data storage eroxified:api place_player_head_block{id:"eroxified.example.sculk_blaster"} unless entity @e[type=marker,tag=eroxified.player_head_blocks.marker,tag=eroxified.example.sculk_blaster,distance=..0.1,limit=1] run summon marker ~ ~ ~ {Tags:["eroxified.player_head_blocks.marker","eroxified.player_head_blocks.marker.new","eroxified.example.sculk_blaster","eroxified.player_head_blocks.particle","eroxified.player_head_blocks.particle.025"],data:{block_name:"eroxified.eroxified.example.sculk_blaster"}}