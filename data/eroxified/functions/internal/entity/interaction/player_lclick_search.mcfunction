data modify storage eroxified:internal interactor set from entity @s {}
scoreboard players set #lclick_responder eroxified.internal 0
execute store result score #current_time eroxified.internal run time query gametime

tag @e[type=interaction,tag=eroxified.interaction.lclick_responder,distance=..8] remove eroxified.interaction.lclick_responder
execute as @e[type=interaction,tag=eroxified.interaction,predicate=eroxified:entity/interaction/lclicked,distance=..8] at @s run function eroxified:internal/entity/interaction/verify_lclick

execute if score #lclick_responder eroxified.internal matches 0 run return 0

execute as @e[type=interaction,tag=eroxified.interaction.lclick_responder,distance=..8,limit=1] at @s run function eroxified:internal/entity/interaction/get_lclicked