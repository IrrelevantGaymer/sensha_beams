$data modify entity @s item.components."minecraft:item_model" set value \
    "sensha_beams:$(sensha_beam)/$(nearest_subvoxel_length)"
data modify entity @s item.components."minecraft:dyed_color" \
    set from storage sensha_beams:placing dyed_color