execute \
    unless function sb.placing:predicates/does_length_to_place_exceed_max_segment_length \
    run return run function sb.placing:end_placing/set_beam_segment with entity @s data

data modify entity @s transformation.scale[0] set value 1.0
data modify entity @s transformation.scale[1] set value 1.0
data modify entity @s transformation.scale[2] set value 1.0
data modify entity @s data.nearest_subvoxel_length set value 16
data modify entity @s item set value {"id": "minecraft:potion", "count": 1}
data modify entity @s item_display set value "none"
function sb.placing:operations/set_item_model with entity @s data
data modify entity @s data.crowbar_source_UUIDs set value []

$execute \
    rotated as @s \
    positioned ^ ^ ^1 \
    summon minecraft:item_display \
    run function sb.placing:end_placing/grow_child { \
        root_UUID: $(root_UUID), \
        sensha_beam: $(sensha_beam), \
        length_to_place: $(length_to_place), \
        yaw: $(yaw), \
        pitch: $(pitch) \
    }