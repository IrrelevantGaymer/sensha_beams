$execute \
    as @e[type=item_display] \
    unless entity @s[tag=!leaf_sensha_beam, tag=!root_sensha_beam] \
    if entity @s[nbt={data:{root_UUID: $(closest_beam_UUID)}}] \
    run tag @s add sb.beam_to_mine

data modify \
    storage sensha_beams:mining sensha_beam \
    set from entity @e[ \
        type=minecraft:item_display, \
        tag=root_sensha_beam, tag=sb.beam_to_mine, \
        limit=1, sort=arbitrary \
    ] data.sensha_beam
data modify \
    storage sensha_beams:mining length \
    set from entity @e[ \
        type=minecraft:item_display, \
        tag=root_sensha_beam, tag=sb.beam_to_mine, \
        limit=1, sort=arbitrary \
    ] data.length
data modify \
    storage sensha_beams:mining cost \
    set compute default integer \
        {type: "minecraft:from_float", input: {type: "minecraft:round", \
            input: {type: "minecraft:mul", inputs: ["sb.mining:var/length", 4.0]} \
        }}
data modify storage sensha_beams:mining hit set from entity @s data.hit
data modify storage sensha_beams:mining hit_x set from storage sensha_beams:mining hit.x
data modify storage sensha_beams:mining hit_y set from storage sensha_beams:mining hit.y
data modify storage sensha_beams:mining hit_z set from storage sensha_beams:mining hit.z
# TODO make loot appear at raycast hit point
execute \
    if data storage sensha_beams:mining {gamemode: 0} \
    run function sb.mining:drop_loot_root with storage sensha_beams:mining

kill @e[ \
    type=minecraft:item_display, \
    tag=sb.beam_to_mine \
]