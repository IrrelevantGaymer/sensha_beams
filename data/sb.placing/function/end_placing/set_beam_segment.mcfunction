data modify storage sensha_beams:placing nearest_subvoxel_length set compute default integer sb.placing:calculate_nearest_subvoxel_length
data modify storage sensha_beams:placing fixed_scale set compute default float sb.placing:calculate_fixed_scale

data modify storage sensha_beams:placing scale set value [None, None, None]
data modify storage sensha_beams:placing scale[0] set value 1.0
data modify storage sensha_beams:placing scale[1] set value 1.0
data modify storage sensha_beams:placing scale[2] set from storage sensha_beams:placing fixed_scale
data modify entity @s transformation.scale set from storage sensha_beams:placing scale

data merge entity @s {item: {id: "minecraft:potion"}, item_display: "none"}
function sb.placing:operations/set_item_model with storage sensha_beams:placing
