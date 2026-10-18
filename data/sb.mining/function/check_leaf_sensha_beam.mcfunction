data \
    modify storage sensha_beams:mining root_UUID \
    set from entity @s data.root_UUID

execute \
    if function sb.mining:predicates/has_root_been_checked \
    run return 1

function sb.mining:check_root_of_leaf_sensha_beam with storage sensha_beams:mining