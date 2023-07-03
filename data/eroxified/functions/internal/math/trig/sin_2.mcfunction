scoreboard players set math.trig.op eroxified.internal 3600
scoreboard players operation math.trig.input eroxified.internal %= math.trig.op eroxified.internal

execute store success score math.trig.invert eroxified.internal if score math.trig.input eroxified.internal matches 1801..
execute if score math.trig.input eroxified.internal matches 1801.. run scoreboard players operation math.trig.op eroxified.internal -= math.trig.input eroxified.internal
execute if score math.trig.input eroxified.internal matches 1801.. run scoreboard players operation math.trig.input eroxified.internal = math.trig.op eroxified.internal

scoreboard players set math.trig.op eroxified.internal 1800

execute if score math.trig.input eroxified.internal matches 901.. run scoreboard players operation math.trig.op eroxified.internal -= math.trig.input eroxified.internal
execute if score math.trig.input eroxified.internal matches 901.. run scoreboard players operation math.trig.input eroxified.internal = math.trig.op eroxified.internal

function eroxified:internal/math/trig/generated_sin/0_900
execute if score math.trig.invert eroxified.internal matches 1 store result storage eroxified:internal math.trig.output float -0.001 run data get storage eroxified:internal math.trig.output 1000