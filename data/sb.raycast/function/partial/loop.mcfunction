data modify storage sensha_beams:raycast partial.cuboid set from storage sensha_beams:raycast partial.cuboids_to_check[-1]

data modify storage sensha_beams:raycast partial.t_min set compute default float \
    {type: "minecraft:max", inputs: [ \
        "sb.raycast:calculate_partial.t_min.x", \
        "sb.raycast:calculate_partial.t_min.y", \
        "sb.raycast:calculate_partial.t_min.z" \
    ]}
data modify storage sensha_beams:raycast partial.t_max set compute default float \
    {type: "minecraft:min", inputs: [ \
        "sb.raycast:calculate_partial.t_max.x", \
        "sb.raycast:calculate_partial.t_max.y", \
        "sb.raycast:calculate_partial.t_max.z" \
    ]}
data modify storage sensha_beams:raycast partial.axis set compute default integer sb.raycast:calculate_partial.axis

execute \
    if predicate sb.raycast:is_partial_intersection \
    if predicate sb.raycast:is_partial_closer_intersection \
    run function sb.raycast:partial/prepare_store
    
data remove storage sensha_beams:raycast partial.cuboids_to_check[-1]

execute \
    unless data storage sensha_beams:raycast {partial: {cuboids_to_check: []}} \
    run function sb.raycast:partial/loop