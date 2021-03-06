#activates ability
#@s - primary player
#called by origami-games:artefact/api/action_detection/flick/execute

#audiovisuals
playsound minecraft:entity.wolf.growl player @a[distance=..20] ~ ~ ~ 100 1 1

#functionality
effect give @s minecraft:speed 4 2
effect give @s minecraft:strength 4 1
effect give @s minecraft:regeneration 4 0

#scores
scoreboard players set flick.timer abilities 0

scoreboard players operation last_used abilities = rage ability_id
scoreboard players operation rage ability_cooldown = rage.start ability_cooldown

#remove energy
execute if entity @s[gamemode=!creative,gamemode=!spectator] run scoreboard players remove level energy 20
