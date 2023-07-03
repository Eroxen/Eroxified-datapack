execute if score data_structure.list.multiply eroxified.internal matches ..0 run data modify storage eroxified:internal data_structure.list set value []
execute if score data_structure.list.multiply eroxified.internal matches 2.. run data modify storage eroxified:internal data_structure.multiply_list set from storage eroxified:internal data_structure.list
execute if score data_structure.list.multiply eroxified.internal matches 2.. run function eroxified:internal/data_structure/list/multiply_loop

data remove storage eroxified:internal data_structure.multiply_list