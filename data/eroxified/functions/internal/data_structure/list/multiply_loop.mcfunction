scoreboard players remove data_structure.list.multiply eroxified.internal 1
data modify storage eroxified:internal data_structure.list append from storage eroxified:internal data_structure.multiply_list[]
execute if score data_structure.list.multiply eroxified.internal matches 2.. run function eroxified:internal/data_structure/list/multiply_loop