data modify storage sensha_beams:raycast partial.cuboids_to_check set from storage sensha_beams:raycast/table walls.south_tall_east_low_west_low_wall

execute \
    if function sb.raycast:partial/run \
    run return run function sb.raycast:check_voxel/store_raycast_result
return 0
