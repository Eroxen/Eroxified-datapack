# approximates the arcsin(x) function
# supports x within range (-1000, 1000)
# input: float: storage eroxified:api math.input
# output: float: storage eroxified:api math.output

data modify storage eroxified:internal math.trig.input set from storage eroxified:api math.input
function eroxified:internal/math/trig/arcsin
data modify storage eroxified:api math.output set from storage eroxified:internal math.trig.output