data modify storage sensha_beams:placing count set from entity @s SelectedItem.count
data modify storage sensha_beams:placing gamemode set from entity @s playerGameType
data modify storage sensha_beams:placing UUID set from entity @s UUID

$tag @e[ \
    type=minecraft:item_display, \
    tag=placing_sensha_beam, \
    nbt={data: {Owner: $(UUID)}}, \
    limit=1, sort=arbitrary \
] add sb.end_placing_beam

function sb.raycast:setup

tag @s add sb.end_placing_player

execute \
    anchored eyes \
    unless function sb.raycast:run \
    as @e[ \
        type=minecraft:item_display, \
        tag=placing_sensha_beam, tag=sb.end_placing_beam, \
        limit=1, sort=arbitrary \
    ] \
    run return run function sb.placing:end_placing/reset_invalid_end_beam

execute \
    as @e[ \
        type=minecraft:item_display, \
        tag=placing_sensha_beam, tag=sb.end_placing_beam, \
        limit=1, sort=arbitrary \
    ] \
    run return run function sb.placing:end_placing/handle_end_beam