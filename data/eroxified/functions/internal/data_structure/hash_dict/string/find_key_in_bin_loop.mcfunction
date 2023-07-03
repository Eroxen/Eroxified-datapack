execute store success score data_structure.dict_op.different eroxified.internal run data modify storage eroxified:internal data_structure.dict_op.search_bin[0].key set from storage eroxified:internal data_structure.dict_op.key
data remove storage eroxified:internal data_structure.dict_op.search_bin[0]
scoreboard players add data_structure.dict_op.i eroxified.internal 1

execute if score data_structure.dict_op.different eroxified.internal matches 1 if data storage eroxified:internal data_structure.dict_op.search_bin[0] run function eroxified:internal/data_structure/hash_dict/string/find_key_in_bin_loop