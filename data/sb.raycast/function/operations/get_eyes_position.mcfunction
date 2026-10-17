$summon minecraft:marker ~ ~ ~ {data: {UUID: $(UUID)}, Tags: ["sb.eyes_marker"]}

$data modify entity @s data.origin_x set from entity \
    @e[type=minecraft:marker, tag=sb.eyes_marker, nbt={data: {UUID: $(UUID)}}, limit=1, sort=arbitrary] \
    Pos[0]
$data modify entity @s data.origin_y set from entity \
    @e[type=minecraft:marker, tag=sb.eyes_marker, nbt={data: {UUID: $(UUID)}}, limit=1, sort=arbitrary] \
    Pos[1]
$data modify entity @s data.origin_z set from entity \
    @e[type=minecraft:marker, tag=sb.eyes_marker, nbt={data: {UUID: $(UUID)}}, limit=1, sort=arbitrary] \
    Pos[2]

$kill @e[type=minecraft:marker, tag=sb.eyes_marker, nbt={data: {UUID: $(UUID)}}]