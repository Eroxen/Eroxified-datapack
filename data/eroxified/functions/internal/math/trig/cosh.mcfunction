execute store result score math.trig.x eroxified.internal run data get storage eroxified:internal math.trig.input 1000
scoreboard players set math.trig.op eroxified.internal -1
execute if score math.trig.x eroxified.internal matches ..-1 run scoreboard players operation math.trig.x eroxified.internal *= math.trig.op eroxified.internal

execute if score math.trig.x eroxified.internal matches 0..499 run function eroxified:internal/math/trig/generated_cosh/0_499
execute if score math.trig.x eroxified.internal matches 500..999 run function eroxified:internal/math/trig/generated_cosh/500_999
execute if score math.trig.x eroxified.internal matches 1000..1499 run function eroxified:internal/math/trig/generated_cosh/1000_1499
execute if score math.trig.x eroxified.internal matches 1500..1999 run function eroxified:internal/math/trig/generated_cosh/1500_1999
execute if score math.trig.x eroxified.internal matches 2000..2499 run function eroxified:internal/math/trig/generated_cosh/2000_2499
execute if score math.trig.x eroxified.internal matches 2500..2999 run function eroxified:internal/math/trig/generated_cosh/2500_2999
execute if score math.trig.x eroxified.internal matches 3000..3499 run function eroxified:internal/math/trig/generated_cosh/3000_3499
execute if score math.trig.x eroxified.internal matches 3500..3999 run function eroxified:internal/math/trig/generated_cosh/3500_3999
execute if score math.trig.x eroxified.internal matches 4000..4499 run function eroxified:internal/math/trig/generated_cosh/4000_4499
execute if score math.trig.x eroxified.internal matches 4500..4999 run function eroxified:internal/math/trig/generated_cosh/4500_4999
execute if score math.trig.x eroxified.internal matches 5000..5499 run function eroxified:internal/math/trig/generated_cosh/5000_5499
execute if score math.trig.x eroxified.internal matches 5500..5999 run function eroxified:internal/math/trig/generated_cosh/5500_5999
execute if score math.trig.x eroxified.internal matches 6000..6499 run function eroxified:internal/math/trig/generated_cosh/6000_6499
execute if score math.trig.x eroxified.internal matches 6500..6999 run function eroxified:internal/math/trig/generated_cosh/6500_6999
execute if score math.trig.x eroxified.internal matches 7000..7499 run function eroxified:internal/math/trig/generated_cosh/7000_7499
execute if score math.trig.x eroxified.internal matches 7500..7999 run function eroxified:internal/math/trig/generated_cosh/7500_7999
execute if score math.trig.x eroxified.internal matches 8000..8499 run function eroxified:internal/math/trig/generated_cosh/8000_8499
execute if score math.trig.x eroxified.internal matches 8500..8999 run function eroxified:internal/math/trig/generated_cosh/8500_8999
execute if score math.trig.x eroxified.internal matches 9000..9499 run function eroxified:internal/math/trig/generated_cosh/9000_9499
execute if score math.trig.x eroxified.internal matches 9500.. run function eroxified:internal/math/trig/generated_cosh/9500_9999

execute store result storage eroxified:internal math.trig.output float 0.001 run scoreboard players get math.trig.y eroxified.internal