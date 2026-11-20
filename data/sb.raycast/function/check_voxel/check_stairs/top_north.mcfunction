data modify storage sensha_beams:raycast partial.cuboids_to_check set from storage sensha_beams:raycast/table top_north

execute \
    positioned ~ ~ ~ \
    if predicate sb.raycast:stairs/top_north \
    if function sb.raycast:partial/run \
    run return run function sb.raycast:check_voxel/store_raycast_result
return 0
