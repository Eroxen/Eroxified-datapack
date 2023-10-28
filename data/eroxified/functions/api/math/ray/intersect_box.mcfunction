#####################################################################
# api/math/ray/intersect_box.mcfunction
# written by Eroxen
#
# Calculates the intersection between a ray starting at the
# position this function is run and a known box.
#
# Arguments:
# $(rotation): rotation of the ray
# $(origin): origin of the box, array of 3 doubles
# $(from): lower corner of box, offset from origin, array of 3 doubles
# $(to): upper corner of box, offset from origin, array of 3 doubles
#
# Scoreboard output :
# - eroxified.api :
#   - math.ray.hit : 0 or 1, depending on whether the ray hit
#   - math.ray.hit.x, .y, .z : positions relative to the origin where the ray hit
#   - math.ray.hit_axis: 0 if the hit face is on the x axis, 1 if y, 2 if z
#   - math.ray.hit_face: 2 * hit_axis + (0 if low side, 1 if high side)
#####################################################################

scoreboard players set math.ray.hit eroxified.api 0
scoreboard players set math.ray.hit_axis eroxified.api -1
scoreboard players set math.ray.hit_face eroxified.api -1

$data modify storage eroxified:internal math.ray set value {intersect_box:{from:$(from),to:$(to),origin:$(origin)},rotation:$(rotation)}

execute store result score #math.ray.origin.x eroxified.internal run data get storage eroxified:internal math.ray.intersect_box.origin[0] 1000
execute store result score #math.ray.origin.y eroxified.internal run data get storage eroxified:internal math.ray.intersect_box.origin[1] 1000
execute store result score #math.ray.origin.z eroxified.internal run data get storage eroxified:internal math.ray.intersect_box.origin[2] 1000

execute summon marker run function eroxified:internal/math/ray/intersect_box/on_marker

execute store result score #math.ray.dx eroxified.internal run data get storage eroxified:internal math.ray.pos2[0] 1000
execute store result score #math.ray.pos1.x eroxified.internal run data get storage eroxified:internal math.ray.pos1[0] 1000
execute store result score #math.ray.dy eroxified.internal run data get storage eroxified:internal math.ray.pos2[1] 1000
execute store result score #math.ray.pos1.y eroxified.internal run data get storage eroxified:internal math.ray.pos1[1] 1000
execute store result score #math.ray.dz eroxified.internal run data get storage eroxified:internal math.ray.pos2[2] 1000
execute store result score #math.ray.pos1.z eroxified.internal run data get storage eroxified:internal math.ray.pos1[2] 1000

### make all coord relative to box origin ###
scoreboard players operation #math.ray.dx eroxified.internal -= #math.ray.origin.x eroxified.internal
scoreboard players operation #math.ray.pos1.x eroxified.internal -= #math.ray.origin.x eroxified.internal
scoreboard players operation #math.ray.dy eroxified.internal -= #math.ray.origin.y eroxified.internal
scoreboard players operation #math.ray.pos1.y eroxified.internal -= #math.ray.origin.y eroxified.internal
scoreboard players operation #math.ray.dz eroxified.internal -= #math.ray.origin.z eroxified.internal
scoreboard players operation #math.ray.pos1.z eroxified.internal -= #math.ray.origin.z eroxified.internal

scoreboard players operation #math.ray.dx eroxified.internal -= #math.ray.pos1.x eroxified.internal
scoreboard players operation #math.ray.dy eroxified.internal -= #math.ray.pos1.y eroxified.internal
scoreboard players operation #math.ray.dz eroxified.internal -= #math.ray.pos1.z eroxified.internal

#tellraw @a ["",{"score":{"name":"#math.ray.pos1.x","objective":"eroxified.internal"}},{"text":"  "},{"score":{"name":"#math.ray.pos1.y","objective":"eroxified.internal"}},{"text":"  "},{"score":{"name":"#math.ray.pos1.z","objective":"eroxified.internal"}}]
#tellraw @a ["",{"score":{"name":"#math.ray.dx","objective":"eroxified.internal"}},{"text":"  "},{"score":{"name":"#math.ray.dy","objective":"eroxified.internal"}},{"text":"  "},{"score":{"name":"#math.ray.dz","objective":"eroxified.internal"}}]

