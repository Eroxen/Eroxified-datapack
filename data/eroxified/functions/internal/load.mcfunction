scoreboard objectives add eroxified.api dummy
scoreboard objectives add eroxified.internal dummy
scoreboard objectives add eroxified.config dummy

scoreboard players set #load.ticked_first_player eroxified.internal 0
function eroxified:internal/math/set_contants

### compatibility ###
data remove storage eroxified:compatibility installed
schedule function eroxified:compatibility/install 1t
schedule function eroxified:compatibility/scan 2t

### config ###
data modify storage eroxified:config previous_modules set from storage eroxified:config modules
data modify storage eroxified:config modules set value {player_head_blocks:0b}