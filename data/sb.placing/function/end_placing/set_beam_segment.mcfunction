function sb.placing:operations/calculate_nearest_subvoxel_length with entity @s data
function sb.placing:operations/calculate_fixed_scale with entity @s data
data modify entity @s transformation.scale[0] set value 1.0
data modify entity @s transformation.scale[1] set value 1.0
data modify entity @s transformation.scale[2] set from entity @s data.fixed_scale
data modify entity @s item set value {"id": "minecraft:potion", "count": 1}
data modify entity @s item_display set value "none"
function sb.placing:operations/set_item_model with entity @s data
data modify entity @s data.crowbar_source_UUIDs set value []

data remove entity @s data.length_to_place
data remove entity @s data.nearest_subvoxel_length
data remove entity @s data.fixed_scale
