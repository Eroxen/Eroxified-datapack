data modify storage eroxified:internal math.trig.quaternion set value [0f,0f,0f,0f]

execute store result storage eroxified:internal math.trig.input float 0.001 run data get storage eroxified:internal math.trig.euler.yaw 500
function eroxified:internal/math/trig/sin
execute store result score math.trig.sin_yaw eroxified.internal run data get storage eroxified:internal math.trig.output 1000
function eroxified:internal/math/trig/cos
execute store result score math.trig.cos_yaw eroxified.internal run data get storage eroxified:internal math.trig.output 1000

execute store result storage eroxified:internal math.trig.input float 0.001 run data get storage eroxified:internal math.trig.euler.pitch 500
function eroxified:internal/math/trig/sin
execute store result score math.trig.sin_pitch eroxified.internal run data get storage eroxified:internal math.trig.output 1000
function eroxified:internal/math/trig/cos
execute store result score math.trig.cos_pitch eroxified.internal run data get storage eroxified:internal math.trig.output 1000

execute store result storage eroxified:internal math.trig.input float 0.001 run data get storage eroxified:internal math.trig.euler.roll 500
function eroxified:internal/math/trig/sin
execute store result score math.trig.sin_roll eroxified.internal run data get storage eroxified:internal math.trig.output 1000
function eroxified:internal/math/trig/cos
execute store result score math.trig.cos_roll eroxified.internal run data get storage eroxified:internal math.trig.output 1000

scoreboard players operation math.trig.q1 eroxified.internal = math.trig.cos_yaw eroxified.internal
scoreboard players operation math.trig.q1 eroxified.internal *= math.trig.cos_pitch eroxified.internal
scoreboard players operation math.trig.q1 eroxified.internal *= math.trig.cos_roll eroxified.internal
scoreboard players operation math.trig.q2 eroxified.internal = math.trig.sin_yaw eroxified.internal
scoreboard players operation math.trig.q2 eroxified.internal *= math.trig.sin_pitch eroxified.internal
scoreboard players operation math.trig.q2 eroxified.internal *= math.trig.sin_roll eroxified.internal
scoreboard players operation math.trig.q1 eroxified.internal += math.trig.q2 eroxified.internal
execute store result storage eroxified:internal math.trig.quaternion[0] float 0.000000001 run scoreboard players get math.trig.q1 eroxified.internal

scoreboard players operation math.trig.q1 eroxified.internal = math.trig.cos_yaw eroxified.internal
scoreboard players operation math.trig.q1 eroxified.internal *= math.trig.cos_pitch eroxified.internal
scoreboard players operation math.trig.q1 eroxified.internal *= math.trig.sin_roll eroxified.internal
scoreboard players operation math.trig.q2 eroxified.internal = math.trig.sin_yaw eroxified.internal
scoreboard players operation math.trig.q2 eroxified.internal *= math.trig.sin_pitch eroxified.internal
scoreboard players operation math.trig.q2 eroxified.internal *= math.trig.cos_roll eroxified.internal
scoreboard players operation math.trig.q1 eroxified.internal -= math.trig.q2 eroxified.internal
execute store result storage eroxified:internal math.trig.quaternion[1] float 0.000000001 run scoreboard players get math.trig.q1 eroxified.internal

scoreboard players operation math.trig.q1 eroxified.internal = math.trig.cos_yaw eroxified.internal
scoreboard players operation math.trig.q1 eroxified.internal *= math.trig.sin_pitch eroxified.internal
scoreboard players operation math.trig.q1 eroxified.internal *= math.trig.cos_roll eroxified.internal
scoreboard players operation math.trig.q2 eroxified.internal = math.trig.sin_yaw eroxified.internal
scoreboard players operation math.trig.q2 eroxified.internal *= math.trig.cos_pitch eroxified.internal
scoreboard players operation math.trig.q2 eroxified.internal *= math.trig.sin_roll eroxified.internal
scoreboard players operation math.trig.q1 eroxified.internal += math.trig.q2 eroxified.internal
execute store result storage eroxified:internal math.trig.quaternion[2] float 0.000000001 run scoreboard players get math.trig.q1 eroxified.internal

scoreboard players operation math.trig.q1 eroxified.internal = math.trig.sin_yaw eroxified.internal
scoreboard players operation math.trig.q1 eroxified.internal *= math.trig.cos_pitch eroxified.internal
scoreboard players operation math.trig.q1 eroxified.internal *= math.trig.cos_roll eroxified.internal
scoreboard players operation math.trig.q2 eroxified.internal = math.trig.cos_yaw eroxified.internal
scoreboard players operation math.trig.q2 eroxified.internal *= math.trig.sin_pitch eroxified.internal
scoreboard players operation math.trig.q2 eroxified.internal *= math.trig.sin_roll eroxified.internal
scoreboard players operation math.trig.q1 eroxified.internal -= math.trig.q2 eroxified.internal
execute store result storage eroxified:internal math.trig.quaternion[3] float 0.000000001 run scoreboard players get math.trig.q1 eroxified.internal