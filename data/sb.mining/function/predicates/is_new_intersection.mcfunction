execute \
    if data entity @s data.prev_closest_beam_UUID \
    if data entity @s data.closest_beam_UUID \
    run return run function sb.mining:operations/is_new_intersection with entity @s data

execute \
    unless data entity @s data.prev_closest_beam_UUID \
    if data entity @s data.closest_beam_UUID \
    run return 1
execute \
    if data entity @s data.prev_closest_beam_UUID \
    unless data entity @s data.closest_beam_UUID \
    run return 1
return 0