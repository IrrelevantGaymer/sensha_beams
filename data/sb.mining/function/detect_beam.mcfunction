$execute \
    anchored eyes positioned ^ ^ ^ \
    as @e[ \
        type=minecraft:marker, \
        tag=sensha_crowbar, \
        nbt={data: {UUID: $(UUID)}}, \
        limit=1, sort=arbitrary \
    ] \
    run tp @s ~ ~ ~

function sb.mining:setup_raycast with entity @s
$execute \
    anchored eyes positioned ^ ^ ^ \
    as @e[ \
        type=minecraft:marker, \
        tag=sensha_crowbar, \
        nbt={data: {UUID: $(UUID)}}, \
        limit=1, sort=arbitrary \
    ] \
    run function sb.raycast:run

$execute \
    as @e[ \
        type=marker, tag=sensha_crowbar, \
        nbt={data:{UUID: $(UUID)}}, \
        limit=1, sort=arbitrary \
    ] \
    run function sb.mining:operations/update_closest_checked_beam
$execute \
    as @e[ \
        type=marker, tag=sensha_crowbar, \
        nbt={data:{UUID: $(UUID)}}, \
        limit=1, sort=arbitrary \
    ] \
    run function sb.mining:operations/reset_checked_beams

# We have to do a distance of max_reach + 1, because a beam can be one block long, 
# where its origin is on the furthest end of the beam outside the players reach
# while the closest end is within the players reach 
$execute \
    anchored eyes \
    as @e[type=minecraft:item_display, tag=root_sensha_beam, distance=..6.0] \
    run function sb.mining:check_root_sensha_beam {UUID: $(UUID)}
$execute \
    anchored eyes \
    as @e[type=minecraft:item_display, tag=leaf_sensha_beam, distance=..6.0] \
    run function sb.mining:check_leaf_sensha_beam {UUID: $(UUID)}

$execute \
    as @e[type=marker, tag=sensha_crowbar, nbt={data:{UUID: $(UUID)}}] \
    if function sb.mining:predicates/is_new_intersection \
    run function sb.mining:update_beam_glows with entity @s data