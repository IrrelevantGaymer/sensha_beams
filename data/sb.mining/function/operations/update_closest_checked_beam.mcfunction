execute \
    unless data entity @s data.closest_beam_distance \
    run data remove entity @s data.prev_closest_beam_distance
execute \
    if data entity @s data.closest_beam_distance \
    run data \
        modify entity @s data.prev_closest_beam_distance \
        set from entity @s data.closest_beam_distance
execute \
    if data entity @s data.distance \
    run data modify entity @s data.closest_beam_distance set from entity @s data.distance
execute \
    unless data entity @s data.distance \
    run data modify entity @s data.closest_beam_distance set from entity @s data.max_distance

execute \
    unless data entity @s data.closest_beam_UUID \
    run data remove entity @s data.prev_closest_beam_UUID
execute \
    if data entity @s data.closest_beam_UUID \
    run data \
        modify entity @s data.prev_closest_beam_UUID \
        set from entity @s data.closest_beam_UUID
data remove entity @s data.closest_beam_UUID