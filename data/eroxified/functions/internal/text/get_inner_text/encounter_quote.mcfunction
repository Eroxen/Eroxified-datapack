scoreboard players add #text.get_inner.quotation eroxified.internal 1
execute if score #text.get_inner.quotation eroxified.internal matches 2.. run scoreboard players set #text.get_inner.quotation eroxified.internal 0

execute if score #text.get_inner.quotation eroxified.internal matches 1 run data modify storage eroxified:internal text.get_inner.read_buffer.quotation_start set from storage eroxified:internal text.get_inner.read_buffer.remaining

execute if score #text.get_inner.quotation eroxified.internal matches 0 run scoreboard players operation #text.get_inner.cut_tail eroxified.internal = #text.get_inner.l eroxified.internal
execute if score #text.get_inner.quotation eroxified.internal matches 0 run function eroxified:internal/text/get_inner_text/cut_tail
execute if score #text.get_inner.quotation eroxified.internal matches 0 if score #text.get_inner.phase eroxified.internal matches 1 run scoreboard players set #text.get_inner.phase eroxified.internal 2
execute if score #text.get_inner.quotation eroxified.internal matches 0 if score #text.get_inner.phase eroxified.internal matches 0 if data storage eroxified:internal text.get_inner.read_buffer{quotation_start:"text"} run scoreboard players set #text.get_inner.phase eroxified.internal 1
