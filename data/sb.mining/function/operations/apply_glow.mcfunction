data merge entity @s {item: {components: {"minecraft:custom_model_data": { \
    colors: [[1.0, 0.0, 0.0]], \
    flags: [true] \
}}}}
$execute \
    as @e[ \
        type=minecraft:item_display, \
        tag=leaf_sensha_beam, \
        nbt={data:{root_UUID: $(root_UUID)}} \
    ] \
    run data merge entity @s {item: {components: {"minecraft:custom_model_data": { \
        colors: [[1.0, 0.0, 0.0]], \
        flags: [true] \
    }}}}