execute store result score #math.ray.box.x.min eroxified.internal run data get storage eroxified:internal math.ray.intersect_box.from[0] 1000
execute store result score #math.ray.box.x.max eroxified.internal run data get storage eroxified:internal math.ray.intersect_box.to[0] 1000
execute store result score #math.ray.box.y.min eroxified.internal run data get storage eroxified:internal math.ray.intersect_box.from[1] 1000
execute store result score #math.ray.box.y.max eroxified.internal run data get storage eroxified:internal math.ray.intersect_box.to[1] 1000
execute store result score #math.ray.box.z.min eroxified.internal run data get storage eroxified:internal math.ray.intersect_box.from[2] 1000
execute store result score #math.ray.box.z.max eroxified.internal run data get storage eroxified:internal math.ray.intersect_box.to[2] 1000

execute if score #math.ray.dx eroxified.internal matches 0.. run scoreboard players operation #math.ray.box.x eroxified.internal = #math.ray.box.x.min eroxified.internal
execute if score #math.ray.dx eroxified.internal matches ..-1 run scoreboard players operation #math.ray.box.x eroxified.internal = #math.ray.box.x.max eroxified.internal
execute if score #math.ray.dy eroxified.internal matches 0.. run scoreboard players operation #math.ray.box.y eroxified.internal = #math.ray.box.y.min eroxified.internal
execute if score #math.ray.dy eroxified.internal matches ..-1 run scoreboard players operation #math.ray.box.y eroxified.internal = #math.ray.box.y.max eroxified.internal
execute if score #math.ray.dz eroxified.internal matches 0.. run scoreboard players operation #math.ray.box.z eroxified.internal = #math.ray.box.z.min eroxified.internal
execute if score #math.ray.dz eroxified.internal matches ..-1 run scoreboard players operation #math.ray.box.z eroxified.internal = #math.ray.box.z.max eroxified.internal

#tellraw @a ["",{"score":{"name":"#math.ray.box.x","objective":"eroxified.internal"}},{"text":"  "},{"score":{"name":"#math.ray.box.y","objective":"eroxified.internal"}},{"text":"  "},{"score":{"name":"#math.ray.box.z","objective":"eroxified.internal"}}]

scoreboard players set #math.ray.dist.min eroxified.internal 1000000000

### calculate intersection with x face ###
scoreboard players operation #math.ray.box.x.perp eroxified.internal = #math.ray.box.x eroxified.internal
scoreboard players operation #math.ray.box.x.perp eroxified.internal -= #math.ray.pos1.x eroxified.internal

scoreboard players operation #math.ray.box.x.dist eroxified.internal = #math.ray.box.x.perp eroxified.internal
scoreboard players operation #math.ray.box.x.dist eroxified.internal *= #math.const.1000 eroxified.internal
scoreboard players operation #math.ray.box.x.dist eroxified.internal /= #math.ray.dx eroxified.internal

scoreboard players operation #math.ray.box.x.y eroxified.internal = #math.ray.box.x.perp eroxified.internal
scoreboard players operation #math.ray.box.x.y eroxified.internal *= #math.ray.dy eroxified.internal
scoreboard players operation #math.ray.box.x.y eroxified.internal /= #math.ray.dx eroxified.internal
scoreboard players operation #math.ray.box.x.y eroxified.internal += #math.ray.pos1.y eroxified.internal

scoreboard players operation #math.ray.box.x.z eroxified.internal = #math.ray.box.x.perp eroxified.internal
scoreboard players operation #math.ray.box.x.z eroxified.internal *= #math.ray.dz eroxified.internal
scoreboard players operation #math.ray.box.x.z eroxified.internal /= #math.ray.dx eroxified.internal
scoreboard players operation #math.ray.box.x.z eroxified.internal += #math.ray.pos1.z eroxified.internal

execute if score #math.ray.box.x.dist eroxified.internal matches 0.. if score #math.ray.box.x.dist eroxified.internal < #math.ray.dist.min eroxified.internal if score #math.ray.box.x.y eroxified.internal >= #math.ray.box.y.min eroxified.internal if score #math.ray.box.x.y eroxified.internal <= #math.ray.box.y.max eroxified.internal if score #math.ray.box.x.z eroxified.internal >= #math.ray.box.z.min eroxified.internal if score #math.ray.box.x.z eroxified.internal <= #math.ray.box.z.max eroxified.internal run function eroxified:internal/math/ray/intersect_box/consider_x
execute if score math.ray.hit eroxified.api matches 1 run return 1


