#####################################################################
# api/math/float/multiply.mcfunction
# written by Eroxen
#
# Multiplies two floating point numbers with as much precision as possible.
#
# Storage input :
# - eroxified:api :
#   - math :
#     - multiply :
#       - a : first number
#       - b : second number
#
# Storage output :
# - eroxified:api :
#   - math :
#     - multiply :
#       - output : product of a and b
#####################################################################

data modify storage eroxified:internal math.multiply set from storage eroxified:api math.multiply
data modify storage eroxified:internal math.float set from storage eroxified:internal math.multiply.a
execute store result score #math.multiply.magnitude.a eroxified.internal run function eroxified:internal/math/float/get_exponent
data modify storage eroxified:internal math.float set from storage eroxified:internal math.multiply.b
execute store result score #math.multiply.magnitude.b eroxified.internal run function eroxified:internal/math/float/get_exponent

function eroxified:internal/math/float/multiply/get_a/-9_9
function eroxified:internal/math/float/multiply/get_b/-9_9

scoreboard players operation #math.multiply.magnitude.a eroxified.internal += #math.multiply.magnitude.b eroxified.internal
scoreboard players operation #math.multiply.mantissa.a eroxified.internal *= #math.multiply.mantissa.b eroxified.internal

function eroxified:internal/math/float/multiply/set/-18_18

data modify storage eroxified:api math.multiply set from storage eroxified:internal math.multiply