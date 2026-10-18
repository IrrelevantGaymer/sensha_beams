$execute \
    if entity @e[ \
        type=minecraft:item_display, \
        tag=root_sensha_beam, tag=checked_beam, \
        nbt={UUID: $(root_UUID)} \
    ] \
    run return 1
return 0