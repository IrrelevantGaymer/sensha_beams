data modify storage sensha_beams:placing delta set from entity @s data.delta

data modify storage sensha_beams:placing start_pos set from entity @s data.start_pos
data modify storage sensha_beams:placing end_pos.x set compute default float sb.placing:snap_hit.pos.x
data modify storage sensha_beams:placing end_pos.y set compute default float sb.placing:snap_hit.pos.y
data modify storage sensha_beams:placing end_pos.z set compute default float sb.placing:snap_hit.pos.z

data modify storage sensha_beams:placing length set compute default float sb.placing:calculate_length

data modify storage sensha_beams:placing cost set compute default integer { \
    type: "minecraft:from_float", input: {type: "minecraft:round", input: { \
        type: "minecraft:mul", \
        inputs: ["sb.placing:var/length", 4.0] \
    }} \
}

data modify storage sensha_beams:placing scale set value [None, None, None]
data modify storage sensha_beams:placing scale[0] set compute default float sb.placing:const/scale_plus_delta
data modify storage sensha_beams:placing scale[1] set compute default float sb.placing:const/scale_plus_delta
data modify storage sensha_beams:placing scale[2] set compute default float \
    {type: "minecraft:add", inputs: [ \
        "sb.placing:const/scale_delta", \
        "sb.placing:var/length" \
    ]}
data modify entity @s transformation.scale set from storage sensha_beams:placing scale

data modify storage sensha_beams:placing midpoint.x set compute default float \
    {type: "minecraft:div", \
        left: {type: "minecraft:add", inputs: [ \
            "sb.placing:var/start_pos.x", \
            "sb.placing:var/end_pos.x" \
        ]}, \
        right: 2.0 \
    }
data modify storage sensha_beams:placing midpoint.y set compute default float \
    {type: "minecraft:div", \
        left: {type: "minecraft:add", inputs: [ \
            "sb.placing:var/start_pos.y", \
            "sb.placing:var/end_pos.y" \
        ]}, \
        right: 2.0 \
    }
data modify storage sensha_beams:placing midpoint.z set compute default float \
    {type: "minecraft:div", \
        left: {type: "minecraft:add", inputs: [ \
            "sb.placing:var/start_pos.z", \
            "sb.placing:var/end_pos.z" \
        ]}, \
        right: 2.0 \
    }

function sb.placing:teleport_to_coord with storage sensha_beams:placing midpoint
# TODO consider rounding to the nearest 6th or so decimal place to remove floating point artifacts
function sb.placing:rotate_to_coord with storage sensha_beams:placing end_pos

tag @s remove sb.end_placing_beam
tag @a[tag=sb.end_placing_player] remove sb.end_placing_player

execute \
    unless function sb.placing:predicates/is_valid_beam \
    run return run data modify entity @s item.id set value "minecraft:red_concrete"

data modify entity @s item.id set value "minecraft:lime_concrete"
data modify entity @s data.end_pos set from storage sensha_beams:placing end_pos
data modify entity @s data.midpoint set from storage sensha_beams:placing midpoint
data modify entity @s data.length set from storage sensha_beams:placing length

return 1