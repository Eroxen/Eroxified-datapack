execute at @s run summon item ~ ~ ~ {Tags:["eroxified.new_item"],Item:{id:"minecraft:stone",Count:1b}}
execute at @s run data modify entity @e[type=item,tag=eroxified.new_item,distance=..1,limit=1] Item set from storage eroxified:internal item
execute at @s run execute if entity @s[type=player] run data modify entity @e[type=item,tag=eroxified.new_item,distance=..1,limit=1] Owner set from entity @s UUID
execute at @s run tag @e[type=item,tag=eroxified.new_item,distance=..1] remove eroxified.new_item