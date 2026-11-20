data modify storage sensha_beams:raycast partial.cuboids_to_check set from storage sensha_beams:raycast/table bottom_outer_southeast

execute \
    positioned ~ ~ ~ \
    if predicate sb.raycast:stairs/bottom_outer_southeast \
    if function sb.raycast:partial/run \
    run return run function sb.raycast:check_voxel/store_raycast_result
return 0
