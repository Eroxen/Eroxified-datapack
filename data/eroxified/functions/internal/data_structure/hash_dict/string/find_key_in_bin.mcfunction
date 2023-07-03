scoreboard players set data_structure.dict_op.i eroxified.internal -1
data modify storage eroxified:internal data_structure.dict_op.search_bin set from storage eroxified:internal data_structure.dict_op.bin

execute if data storage eroxified:internal data_structure.dict_op.search_bin[0] run function eroxified:internal/data_structure/hash_dict/string/find_key_in_bin_loop
execute if score data_structure.dict_op.different eroxified.internal matches 1 run scoreboard players set data_structure.dict_op.i eroxified.internal -1
data remove storage eroxified:internal data_structure.dict_op.search_bin