scoreboard players operation #math.ray.dist.min eroxified.internal = #math.ray.box.z.dist eroxified.internal
scoreboard players set math.ray.hit eroxified.api 1
scoreboard players set math.ray.hit_axis eroxified.api 2
execute if score #math.ray.dz eroxified.internal matches 0.. run scoreboard players set math.ray.hit_face eroxified.api 4
execute if score #math.ray.dz eroxified.internal matches ..-1 run scoreboard players set math.ray.hit_face eroxified.api 5

scoreboard players operation math.ray.hit.z eroxified.api = #math.ray.box.z eroxified.internal

scoreboard players operation math.ray.hit.x eroxified.api = #math.ray.box.z.x eroxified.internal
scoreboard players operation math.ray.hit.x eroxified.api -= #math.ray.box.x.min eroxified.internal

scoreboard players operation math.ray.hit.y eroxified.api = #math.ray.box.z.y eroxified.internal
scoreboard players operation math.ray.hit.y eroxified.api -= #math.ray.box.y.min eroxified.internal