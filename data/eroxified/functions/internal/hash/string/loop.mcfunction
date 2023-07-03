scoreboard players add hash.op eroxified.internal 1
execute if score hash.op eroxified.internal matches 3.. run scoreboard players set hash.op eroxified.internal 0
execute if score hash.op eroxified.internal matches 0 run scoreboard players operation hash.string eroxified.internal *= hash.op.0 eroxified.internal
execute if score hash.op eroxified.internal matches 1 run scoreboard players operation hash.string eroxified.internal *= hash.op.0 eroxified.internal
execute if score hash.op eroxified.internal matches 2 run scoreboard players operation hash.string eroxified.internal *= hash.op.0 eroxified.internal

scoreboard players remove i eroxified.internal 1
data modify storage eroxified:internal hash.char set string storage eroxified:internal hash.string 0 1
data modify storage eroxified:internal hash.string set string storage eroxified:internal hash.string 1
function eroxified:internal/hash/string/char
execute if score i eroxified.internal matches 1.. run function eroxified:internal/hash/string/loop