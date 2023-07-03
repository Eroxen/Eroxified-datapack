data modify storage eroxified:internal math.vec3.c set value [0f,0f,0f]

execute store result score math.vec3.a eroxified.internal run data get storage eroxified:internal math.vec3.a[0] 1000
execute store result score math.vec3.b eroxified.internal run data get storage eroxified:internal math.vec3.b[0] 1000
scoreboard players operation math.vec3.a eroxified.internal += math.vec3.b eroxified.internal
execute store result storage eroxified:internal math.vec3.c[0] float 0.001 run scoreboard players get math.vec3.a eroxified.internal

execute store result score math.vec3.a eroxified.internal run data get storage eroxified:internal math.vec3.a[1] 1000
execute store result score math.vec3.b eroxified.internal run data get storage eroxified:internal math.vec3.b[1] 1000
scoreboard players operation math.vec3.a eroxified.internal += math.vec3.b eroxified.internal
execute store result storage eroxified:internal math.vec3.c[1] float 0.001 run scoreboard players get math.vec3.a eroxified.internal

execute store result score math.vec3.a eroxified.internal run data get storage eroxified:internal math.vec3.a[2] 1000
execute store result score math.vec3.b eroxified.internal run data get storage eroxified:internal math.vec3.b[2] 1000
scoreboard players operation math.vec3.a eroxified.internal += math.vec3.b eroxified.internal
execute store result storage eroxified:internal math.vec3.c[2] float 0.001 run scoreboard players get math.vec3.a eroxified.internal