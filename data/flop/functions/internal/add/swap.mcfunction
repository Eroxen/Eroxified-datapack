scoreboard players operation #shift flop = operand.b.exponent flop
scoreboard players operation #shift flop -= operand.a.exponent flop

execute if score #shift flop matches 30.. run function flop:internal/add/return_b
execute if score #shift flop matches 0..29 run function flop:internal/add/add_swap