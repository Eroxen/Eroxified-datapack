execute store result score #math.trig.dz eroxified.internal run data get storage eroxified:api math.input[2] 10000000
scoreboard players operation #math.trig.dz eroxified.internal /= math.output eroxified.internal

execute store result storage eroxified:internal math.trig.input float 0.0001 run scoreboard players get #math.trig.dz eroxified.internal
function eroxified:internal/math/trig/arccos