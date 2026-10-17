$data \
    modify entity @e[\
        type=minecraft:item_display, \
        tag=root_sensha_beam, \
        nbt={data:{root_UUID: $(closest_beam_UUID)}}, \
        limit=1, sort=arbitrary \
    ] data.crowbar_source_UUIDs \
    append value {UUID: $(UUID)}