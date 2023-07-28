execute store result score #math.float.get_exponent eroxified.internal run data get storage eroxified:internal math.float 1
execute if score #math.float.get_exponent eroxified.internal matches ..-1 store result score #math.float.get_exponent eroxified.internal run data get storage eroxified:internal math.float -1

execute if score #math.float.get_exponent eroxified.internal matches 1000000000.. run return 9
execute if score #math.float.get_exponent eroxified.internal matches 100000000.. run return 8
execute if score #math.float.get_exponent eroxified.internal matches 10000000.. run return 7
execute if score #math.float.get_exponent eroxified.internal matches 1000000.. run return 6
execute if score #math.float.get_exponent eroxified.internal matches 100000.. run return 5
execute if score #math.float.get_exponent eroxified.internal matches 10000.. run return 4
execute if score #math.float.get_exponent eroxified.internal matches 1000.. run return 3
execute if score #math.float.get_exponent eroxified.internal matches 100.. run return 2
execute if score #math.float.get_exponent eroxified.internal matches 10.. run return 1

execute store result score #math.float.get_exponent eroxified.internal run data get storage eroxified:internal math.float 1000000000
execute if score #math.float.get_exponent eroxified.internal matches ..-1 store result score #math.float.get_exponent eroxified.internal run data get storage eroxified:internal math.float -1000000000

execute if score #math.float.get_exponent eroxified.internal matches 1000000000.. run return 0
execute if score #math.float.get_exponent eroxified.internal matches 100000000.. run return -1
execute if score #math.float.get_exponent eroxified.internal matches 10000000.. run return -2
execute if score #math.float.get_exponent eroxified.internal matches 1000000.. run return -3
execute if score #math.float.get_exponent eroxified.internal matches 100000.. run return -4
execute if score #math.float.get_exponent eroxified.internal matches 10000.. run return -5
execute if score #math.float.get_exponent eroxified.internal matches 1000.. run return -6
execute if score #math.float.get_exponent eroxified.internal matches 100.. run return -7
execute if score #math.float.get_exponent eroxified.internal matches 10.. run return -8
return -9