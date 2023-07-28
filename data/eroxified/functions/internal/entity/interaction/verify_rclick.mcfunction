scoreboard players set #verified_rclick eroxified.internal 0

execute store result score #interaction_time eroxified.internal run data get entity @s interaction.timestamp 1
scoreboard players operation #interaction_time eroxified.internal -= #current_time eroxified.internal

data modify storage eroxified:internal UUID set from storage eroxified:internal interactor.UUID
execute store success score #different eroxified.internal run data modify storage eroxified:internal UUID set from entity @s interaction.player

execute if score #interaction_time eroxified.internal matches -2..0 if score #different eroxified.internal matches 0 run scoreboard players set #verified_rclick eroxified.internal 1

execute if score #interaction_time eroxified.internal matches ..-3 run data remove entity @s interaction
execute if score #verified_rclick eroxified.internal matches 1 if score #rclick_responder eroxified.internal matches 0 run tag @s add eroxified.interaction.rclick_responder
execute if score #verified_rclick eroxified.internal matches 1 run scoreboard players set #rclick_responder eroxified.internal 1