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
data modify storage sensha_beams:placing count set from entity @s SelectedItem.count

data modify \
    storage sensha_beams:placing start_place_sound \
    set from entity @s SelectedItem.components."minecraft:custom_data".start_place_sound
data modify \
    storage sensha_beams:placing active_place_sound \
    set from entity @s SelectedItem.components."minecraft:custom_data".active_place_sound
data modify \
    storage sensha_beams:placing end_place_sound \
    set from entity @s SelectedItem.components."minecraft:custom_data".end_place_sound

data modify storage sensha_beams:placing rand_delta.x set compute default float sb.placing:randomized_delta
data modify storage sensha_beams:placing rand_delta.y set compute default float sb.placing:randomized_delta
data modify storage sensha_beams:placing rand_delta.z set compute default float sb.placing:randomized_delta

execute summon minecraft:item_display run function sb.placing:holding/set_placing_beam_data