data modify storage eroxified:internal interactor set from entity @s {}
scoreboard players set #rclick_responder eroxified.internal 0
execute store result score #current_time eroxified.internal run time query gametime

tag @e[type=interaction,tag=eroxified.interaction.rclick_responder,distance=..8] remove eroxified.interaction.rclick_responder
execute as @e[type=interaction,tag=eroxified.interaction,predicate=eroxified:entity/interaction/rclicked,distance=..8] at @s run function eroxified:internal/entity/interaction/verify_rclick

execute if score #rclick_responder eroxified.internal matches 0 run return 0

execute as @e[type=interaction,tag=eroxified.interaction.rclick_responder,distance=..8,limit=1] at @s run function eroxified:internal/entity/interaction/get_rclicked