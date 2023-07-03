scoreboard players set data_structure.set_op.different eroxified.internal 1
data modify storage eroxified:internal data_structure.set_op.search_bin set from storage eroxified:internal data_structure.set_op.bin

execute if data storage eroxified:internal data_structure.set_op.search_bin[0] run function eroxified:internal/data_structure/hash_set/string/find_key_in_bin_loop
data remove storage eroxified:internal data_structure.set_op.search_bin