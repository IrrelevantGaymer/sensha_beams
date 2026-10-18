execute \
    if data storage sensha_beams:raycast distance \
    run data modify \
        storage sensha_beams:mining closest_beam_distance \
        set from storage sensha_beams:raycast distance

execute \
    unless data storage sensha_beams:raycast distance \
    run data modify \
        storage sensha_beams:mining closest_beam_distance \
        set from storage sensha_beams:raycast max_distance

data remove storage sensha_beams:mining has_prev_closest_beam
data remove storage sensha_beams:mining closest_beam_UUID

execute \
    unless data entity @s data.closest_beam_UUID \
    run return 1

data modify storage sensha_beams:mining has_prev_closest_beam set value true
data modify \
    storage sensha_beams:mining closest_beam_UUID \
    set from entity @s data.closest_beam_UUID
function sb.mining:operations/tag_closest_beam with storage sensha_beams:mining