$tag @e[ \
    type=minecraft:marker, \
    tag=sensha_crowbar, \
    nbt={data: {Owner: $(UUID)}}, \
    limit=1, sort=arbitrary \
] add sb.detecting_beam

data remove storage sensha_beams:mining has_closest_beam

execute \
    anchored eyes positioned ^ ^ ^ \
    as @e[ \
        type=minecraft:marker, \
        tag=sensha_crowbar, tag=sb.detecting_beam, \
        limit=1, sort=arbitrary \
    ] \
    run tp @s ~ ~ ~

function sb.raycast:setup
execute anchored eyes run function sb.raycast:run

execute \
    as @e[ \
        type=minecraft:marker, \
        tag=sensha_crowbar, tag=sb.detecting_beam, \
        limit=1, sort=arbitrary \
    ] \
    run function sb.mining:operations/update_closest_checked_beam

tag @e[type=minecraft:item_display, tag=root_sensha_beam, tag=checked_beam] remove checked_beam

# We have to do a distance of max_reach + 1, because a beam can be one block long, 
# where its origin is on the furthest end of the beam outside the players reach
# while the closest end is within the players reach 

# TODO implement frustrum culling
execute \
    anchored eyes \
    as @e[type=minecraft:item_display, tag=root_sensha_beam, distance=..6.0] \
    run function sb.mining:check_root_sensha_beam
execute \
    anchored eyes \
    as @e[type=minecraft:item_display, tag=leaf_sensha_beam, distance=..6.0] \
    run function sb.mining:check_leaf_sensha_beam

execute \
    if function sb.mining:predicates/is_new_intersection \
    run function sb.mining:update_beam_glows

execute \
    as @e[ \
        type=minecraft:marker, \
        tag=sensha_crowbar, tag=sb.detecting_beam, \
        limit=1, sort=arbitrary \
    ] \
    run function sb.mining:operations/store_closest_checked_beam