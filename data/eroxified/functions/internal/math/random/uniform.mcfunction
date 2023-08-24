#####################################################################
# internal/math/random/random_int.mcfunction
# written by Eroxen
#
# Puts a random value between the negative and positive bound
# in the score #math.random.value eroxified.internal
#####################################################################

scoreboard players set #math.random.value eroxified.internal 0
execute if predicate eroxified:random/1_2 run scoreboard players add #math.random.value eroxified.internal 1
execute if predicate eroxified:random/1_2 run scoreboard players add #math.random.value eroxified.internal 2
execute if predicate eroxified:random/1_2 run scoreboard players add #math.random.value eroxified.internal 4
execute if predicate eroxified:random/1_2 run scoreboard players add #math.random.value eroxified.internal 8
execute if predicate eroxified:random/1_2 run scoreboard players add #math.random.value eroxified.internal 16
execute if predicate eroxified:random/1_2 run scoreboard players add #math.random.value eroxified.internal 32
execute if predicate eroxified:random/1_2 run scoreboard players add #math.random.value eroxified.internal 64
execute if predicate eroxified:random/1_2 run scoreboard players add #math.random.value eroxified.internal 128
execute if predicate eroxified:random/1_2 run scoreboard players add #math.random.value eroxified.internal 256
execute if predicate eroxified:random/1_2 run scoreboard players add #math.random.value eroxified.internal 512
execute if predicate eroxified:random/1_2 run scoreboard players add #math.random.value eroxified.internal 1024
execute if predicate eroxified:random/1_2 run scoreboard players add #math.random.value eroxified.internal 2048
execute if predicate eroxified:random/1_2 run scoreboard players add #math.random.value eroxified.internal 4096
execute if predicate eroxified:random/1_2 run scoreboard players add #math.random.value eroxified.internal 8192
execute if predicate eroxified:random/1_2 run scoreboard players add #math.random.value eroxified.internal 16384
execute if predicate eroxified:random/1_2 run scoreboard players add #math.random.value eroxified.internal 32768
execute if predicate eroxified:random/1_2 run scoreboard players add #math.random.value eroxified.internal 65536
execute if predicate eroxified:random/1_2 run scoreboard players add #math.random.value eroxified.internal 131072
execute if predicate eroxified:random/1_2 run scoreboard players add #math.random.value eroxified.internal 262144
execute if predicate eroxified:random/1_2 run scoreboard players add #math.random.value eroxified.internal 524288
execute if predicate eroxified:random/1_2 run scoreboard players add #math.random.value eroxified.internal 1048576
execute if predicate eroxified:random/1_2 run scoreboard players add #math.random.value eroxified.internal 2097152
execute if predicate eroxified:random/1_2 run scoreboard players add #math.random.value eroxified.internal 4194304
execute if predicate eroxified:random/1_2 run scoreboard players add #math.random.value eroxified.internal 8388608
execute if predicate eroxified:random/1_2 run scoreboard players add #math.random.value eroxified.internal 16777216
execute if predicate eroxified:random/1_2 run scoreboard players add #math.random.value eroxified.internal 33554432
execute if predicate eroxified:random/1_2 run scoreboard players add #math.random.value eroxified.internal 67108864
execute if predicate eroxified:random/1_2 run scoreboard players add #math.random.value eroxified.internal 134217728
execute if predicate eroxified:random/1_2 run scoreboard players add #math.random.value eroxified.internal 268435456
execute if predicate eroxified:random/1_2 run scoreboard players add #math.random.value eroxified.internal 536870912
execute if predicate eroxified:random/1_2 run scoreboard players add #math.random.value eroxified.internal 1073741824

scoreboard players operation #math.random.range eroxified.internal = #math.random.max eroxified.internal
scoreboard players operation #math.random.range eroxified.internal -= #math.random.min eroxified.internal
scoreboard players add #math.random.range eroxified.internal 1
scoreboard players operation #math.random.value eroxified.internal %= #math.random.range eroxified.internal
scoreboard players operation #math.random.value eroxified.internal += #math.random.min eroxified.internal
