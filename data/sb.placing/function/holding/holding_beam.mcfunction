execute \
    as @a \
    store result score @s sb.current_selected_slot \
    run data get entity @s SelectedItemSlot
execute \
    as @a at @s \
    if entity @s[tag=!sb.holding_beam] \
    if data entity @s SelectedItem.components."minecraft:custom_data".is_sensha_beam \
    run function sb.placing:holding/set_placing_beam
execute \
    as @a \
    if entity @s[tag=sb.holding_beam] \
    unless data entity @s SelectedItem.components."minecraft:custom_data".is_sensha_beam \
    run function sb.placing:holding/clean_placing_beam with entity @s
execute \
    as @a \
    if entity @s[tag=sb.holding_beam] \
    unless score @s sb.current_selected_slot = @s sb.holding_beam_selected_slot \
    run function sb.placing:holding/update_holding with entity @s