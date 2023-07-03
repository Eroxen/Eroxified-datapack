data modify storage eroxified:internal hash.string set from storage eroxified:internal hash.strings[0]
data remove storage eroxified:internal hash.strings[0]

execute store result score i eroxified.internal run data get storage eroxified:internal hash.string
scoreboard players set hash.string eroxified.internal 0

scoreboard players set hash.op eroxified.internal 0
function eroxified:internal/hash/string/loop
execute if score hash.mod eroxified.internal matches 1.. run scoreboard players operation hash.string eroxified.internal %= hash.mod eroxified.internal
data modify storage eroxified:internal hash.strings_hashed append value 0
execute store result storage eroxified:internal hash.strings_hashed[-1] int 1 run scoreboard players get hash.string eroxified.internal

execute if data storage eroxified:internal hash.strings[0] run function eroxified:internal/hash/string/strings_loop