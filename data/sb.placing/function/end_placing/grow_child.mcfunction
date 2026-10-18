data modify storage sensha_beams:placing length_to_place set compute default float sb.placing:decrement_length_to_place

tag @s add leaf_sensha_beam
data modify entity @s data.root_UUID set from storage sensha_beams:placing root_UUID
function sb.placing:rotate_to_angles with storage sensha_beams:placing
execute \
    rotated as @s positioned as @s \
    run function sb.placing:end_placing/place_beam_segments
