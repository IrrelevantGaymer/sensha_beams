$data modify entity @s data.length_to_place set value $(length_to_place)
$data modify entity @s data.sensha_beam set value $(sensha_beam)
function sb.placing:operations/decrement_length_to_place with entity @s data
tag @s add leaf_sensha_beam
$data modify entity @s data.root_UUID set value $(root_UUID)
$data modify entity @s data.yaw set value $(yaw)
data modify entity @s Rotation[0] set from entity @s data.yaw
$data modify entity @s data.pitch set value $(pitch)
data modify entity @s Rotation[1] set from entity @s data.pitch
execute as @s rotated as @s positioned as @s run function sb.placing:end_placing/place_beam_segments with entity @s data

data remove entity @s data.length_to_place
data remove entity @s data.yaw
data remove entity @s data.pitch
