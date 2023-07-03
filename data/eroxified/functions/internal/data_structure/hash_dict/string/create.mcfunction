data modify storage eroxified:internal data_structure.dict set value {type:"eroxified:hash_dict.string"}
data modify storage eroxified:internal data_structure.dict.n_bins set from storage eroxified:internal data_structure.new_dict.n_bins

data modify storage eroxified:internal data_structure.list set value [[]]
execute store result score data_structure.list.multiply eroxified.internal run data get storage eroxified:internal data_structure.new_dict.n_bins 1
function eroxified:internal/data_structure/list/multiply
data modify storage eroxified:internal data_structure.dict.bins set from storage eroxified:internal data_structure.list