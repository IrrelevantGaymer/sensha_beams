execute \
    if data storage sensha_beams:mining {has_prev_closest_beam: true} \
    if data storage sensha_beams:mining {has_closest_beam: true} \
    unless entity @e[ \
        type=minecraft:item_display, \
        tag=root_sensha_beam, \
        tag=sb.prev_closest_beam, tag=sb.closest_beam \
    ] \
    run return run return 1

execute \
    unless data storage sensha_beams:mining {has_prev_closest_beam: true} \
    if data storage sensha_beams:mining {has_closest_beam: true} \
    run return run return 1
execute \
    if data storage sensha_beams:mining {has_prev_closest_beam: true} \
    unless data storage sensha_beams:mining {has_closest_beam: true} \
    run return run return 1

return 0