execute store result score math.trig.input eroxified.internal run data get storage eroxified:internal math.trig.input 1000000
scoreboard players set math.trig.op eroxified.internal 1
execute if score math.trig.input eroxified.internal matches ..-1 run scoreboard players set math.trig.op eroxified.internal -1
scoreboard players operation math.trig.input eroxified.internal *= math.trig.op eroxified.internal

function eroxified:internal/math/trig/generated_arcsin/0_900
execute if score math.trig.op eroxified.internal matches -1 store result storage eroxified:internal math.trig.output float -0.001 run data get storage eroxified:internal math.trig.output 1000