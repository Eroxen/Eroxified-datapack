# sets storage eroxified:api data_structure.element from storage eroxified:api data_structure.list[i]
# list can be at most 1024 elements long
# input: list: storage eroxified:api data_structure.list
# input: score: data_structure.index eroxified.api
# output: NBT: storage eroxified:api data_structure.element

scoreboard players operation data_structure.list.i eroxified.internal = data_structure.index eroxified.api
data modify storage eroxified:internal data_structure.list set from storage eroxified:api data_structure.list
function eroxified:internal/data_structure/list/get_i
data modify storage eroxified:api data_structure.element set from storage eroxified:internal data_structure.list_op.element