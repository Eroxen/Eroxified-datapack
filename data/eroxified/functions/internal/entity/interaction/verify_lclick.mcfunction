scoreboard players set #verified_lclick eroxified.internal 0

execute store result score #attack_time eroxified.internal run data get entity @s attack.timestamp 1
scoreboard players operation #attack_time eroxified.internal -= #current_time eroxified.internal

data modify storage eroxified:internal UUID set from storage eroxified:internal interactor.UUID
execute store success score #different eroxified.internal run data modify storage eroxified:internal UUID set from entity @s attack.player

execute if score #attack_time eroxified.internal matches -2..0 if score #different eroxified.internal matches 0 run scoreboard players set #verified_lclick eroxified.internal 1

execute if score #attack_time eroxified.internal matches ..-3 run data remove entity @s attack
execute if score #verified_lclick eroxified.internal matches 1 if score #lclick_responder eroxified.internal matches 0 run tag @s add eroxified.interaction.lclick_responder
execute if score #verified_lclick eroxified.internal matches 1 run scoreboard players set #lclick_responder eroxified.internal 1