# SAFETY: the normal generation assumes full voxels, this can be worked around by manually setting axis

function sb.raycast:check_voxel/clear_raycast_result

data modify storage sensha_beams:raycast hit.pos.x set compute default float \
    {type: "minecraft:add", inputs: [ \
        "sb.raycast:var/origin.x", \
        {type: "minecraft:mul", inputs: ["sb.raycast:var/distance", "sb.raycast:var/dir.x"]} \
    ]}
data modify storage sensha_beams:raycast hit.pos.y set compute default float \
    {type: "minecraft:add", inputs: [ \
        "sb.raycast:var/origin.y", \
        {type: "minecraft:mul", inputs: ["sb.raycast:var/distance", "sb.raycast:var/dir.y"]} \
    ]}
data modify storage sensha_beams:raycast hit.pos.z set compute default float \
    {type: "minecraft:add", inputs: [ \
        "sb.raycast:var/origin.z", \
        {type: "minecraft:mul", inputs: ["sb.raycast:var/distance", "sb.raycast:var/dir.z"]} \
    ]}

data modify storage sensha_beams:raycast hit.normal.x set compute default float \
    {type: "minecraft:conditional", \
        condition: {type: "minecraft:int_value_check", value: "sb.raycast:var/axis", test: 0}, \
        on_true: {type: "minecraft:negate", input: "sb.raycast:var/step.x"}, \
        on_false: 0.0 \
    }
data modify storage sensha_beams:raycast hit.normal.y set compute default float \
    {type: "minecraft:conditional", \
        condition: {type: "minecraft:int_value_check", value: "sb.raycast:var/axis", test: 1}, \
        on_true: {type: "minecraft:negate", input: "sb.raycast:var/step.y"}, \
        on_false: 0.0 \
    }
data modify storage sensha_beams:raycast hit.normal.z set compute default float \
    {type: "minecraft:conditional", \
        condition: {type: "minecraft:int_value_check", value: "sb.raycast:var/axis", test: 2}, \
        on_true: {type: "minecraft:negate", input: "sb.raycast:var/step.z"}, \
        on_false: 0.0 \
    }

# setblock ~ ~ ~ minecraft:gold_block
# tellraw @a ["hit ", {storage:"sensha_beams:raycast", nbt:"hit"}]

return 1