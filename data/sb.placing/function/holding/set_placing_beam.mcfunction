tag @s add sb.holding_beam
tag @s remove sb.end_place
tag @s add sb.start_place

execute \
    store result score @s sb.holding_beam_selected_slot \
    run data get entity @s SelectedItemSlot

data modify storage sensha_beams:placing Owner set from entity @s UUID
data modify \
    storage sensha_beams:placing sensha_beam \
    set from entity @s SelectedItem.components."minecraft:custom_data".sensha_beam
data remove storage sensha_beams:placing dyed_color
execute \
    if data entity @s SelectedItem.components."minecraft:dyed_color" \
    run data modify \
        storage sensha_beams:placing dyed_color \
        set from entity @s SelectedItem.components."minecraft:dyed_color"
data modify storage sensha_beams:placing count set from entity @s SelectedItem.count

data modify storage sensha_beams:placing rand_delta.x set compute default float sb.placing:randomized_delta
data modify storage sensha_beams:placing rand_delta.y set compute default float sb.placing:randomized_delta
data modify storage sensha_beams:placing rand_delta.z set compute default float sb.placing:randomized_delta

execute summon minecraft:item_display run function sb.placing:holding/set_placing_beam_data