### calculate intersection with y face ###
scoreboard players operation #math.ray.box.y.perp eroxified.internal = #math.ray.box.y eroxified.internal
scoreboard players operation #math.ray.box.y.perp eroxified.internal -= #math.ray.pos1.y eroxified.internal

scoreboard players operation #math.ray.box.y.dist eroxified.internal = #math.ray.box.y.perp eroxified.internal
scoreboard players operation #math.ray.box.y.dist eroxified.internal *= #math.const.1000 eroxified.internal
scoreboard players operation #math.ray.box.y.dist eroxified.internal /= #math.ray.dy eroxified.internal

scoreboard players operation #math.ray.box.y.x eroxified.internal = #math.ray.box.y.perp eroxified.internal
scoreboard players operation #math.ray.box.y.x eroxified.internal *= #math.ray.dx eroxified.internal
scoreboard players operation #math.ray.box.y.x eroxified.internal /= #math.ray.dy eroxified.internal
scoreboard players operation #math.ray.box.y.x eroxified.internal += #math.ray.pos1.x eroxified.internal

scoreboard players operation #math.ray.box.y.z eroxified.internal = #math.ray.box.y.perp eroxified.internal
scoreboard players operation #math.ray.box.y.z eroxified.internal *= #math.ray.dz eroxified.internal
scoreboard players operation #math.ray.box.y.z eroxified.internal /= #math.ray.dy eroxified.internal
scoreboard players operation #math.ray.box.y.z eroxified.internal += #math.ray.pos1.z eroxified.internal

execute if score #math.ray.box.y.dist eroxified.internal matches 0.. if score #math.ray.box.y.dist eroxified.internal < #math.ray.dist.min eroxified.internal if score #math.ray.box.y.x eroxified.internal >= #math.ray.box.x.min eroxified.internal if score #math.ray.box.y.x eroxified.internal <= #math.ray.box.x.max eroxified.internal if score #math.ray.box.y.z eroxified.internal >= #math.ray.box.z.min eroxified.internal if score #math.ray.box.y.z eroxified.internal <= #math.ray.box.z.max eroxified.internal run function eroxified:internal/math/ray/intersect_box/consider_y
execute if score math.ray.hit eroxified.api matches 1 run return 1


### calculate intersection with z face ###
scoreboard players operation #math.ray.box.z.perp eroxified.internal = #math.ray.box.z eroxified.internal
scoreboard players operation #math.ray.box.z.perp eroxified.internal -= #math.ray.pos1.z eroxified.internal

scoreboard players operation #math.ray.box.z.dist eroxified.internal = #math.ray.box.z.perp eroxified.internal
scoreboard players operation #math.ray.box.z.dist eroxified.internal *= #math.const.1000 eroxified.internal
scoreboard players operation #math.ray.box.z.dist eroxified.internal /= #math.ray.dz eroxified.internal

scoreboard players operation #math.ray.box.z.x eroxified.internal = #math.ray.box.z.perp eroxified.internal
scoreboard players operation #math.ray.box.z.x eroxified.internal *= #math.ray.dx eroxified.internal
scoreboard players operation #math.ray.box.z.x eroxified.internal /= #math.ray.dz eroxified.internal
scoreboard players operation #math.ray.box.z.x eroxified.internal += #math.ray.pos1.x eroxified.internal

scoreboard players operation #math.ray.box.z.y eroxified.internal = #math.ray.box.z.perp eroxified.internal
scoreboard players operation #math.ray.box.z.y eroxified.internal *= #math.ray.dy eroxified.internal
scoreboard players operation #math.ray.box.z.y eroxified.internal /= #math.ray.dz eroxified.internal
scoreboard players operation #math.ray.box.z.y eroxified.internal += #math.ray.pos1.y eroxified.internal

execute if score #math.ray.box.z.dist eroxified.internal matches 0.. if score #math.ray.box.z.dist eroxified.internal < #math.ray.dist.min eroxified.internal if score #math.ray.box.z.x eroxified.internal >= #math.ray.box.x.min eroxified.internal if score #math.ray.box.z.x eroxified.internal <= #math.ray.box.x.max eroxified.internal if score #math.ray.box.z.y eroxified.internal >= #math.ray.box.y.min eroxified.internal if score #math.ray.box.z.y eroxified.internal <= #math.ray.box.y.max eroxified.internal run function eroxified:internal/math/ray/intersect_box/consider_z