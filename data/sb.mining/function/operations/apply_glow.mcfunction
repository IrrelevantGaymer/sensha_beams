data \
    modify entity @s item.components."minecraft:custom_model_data".colors \
    set value [[1.0, 0.0, 0.0]]
$execute \
    as @e[ \
        type=minecraft:item_display, \
        tag=leaf_sensha_beam, \
        nbt={data:{root_UUID: $(root_UUID)}} \
    ] \
    run data \
        modify entity @s item.components."minecraft:custom_model_data".colors \
        set value [[1.0, 0.0, 0.0]]