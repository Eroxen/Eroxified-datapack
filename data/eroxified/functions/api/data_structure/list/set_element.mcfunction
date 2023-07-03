# sets storage eroxified:api data_structure.list[i] from storage eroxified:api data_structure.element
# list can be at most 1024 elements long
# input: list: storage eroxified:api data_structure.list
# input: NBT: storage eroxified:api data_structure.element
# input: score: data_structure.index eroxified.api
# output: list: storage eroxified:api data_structure.list

scoreboard players operation data_structure.list.i eroxified.internal = data_structure.index eroxified.api
data modify storage eroxified:internal data_structure.list set from storage eroxified:api data_structure.list
data modify storage eroxified:internal data_structure.list_op.element set from storage eroxified:api data_structure.element
function eroxified:internal/data_structure/list/set_i
data modify storage eroxified:api data_structure.list set from storage eroxified:internal data_structure.list