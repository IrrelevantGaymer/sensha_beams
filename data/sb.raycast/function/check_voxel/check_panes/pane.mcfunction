data modify storage sensha_beams:raycast partial.cuboids_to_check set from storage sensha_beams:raycast/table pane

execute \
    positioned ~ ~ ~ \
    if predicate sb.raycast:panes/pane \
    if function sb.raycast:partial/run \
    run return run function sb.raycast:check_voxel/store_raycast_result
return 0
