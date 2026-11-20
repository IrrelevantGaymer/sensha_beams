data modify storage sensha_beams:raycast partial.distance set from storage sensha_beams:raycast max_distance
data remove storage sensha_beams:raycast partial.has_closest_cuboid

function sb.raycast:partial/loop

execute \
    if data storage sensha_beams:raycast {partial: {has_closest_cuboid: true}} \
    run return 1
return 0