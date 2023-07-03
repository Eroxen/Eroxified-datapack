# calculates the square root of the input within range [0,1000]
# input: float: storage eroxified:api math.input
# output: float: storage eroxified:api math.output

execute store result score math.input eroxified.internal run data get storage eroxified:api math.input 1000000
function eroxified:internal/math/sqrt
execute store result storage eroxified:api math.output float 0.001 run scoreboard players get math.output eroxified.internal