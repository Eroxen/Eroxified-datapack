scoreboard players set math.trig.y eroxified.internal 12914
scoreboard players set math.trig.op eroxified.internal 1000
scoreboard players operation math.trig.x-a eroxified.internal = math.trig.x eroxified.internal
scoreboard players remove math.trig.x-a eroxified.internal 3250
scoreboard players set math.trig.y_acc eroxified.internal 12875
scoreboard players operation math.trig.y_acc eroxified.internal *= math.trig.x-a eroxified.internal
scoreboard players operation math.trig.y_acc eroxified.internal /= math.trig.op eroxified.internal
scoreboard players operation math.trig.y eroxified.internal += math.trig.y_acc eroxified.internal
scoreboard players set math.trig.y_acc eroxified.internal 6457
scoreboard players operation math.trig.y_acc eroxified.internal *= math.trig.x-a eroxified.internal
scoreboard players operation math.trig.y_acc eroxified.internal /= math.trig.op eroxified.internal
scoreboard players operation math.trig.y_acc eroxified.internal *= math.trig.x-a eroxified.internal
scoreboard players operation math.trig.y_acc eroxified.internal /= math.trig.op eroxified.internal
scoreboard players operation math.trig.y eroxified.internal += math.trig.y_acc eroxified.internal
