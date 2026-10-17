data \
    remove entity @s item.components."minecraft:custom_model_data".colors
$execute \
    as @e[ \
        type=minecraft:item_display, \
        tag=leaf_sensha_beam, \
        nbt={data:{root_UUID: $(root_UUID)}} \
    ] \
    run data \
        remove entity @s item.components."minecraft:custom_model_data".colors