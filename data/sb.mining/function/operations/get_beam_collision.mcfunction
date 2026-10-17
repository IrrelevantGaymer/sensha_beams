function sb.mining:operations/convert_rotation_to_radians with entity @s data
function sb.mining:operations/get_beam_transformation_vectors with entity @s data
function sb.mining:operations/get_beam_center with entity @s data
function sb.mining:operations/get_offset_vector with entity @s data
function sb.mining:operations/get_transformed_dir_and_offset with entity @s data
function sb.mining:operations/get_beam_bounding_box with entity @s data
function sb.mining:operations/get_t_components with entity @s data
function sb.mining:operations/get_ts with entity @s data

execute \
    if function sb.mining:predicates/is_intersection \
    if function sb.mining:predicates/is_closer_intersection \
    run function sb.mining:operations/store_intersection with entity @s data
