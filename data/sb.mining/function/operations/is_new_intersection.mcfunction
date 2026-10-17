$execute \
    unless data entity @s {data: {prev_closest_beam_UUID: $(closest_beam_UUID)}} \
    run return 1
return 0