#####################################################################
# api/math/float/square.mcfunction
# written by Eroxen
#
# Calculates the square of the number.
#
# Storage input :
# - eroxified:api :
#   - math :
#     - input : floating point number
#
# Storage output :
# - eroxified:api :
#   - math :
#     - output : the square of the number
#####################################################################

data modify storage eroxified:internal math.multiply.a set from storage eroxified:api math.input

data modify storage eroxified:internal math.float set from storage eroxified:internal math.multiply.a
execute store result score #math.multiply.magnitude.a eroxified.internal run function eroxified:internal/math/float/get_exponent

function eroxified:internal/math/float/multiply/get_a/-9_9

scoreboard players operation #math.multiply.magnitude.a eroxified.internal += #math.multiply.magnitude.a eroxified.internal
scoreboard players operation #math.multiply.mantissa.a eroxified.internal *= #math.multiply.mantissa.a eroxified.internal

function eroxified:internal/math/float/multiply/set/-18_18

data modify storage eroxified:api math.output set from storage eroxified:internal math.multiply.output