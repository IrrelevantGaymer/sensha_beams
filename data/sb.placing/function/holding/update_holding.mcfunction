tag @s remove sb.end_place
tag @s add sb.start_place

$tag @e[ \
    type=minecraft:item_display, \
    nbt={data: {Owner: $(UUID)}}, \
    limit=1, \
    sort=arbitrary \
] add sb.update

execute \
    store result score @s sb.holding_beam_selected_slot \
    run data get entity @s SelectedItemSlot

data modify \
    storage sensha_beams:placing sensha_beam \
    set from entity @s SelectedItem.components."minecraft:custom_data".sensha_beam
data modify storage sensha_beams:placing count set from entity @s SelectedItem.count

data modify storage sensha_beams:placing rand_delta.x set compute default float sb.placing:randomized_delta
data modify storage sensha_beams:placing rand_delta.y set compute default float sb.placing:randomized_delta
data modify storage sensha_beams:placing rand_delta.z set compute default float sb.placing:randomized_delta

execute \
    as @e[ \
        type=minecraft:item_display, \
        tag=placing_sensha_beam, tag=sb.update \
    ] \
    run function sb.placing:holding/set_placing_beam_data