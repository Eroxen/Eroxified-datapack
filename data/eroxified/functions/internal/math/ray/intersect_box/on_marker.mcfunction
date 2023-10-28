data modify storage eroxified:internal math.ray.pos1 set from entity @s Pos
data modify entity @s Rotation set from storage eroxified:internal math.ray.rotation
execute rotated as @s run tp @s ^ ^ ^1
data modify storage eroxified:internal math.ray.pos2 set from entity @s Pos
kill @s