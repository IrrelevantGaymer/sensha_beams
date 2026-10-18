$tag @e[ \
    type=minecraft:marker, tag=sensha_crowbar, \
    nbt={data:{Owner: $(UUID)}}, \
    limit=1, sort=arbitrary \
] add sb.mining_beam

data modify storage sensha_beams:mining gamemode set from entity @s playerGameType
data modify \
    storage sensha_beams:mining closest_beam_UUID \
    set from entity @e[ \
        type=minecraft:marker, tag=sensha_crowbar, tag=sb.mining_beam, \
        limit=1, sort=arbitrary \
    ] data.closest_beam_UUID

function sb.mining:mine_beam with storage sensha_beams:mining