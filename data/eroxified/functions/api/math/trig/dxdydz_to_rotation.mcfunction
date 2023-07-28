#####################################################################
# api/math/trig/dxdydz_to_rotation.mcfunction
# written by Eroxen
#
# NOTE: this does not work :)
#
# Calculates the rotation that would cause an entity to have a
# facing vector in the direction [dx, dy, dz]
#
# dx, dy, and dz can be in the range [-30, 30].
#
# Storage input :
# - eroxified:api :
#   - math :
#     - input : [dx, dy, dz] (float)
#
# Storage output :
# - eroxified:api :
#   - math :
#     - output : [pitch, yaw] (float)
#####################################################################

data modify storage eroxified:api math.output set value [0f,0f]

### horizontal rotation ###
execute store result score #math.trig.dx eroxified.internal run data get storage eroxified:api math.input[0] 1000
execute if score #math.trig.dx eroxified.internal matches ..-1 store result score #math.trig.dx eroxified.internal run data get storage eroxified:api math.input[0] -1000
execute store result score #math.trig.dz eroxified.internal run data get storage eroxified:api math.input[2] 1000
execute if score #math.trig.dz eroxified.internal matches ..-1 store result score #math.trig.dz eroxified.internal run data get storage eroxified:api math.input[2] -1000
execute store success score #math.branch eroxified.internal if score #math.trig.dx eroxified.internal >= #math.trig.dz eroxified.internal

execute store result score math.input eroxified.internal run data get storage eroxified:api math.input[0] 1000
scoreboard players operation math.input eroxified.internal *= math.input eroxified.internal
execute store result score #math.trig.temp eroxified.internal run data get storage eroxified:api math.input[2] 1000
scoreboard players operation #math.trig.temp eroxified.internal *= #math.trig.temp eroxified.internal
scoreboard players operation math.input eroxified.internal += #math.trig.temp eroxified.internal
function eroxified:internal/math/sqrt

execute if score #math.branch eroxified.internal matches 1 run function eroxified:internal/math/trig/dxdydz_to_rotation/x_geq_z
execute if score #math.branch eroxified.internal matches 0 run function eroxified:internal/math/trig/dxdydz_to_rotation/z_gr_x

#execute store result score #math.trig.dx eroxified.internal run data get storage eroxified:api math.input[0] 1000
execute store result storage eroxified:api math.output[0] float -0.001 run data get storage eroxified:internal math.trig.output 1000
#execute if score #math.trig.dx eroxified.internal matches 0.. store result storage eroxified:api math.output[0] float 0.000001 run data get storage eroxified:internal math.trig.output -1000000

### vertical rotation ###
execute store result score math.input eroxified.internal run data get storage eroxified:api math.input[1] 1000
scoreboard players operation math.input eroxified.internal *= math.input eroxified.internal
scoreboard players operation math.output eroxified.internal *= math.output eroxified.internal
scoreboard players operation math.input eroxified.internal += math.output eroxified.internal
function eroxified:internal/math/sqrt

execute store result score #math.trig.dy eroxified.internal run data get storage eroxified:api math.input[1] 10000000
scoreboard players operation #math.trig.dy eroxified.internal /= math.output eroxified.internal

execute store result storage eroxified:internal math.trig.input float 0.0001 run scoreboard players get #math.trig.dy eroxified.internal
function eroxified:internal/math/trig/arcsin

execute store result storage eroxified:api math.output[1] float 0.000001 run data get storage eroxified:internal math.trig.output -1000000

tellraw @a {"nbt":"math.output","storage":"eroxified:api","color":"light_purple"}