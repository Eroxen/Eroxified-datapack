execute store result score #math.trig.dx eroxified.internal run data get storage eroxified:api math.input[0] 10000000
scoreboard players operation #math.trig.dx eroxified.internal /= math.output eroxified.internal

execute store result storage eroxified:internal math.trig.input float 0.0001 run scoreboard players get #math.trig.dx eroxified.internal
function eroxified:internal/math/trig/arcsin