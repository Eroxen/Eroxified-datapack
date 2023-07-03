data modify storage eroxified:internal hash.string set from storage eroxified:internal data_structure.set_op.key
execute store result score hash.mod eroxified.internal run data get storage eroxified:internal data_structure.set.n_bins 1
function eroxified:internal/hash/string

# get bin
scoreboard players operation data_structure.list.i eroxified.internal = hash.string eroxified.internal
data modify storage eroxified:internal data_structure.list set from storage eroxified:internal data_structure.set.bins
function eroxified:internal/data_structure/list/get_i
data modify storage eroxified:internal data_structure.set_op.bin set from storage eroxified:internal data_structure.list_op.element

# get key in bin
function eroxified:internal/data_structure/hash_set/string/find_key_in_bin

# set key in bin
execute if score data_structure.set_op.different eroxified.internal matches 1 run data modify storage eroxified:internal data_structure.set_op.bin prepend from storage eroxified:internal data_structure.set_op.key

# set bin
execute if score data_structure.set_op.different eroxified.internal matches 1 run data modify storage eroxified:internal data_structure.list_op.element set from storage eroxified:internal data_structure.set_op.bin
execute if score data_structure.set_op.different eroxified.internal matches 1 run function eroxified:internal/data_structure/list/set_i
execute if score data_structure.set_op.different eroxified.internal matches 1 run data modify storage eroxified:internal data_structure.set.bins set from storage eroxified:internal data_structure.list