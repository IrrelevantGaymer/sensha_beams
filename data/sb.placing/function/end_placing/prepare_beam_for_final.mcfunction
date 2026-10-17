tag @s remove placing_sensha_beam
tag @s add root_sensha_beam

function sb.raycast:clean

data remove entity @s data.UUID
data remove entity @s data.count
data modify entity @s data.length_to_place set from entity @s data.length
data modify entity @s data.root_UUID set from entity @s UUID
data modify entity @s data.yaw set from entity @s Rotation[0]
data modify entity @s data.pitch set from entity @s Rotation[1]
data modify entity @s Pos[0] set from entity @s data.start_pos_x
data modify entity @s Pos[1] set from entity @s data.start_pos_y
data modify entity @s Pos[2] set from entity @s data.start_pos_z
data remove entity @s brightness

execute positioned as @s run function sb.placing:end_placing/place_beam_segments with entity @s data

data remove entity @s data.length_to_place
data remove entity @s data.yaw
data remove entity @s data.pitch