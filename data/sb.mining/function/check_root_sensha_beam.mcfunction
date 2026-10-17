# We shouldn't need to check if a root has been checked already
# because UUIDs are unique and for each player, each root will 
# only be executed once per cycle

$data \
    modify entity @e[ \
        type=minecraft:marker, \
        nbt={data: {UUID: $(UUID)}}, \
        limit=1, sort=arbitrary \
    ] data.beam_root_UUID \
    set from entity @s data.root_UUID

$function sb.mining:setup_collision_check {UUID: $(UUID)}
$execute \
    as @e[ \
        type=minecraft:marker, \
        nbt={data:{UUID: $(UUID)}} \
    ] \
    run function sb.mining:operations/get_beam_collision