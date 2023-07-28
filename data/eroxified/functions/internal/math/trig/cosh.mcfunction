execute store result score math.trig.x eroxified.internal run data get storage eroxified:internal math.trig.input 1000
scoreboard players set math.trig.op eroxified.internal -1
execute if score math.trig.x eroxified.internal matches ..-1 run scoreboard players operation math.trig.x eroxified.internal *= math.trig.op eroxified.internal

function eroxified:internal/math/trig/generated_cosh/0_10000