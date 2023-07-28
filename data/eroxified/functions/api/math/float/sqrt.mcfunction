# calculates the square root of the input
# input: float: storage eroxified:api math.input
# output: float: storage eroxified:api math.output

execute store result score math.magnitude eroxified.internal run data get storage eroxified:api math.input 1
execute if score math.magnitude eroxified.internal matches ..-1 run data get storage eroxified:api math.input -1

execute if score math.magnitude eroxified.internal matches 0..9 store result score math.input eroxified.internal run data get storage eroxified:api math.input 100000000
execute if score math.magnitude eroxified.internal matches 10..999 store result score math.input eroxified.internal run data get storage eroxified:api math.input 1000000
execute if score math.magnitude eroxified.internal matches 1000..99999 store result score math.input eroxified.internal run data get storage eroxified:api math.input 10000
execute if score math.magnitude eroxified.internal matches 100000.. store result score math.input eroxified.internal run data get storage eroxified:api math.input 100
function eroxified:internal/math/sqrt
execute if score math.magnitude eroxified.internal matches 0..9 store result storage eroxified:api math.output float 0.0001 run scoreboard players get math.output eroxified.internal
execute if score math.magnitude eroxified.internal matches 10..999 store result storage eroxified:api math.output float 0.001 run scoreboard players get math.output eroxified.internal
execute if score math.magnitude eroxified.internal matches 1000..99999 store result storage eroxified:api math.output float 0.01 run scoreboard players get math.output eroxified.internal
execute if score math.magnitude eroxified.internal matches 100000.. store result storage eroxified:api math.output float 0.1 run scoreboard players get math.output eroxified.internal