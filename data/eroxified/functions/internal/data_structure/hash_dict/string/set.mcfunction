data modify storage eroxified:internal data_structure.dict_op.pair set value {}
data modify storage eroxified:internal data_structure.dict_op.pair.key set from storage eroxified:internal data_structure.dict_op.key
data modify storage eroxified:internal data_structure.dict_op.pair.value set from storage eroxified:internal data_structure.dict_op.value

data modify storage eroxified:internal hash.string set from storage eroxified:internal data_structure.dict_op.key
execute store result score hash.mod eroxified.internal run data get storage eroxified:internal data_structure.dict.n_bins 1
function eroxified:internal/hash/string

# get bin
scoreboard players operation data_structure.list.i eroxified.internal = hash.string eroxified.internal
data modify storage eroxified:internal data_structure.list set from storage eroxified:internal data_structure.dict.bins
function eroxified:internal/data_structure/list/get_i
data modify storage eroxified:internal data_structure.dict_op.bin set from storage eroxified:internal data_structure.list_op.element

# get key in bin
function eroxified:internal/data_structure/hash_dict/string/find_key_in_bin

# set key in bin
execute if score data_structure.dict_op.i eroxified.internal matches -1 run data modify storage eroxified:internal data_structure.dict_op.bin prepend from storage eroxified:internal data_structure.dict_op.pair
execute if score data_structure.dict_op.i eroxified.internal matches 0.. run data modify storage eroxified:internal data_structure.list set from storage eroxified:internal data_structure.dict_op.bin
execute if score data_structure.dict_op.i eroxified.internal matches 0.. run data modify storage eroxified:internal data_structure.list_op.element set from storage eroxified:internal data_structure.dict_op.pair
execute if score data_structure.dict_op.i eroxified.internal matches 0.. run scoreboard players operation data_structure.list.i eroxified.internal = data_structure.dict_op.i eroxified.internal
execute if score data_structure.dict_op.i eroxified.internal matches 0.. run function eroxified:internal/data_structure/list/set_i
execute if score data_structure.dict_op.i eroxified.internal matches 0.. run data modify storage eroxified:internal data_structure.dict_op.bin set from storage eroxified:internal data_structure.list

execute if score data_structure.dict_op.i eroxified.internal matches 0.. run data modify storage eroxified:internal data_structure.list set from storage eroxified:internal data_structure.dict.bins
execute if score data_structure.dict_op.i eroxified.internal matches 0.. run scoreboard players operation data_structure.list.i eroxified.internal = hash.string eroxified.internal

# set bin
data modify storage eroxified:internal data_structure.list_op.element set from storage eroxified:internal data_structure.dict_op.bin
function eroxified:internal/data_structure/list/set_i
data modify storage eroxified:internal data_structure.dict.bins set from storage eroxified:internal data_structure.list