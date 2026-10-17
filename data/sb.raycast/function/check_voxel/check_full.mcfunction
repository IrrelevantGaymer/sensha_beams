$execute \
    if data storage sb.debug {raycast: true} \
    run say checking voxel ($(voxel_x), $(voxel_y), $(voxel_z))

$execute \
    unless block $(voxel_x) $(voxel_y) $(voxel_z) #sb.raycast:passthrough \
    run return run function sb.raycast:check_voxel/store_raycast_result with entity @s data
return 0