#entity checks
#@s - console
#called by origami-games:artefact/core/tick

#inferno
execute as @e[type=minecraft:armor_stand,tag=spell_visual.fire_explosion,nbt={OnGround:1b}] at @s run function origami-games:artefact/api/spells/visual/inferno/kill_fire.pre
execute as @e[type=minecraft:armor_stand,tag=spell_visual.fire_explosion.post] at @s if block ~ ~ ~ minecraft:fire run function origami-games:artefact/api/spells/visual/inferno/kill_fire

execute at @e[type=minecraft:falling_block,tag=spell_visual.fire_explosion.falling_block] run function origami-games:artefact/api/spells/visual/inferno/damage

#submerge
execute as @e[type=minecraft:area_effect_cloud,tag=spell_visual.rain] at @s run function origami-games:artefact/api/spells/visual/submerge/effects

#generic checks
kill @e[type=minecraft:armor_stand,tag=spell_visual,tag=!lifetime_manual_kill,scores={lifetime=100..}]
kill @e[type=minecraft:area_effect_cloud,tag=spell_visual,tag=!lifetime_manual_kill,scores={lifetime=100..}]
