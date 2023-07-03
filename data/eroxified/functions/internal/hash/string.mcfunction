execute store result score i eroxified.internal run data get storage eroxified:internal hash.string
scoreboard players set hash.string eroxified.internal 0
scoreboard players set hash.op eroxified.internal 0
scoreboard players set hash.op.0 eroxified.internal 79
scoreboard players set hash.op.1 eroxified.internal 83
scoreboard players set hash.op.2 eroxified.internal 89

execute if score i eroxified.internal matches 1.. run function eroxified:internal/hash/string/loop
execute if score hash.mod eroxified.internal matches 1.. run scoreboard players operation hash.string eroxified.internal %= hash.mod eroxified.internal