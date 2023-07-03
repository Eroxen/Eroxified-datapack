function eroxified:internal/math/trig/arcsin

execute store result score math.trig.output eroxified.internal run data get storage eroxified:internal math.trig.output 10
scoreboard players remove math.trig.output eroxified.internal 900
execute if score math.trig.output eroxified.internal matches ..-9001 run scoreboard players add math.trig.output eroxified.internal 3600
execute store result storage eroxified:internal math.trig.output float -0.1 run scoreboard players get math.trig.output eroxified.internal