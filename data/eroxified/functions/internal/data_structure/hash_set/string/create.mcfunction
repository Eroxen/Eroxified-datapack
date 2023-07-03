data modify storage eroxified:internal data_structure.set set value {type:"eroxified:hash_set.string"}
data modify storage eroxified:internal data_structure.set.n_bins set from storage eroxified:internal data_structure.new_set.n_bins

data modify storage eroxified:internal data_structure.list set value [[]]
execute store result score data_structure.list.multiply eroxified.internal run data get storage eroxified:internal data_structure.new_set.n_bins 1
function eroxified:internal/data_structure/list/multiply
data modify storage eroxified:internal data_structure.set.bins set from storage eroxified:internal data_structure.list