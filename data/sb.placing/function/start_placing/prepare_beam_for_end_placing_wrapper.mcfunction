$execute \
    as @e[ \
        type=minecraft:item_display, \
        tag=placing_sensha_beam, \
        nbt={data: {Owner: $(UUID)}}, \
        limit=1, sort=arbitrary \
    ] \
    run function sb.placing:start_placing/prepare_beam_for_end_placing