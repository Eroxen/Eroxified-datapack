data modify storage eroxified:internal text.get_inner.read_buffer set value {}
data modify storage eroxified:internal text.get_inner.read_buffer.remaining set from storage eroxified:internal text.get_inner.input
data modify storage eroxified:internal text.get_inner.read_buffer.output set value ""

execute store result score #text.get_inner.l eroxified.internal run data get storage eroxified:internal text.get_inner.input
scoreboard players set #text.get_inner.quotation eroxified.internal 0
scoreboard players set #text.get_inner.escape eroxified.internal 0
scoreboard players set #text.get_inner.phase eroxified.internal 0

execute if score #text.get_inner.l eroxified.internal matches 1.. run function eroxified:internal/text/get_inner_text/loop
execute if score #text.get_inner.phase eroxified.internal matches 2 run data modify storage eroxified:internal text.get_inner.output set from storage eroxified:internal text.get_inner.read_buffer.quotation_start