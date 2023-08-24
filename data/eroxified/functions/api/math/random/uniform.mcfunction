#####################################################################
# api/math/random/uniform.mcfunction
# written by Eroxen
#
# Generates a random number in the range [min, max]
#
# Scoreboard input :
# - eroxified.api :
#   - math.random.min : lower bound
#   - math.random.max : upper bound
#
# Scoreboard output :
# - eroxified.api :
#   - math.random.value : random value
#####################################################################

scoreboard players operation #math.random.min eroxified.internal = math.random.min eroxified.api
scoreboard players operation #math.random.max eroxified.internal = math.random.max eroxified.api
function eroxified:internal/math/random/uniform
scoreboard players operation math.random.value eroxified.api = #math.random.value eroxified.internal