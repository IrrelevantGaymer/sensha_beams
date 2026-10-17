# Call this function as an entity with origin_x, oriin_y, origin_z, pitch, and yaw

function sb.raycast:operations/reset_distance with entity @s data
function sb.raycast:operations/convert_rotation_to_radians with entity @s data
function sb.raycast:operations/get_normalized_dir with entity @s data
function sb.raycast:operations/get_origin_voxel with entity @s data
function sb.raycast:operations/get_step with entity @s data
function sb.raycast:operations/get_t_delta with entity @s data
function sb.raycast:operations/get_t_max with entity @s data

# starting loop
return run function sb.raycast:loop with entity @s data
