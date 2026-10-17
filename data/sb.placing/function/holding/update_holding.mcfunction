tag @s remove sb.end_place
tag @s add sb.start_place

execute \
    store result score @s sb.holding_beam_selected_slot \
    run data get entity @s SelectedItemSlot

$data \
    modify entity @e[ \
        type=minecraft:item_display, \
        nbt={data: {UUID: $(UUID)}}, \
        limit=1, \
        sort=arbitrary \
    ] data.sensha_beam \
    set from entity @s SelectedItem.components."minecraft:custom_data".sensha_beam

$data \
    modify entity @e[ \
        type=minecraft:item_display, \
        nbt={data: {UUID: $(UUID)}}, \
        limit=1, \
        sort=arbitrary \
    ] data.count \
    set from entity @s SelectedItem.count