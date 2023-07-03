scoreboard players set math.trig.y eroxified.internal 1031
scoreboard players set math.trig.op eroxified.internal 1000
scoreboard players operation math.trig.x-a eroxified.internal = math.trig.x eroxified.internal
scoreboard players remove math.trig.x-a eroxified.internal 250
scoreboard players set math.trig.y_acc eroxified.internal 252
scoreboard players operation math.trig.y_acc eroxified.internal *= math.trig.x-a eroxified.internal
scoreboard players operation math.trig.y_acc eroxified.internal /= math.trig.op eroxified.internal
scoreboard players operation math.trig.y eroxified.internal += math.trig.y_acc eroxified.internal
scoreboard players set math.trig.y_acc eroxified.internal 515
scoreboard players operation math.trig.y_acc eroxified.internal *= math.trig.x-a eroxified.internal
scoreboard players operation math.trig.y_acc eroxified.internal /= math.trig.op eroxified.internal
scoreboard players operation math.trig.y_acc eroxified.internal *= math.trig.x-a eroxified.internal
scoreboard players operation math.trig.y_acc eroxified.internal /= math.trig.op eroxified.internal
scoreboard players operation math.trig.y eroxified.internal += math.trig.y_acc eroxified.internal
