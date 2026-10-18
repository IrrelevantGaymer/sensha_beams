execute \
    unless predicate sb.placing:does_length_to_place_exceed_max_segment_length \
    run return run function sb.placing:end_placing/set_beam_segment

data modify storage sensha_beams:placing nearest_subvoxel_length set value 16
data merge entity @s {transformation:{scale: [1.0, 1.0, 1.0]}, item: {id: "minecraft:potion"}, item_display: "none"}

function sb.placing:operations/set_item_model with storage sensha_beams:placing

execute \
    rotated as @s \
    positioned ^ ^ ^1 \
    summon minecraft:item_display \
    run function sb.placing:end_placing/grow_child