$data \
    modify entity @e[ \
        type=minecraft:marker, \
        nbt={data: {UUID: $(UUID)}}, \
        limit=1, sort=arbitrary \
    ] data.closest_beam_distance \
    set from entity @s data.distance
$data \
    modify entity @e[ \
        type=minecraft:marker, \
        nbt={data:{UUID: $(UUID)}}, \
        limit=1, sort=arbitrary \
    ] data.beam_start_pos_x \
    set from entity @s data.start_pos_x 
$data \
    modify entity @e[ \
        type=minecraft:marker, \
        nbt={data:{UUID: $(UUID)}}, \
        limit=1, sort=arbitrary \
    ] data.beam_start_pos_y \
    set from entity @s data.start_pos_y 
$data \
    modify entity @e[ \
        type=minecraft:marker, \
        nbt={data:{UUID: $(UUID)}}, \
        limit=1, sort=arbitrary \
    ] data.beam_start_pos_z \
    set from entity @s data.start_pos_z 
$data \
    modify entity @e[ \
        type=minecraft:marker, \
        nbt={data:{UUID: $(UUID)}}, \
        limit=1, sort=arbitrary \
    ] data.beam_yaw \
    set from entity @s Rotation[0] 
$data \
    modify entity @e[ \
        type=minecraft:marker, \
        nbt={data:{UUID: $(UUID)}}, \
        limit=1, sort=arbitrary \
    ] data.beam_pitch \
    set from entity @s Rotation[1] 
$data \
    modify entity @e[ \
        type=minecraft:marker, \
        nbt={data:{UUID: $(UUID)}}, \
        limit=1, sort=arbitrary \
    ] data.beam_length \
    set from entity @s data.length 
$data \
    modify entity @e[ \
        type=minecraft:marker, \
        nbt={data:{UUID: $(UUID)}}, \
        limit=1, sort=arbitrary \
    ] data.checked_beams \
    append value {}
$data \
    modify entity @e[ \
        type=minecraft:marker, \
        nbt={data:{UUID: $(UUID)}}, \
        limit=1, sort=arbitrary \
    ] data.checked_beams[-1].UUID \
    set from entity @e[ \
        type=minecraft:marker, \
        nbt={data:{UUID: $(UUID)}}, \
        limit=1, sort=arbitrary \
    ] data.beam_root_UUID