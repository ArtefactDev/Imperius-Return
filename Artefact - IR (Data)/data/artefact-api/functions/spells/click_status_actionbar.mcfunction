#gives an action bar based on your current spell state
#@s - primary player
#called by artefact-api:click_detection/[left_click/right_click]

execute unless score click_2 spells matches 1..2 unless score click_3 spells matches 1..2 run title @s actionbar [{"translate":"text.artefact.actionbar.health","color":"red"}," ",{"score":{"name":"@s","objective":"health_bar"},"color":"red"},"              ",{"translate":"text.artefact.actionbar.spells.click_status.r_x_x","color":"gray"},"              ",{"translate":"text.artefact.actionbar.mana","color":"aqua"}," ",{"score":{"name":"@s","objective":"food_bar"},"color":"aqua"}]

execute if score click_2 spells matches 2 unless score click_3 spells matches 1..2 run title @s actionbar [{"translate":"text.artefact.actionbar.health","color":"red"}," ",{"score":{"name":"@s","objective":"health_bar"},"color":"red"},"              ",{"translate":"text.artefact.actionbar.spells.click_status.r_r_x","color":"gray"},"              ",{"translate":"text.artefact.actionbar.mana","color":"aqua"}," ",{"score":{"name":"@s","objective":"food_bar"},"color":"aqua"}]
execute if score click_2 spells matches 2 if score click_3 spells matches 2 run title @s actionbar [{"translate":"text.artefact.actionbar.health","color":"red"}," ",{"score":{"name":"@s","objective":"health_bar"},"color":"red"},"              ",{"translate":"text.artefact.actionbar.spells.click_status.r_r_r","color":"gray"},"              ",{"translate":"text.artefact.actionbar.mana","color":"aqua"}," ",{"score":{"name":"@s","objective":"food_bar"},"color":"aqua"}]

execute if score click_2 spells matches 1 unless score click_3 spells matches 1..2 run title @s actionbar [{"translate":"text.artefact.actionbar.health","color":"red"}," ",{"score":{"name":"@s","objective":"health_bar"},"color":"red"},"              ",{"translate":"text.artefact.actionbar.spells.click_status.r_l_x","color":"gray"},"              ",{"translate":"text.artefact.actionbar.mana","color":"aqua"}," ",{"score":{"name":"@s","objective":"food_bar"},"color":"aqua"}]
execute if score click_2 spells matches 1 if score click_3 spells matches 1 run title @s actionbar [{"translate":"text.artefact.actionbar.health","color":"red"}," ",{"score":{"name":"@s","objective":"health_bar"},"color":"red"},"              ",{"translate":"text.artefact.actionbar.spells.click_status.r_l_l","color":"gray"},"              ",{"translate":"text.artefact.actionbar.mana","color":"aqua"}," ",{"score":{"name":"@s","objective":"food_bar"},"color":"aqua"}]

execute if score click_2 spells matches 2 if score click_3 spells matches 1 run title @s actionbar [{"translate":"text.artefact.actionbar.health","color":"red"}," ",{"score":{"name":"@s","objective":"health_bar"},"color":"red"},"              ",{"translate":"text.artefact.actionbar.spells.click_status.r_r_l","color":"gray"},"              ",{"translate":"text.artefact.actionbar.mana","color":"aqua"}," ",{"score":{"name":"@s","objective":"food_bar"},"color":"aqua"}]
execute if score click_2 spells matches 1 if score click_3 spells matches 2 run title @s actionbar [{"translate":"text.artefact.actionbar.health","color":"red"}," ",{"score":{"name":"@s","objective":"health_bar"},"color":"red"},"              ",{"translate":"text.artefact.actionbar.spells.click_status.r_l_r","color":"gray"},"              ",{"translate":"text.artefact.actionbar.mana","color":"aqua"}," ",{"score":{"name":"@s","objective":"food_bar"},"color":"aqua"}]
