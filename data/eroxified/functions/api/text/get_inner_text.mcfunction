#####################################################################
# api/text/get_inner_text.mcfunction
# written by Eroxen
#
# When the input is a text JSON object, such as '{"text":"hello","color":"red"}',
# returns the inner text string ("hello") as a string
#
# Storage input :
# - eroxified:api :
#   - text :
#     - input : JSON string
#
# Storage input :
# - eroxified:api :
#   - text :
#     - output : string
#####################################################################

data modify storage eroxified:internal text.get_inner.input set from storage eroxified:api text.input
function eroxified:internal/text/get_inner_text/start
data modify storage eroxified:api text.output set from storage eroxified:internal text.get_inner.output