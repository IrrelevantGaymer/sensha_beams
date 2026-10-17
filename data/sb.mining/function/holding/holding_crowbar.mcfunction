execute \
    as @a at @s \
    if entity @s[tag=!sb.holding_crowbar] \
    if data entity @s SelectedItem.components."minecraft:custom_data".is_sensha_crowbar \
    run function sb.mining:holding/set_crowbar_marker with entity @s
execute \
    as @a \
    if entity @s[tag=sb.holding_crowbar] \
    unless data entity @s SelectedItem.components."minecraft:custom_data".is_sensha_crowbar \
    run function sb.mining:holding/clean_crowbar_marker with entity @s