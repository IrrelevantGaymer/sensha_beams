tag @s add sb.invalid_start

$tag @e[ \
    type=minecraft:item_display, \
    tag=placing_sensha_beam, \
    nbt={data: {Owner: $(UUID)}}, \
    limit=1, sort=arbitrary \
] add sb.start_placing_beam

function sb.raycast:setup

execute \
    anchored eyes \
    unless function sb.raycast:run \
    as @e[ \
        type=minecraft:item_display, \
        tag=placing_sensha_beam, tag=sb.start_placing_beam, \
        limit=1, sort=arbitrary \
    ] \
    run return run function sb.placing:start_placing/reset_invalid_start_beam

tag @s remove sb.invalid_start

execute \
    as @e[ \
        type=minecraft:item_display, \
        tag=placing_sensha_beam, tag=sb.start_placing_beam, \
        limit=1, sort=arbitrary \
    ] \
    run return run function sb.placing:start_placing/handle_start_beam