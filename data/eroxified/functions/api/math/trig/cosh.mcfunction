# approximates the cosh(x) function defined as (exp(x) + exp(-x))/2
# supports x within range (-10, 10)
# input: float: storage eroxified:api math.input
# output: float: storage eroxified:api math.output

data modify storage eroxified:internal math.trig.input set from storage eroxified:api math.input
function eroxified:internal/math/trig/cosh
data modify storage eroxified:api math.output set from storage eroxified:internal math.trig.output