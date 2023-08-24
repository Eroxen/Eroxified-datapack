data modify storage eroxified:internal text.get_inner.read_buffer.char set string storage eroxified:internal text.get_inner.read_buffer.remaining 0 1
data modify storage eroxified:internal text.get_inner.read_buffer.remaining set string storage eroxified:internal text.get_inner.read_buffer.remaining 1

execute unless score #text.get_inner.escape eroxified.internal matches 1 if data storage eroxified:internal text.get_inner.read_buffer{char:'"'} run function eroxified:internal/text/get_inner_text/encounter_quote

scoreboard players set #text.get_inner.escape eroxified.internal 0
execute if data storage eroxified:internal text.get_inner.read_buffer{char:'\\'} run scoreboard players set #text.get_inner.escape eroxified.internal 1

scoreboard players remove #text.get_inner.l eroxified.internal 1
execute if score #text.get_inner.l eroxified.internal matches 1.. if score #text.get_inner.phase eroxified.internal matches 0..1 run function eroxified:internal/text/get_inner_text/loop