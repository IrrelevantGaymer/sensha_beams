execute if function sb.raycast:check_voxel/init run return 1

# update distance
data modify storage sensha_beams:raycast distance set compute default float \
    {type: "minecraft:min", inputs: [ \
        "sb.raycast:var/t_max.x", \
        "sb.raycast:var/t_max.y", \
        "sb.raycast:var/t_max.z" \
    ]}

# tellraw @a ["distance is ", {storage: "sensha_beams:raycast", nbt: "distance"}]
# tellraw @a ["t_max (", {"storage": "sensha_beams:raycast", nbt: "t_max.x"}, ", ", {"storage": "sensha_beams:raycast", nbt: "t_max.y"}, ", ", {"storage": "sensha_beams:raycast", nbt: "t_max.z"}, ")"]

# find nearest boundary
data modify storage sensha_beams:raycast axis set compute default integer sb.raycast:calculate_axis
# tellraw @a ["axis is ", {storage: "sensha_beams:raycast", nbt: "axis"}]

# advance along axis
execute \
    if data storage sensha_beams:raycast {axis: 0} \
    run data modify storage sensha_beams:raycast voxel.x set compute default float \
        {type: "minecraft:add", inputs: ["sb.raycast:var/voxel.x", "sb.raycast:var/step.x"]}
execute \
    if data storage sensha_beams:raycast {axis: 1} \
    run data modify storage sensha_beams:raycast voxel.y set compute default float \
        {type: "minecraft:add", inputs: ["sb.raycast:var/voxel.y", "sb.raycast:var/step.y"]}
execute \
    if data storage sensha_beams:raycast {axis: 2} \
    run data modify storage sensha_beams:raycast voxel.z set compute default float \
        {type: "minecraft:add", inputs: ["sb.raycast:var/voxel.z", "sb.raycast:var/step.z"]}

execute \
    if data storage sensha_beams:raycast {axis: 0} \
    run data modify storage sensha_beams:raycast t_max.x set compute default float \
        {type: "minecraft:add", inputs: ["sb.raycast:var/t_max.x", "sb.raycast:var/t_delta.x"]}
execute \
    if data storage sensha_beams:raycast {axis: 1} \
    run data modify storage sensha_beams:raycast t_max.y set compute default float \
        {type: "minecraft:add", inputs: ["sb.raycast:var/t_max.y", "sb.raycast:var/t_delta.y"]}
execute \
    if data storage sensha_beams:raycast {axis: 2} \
    run data modify storage sensha_beams:raycast t_max.z set compute default float \
        {type: "minecraft:add", inputs: ["sb.raycast:var/t_max.z", "sb.raycast:var/t_delta.z"]}

execute if predicate sb.raycast:does_distance_exceed_max run return 0

execute \
    if data storage sensha_beams:raycast {axis: 0} \
    if predicate sb.raycast:is_step.x_negative \
    positioned ~-1 ~ ~ \
    run return run function sb.raycast:loop
execute \
    if data storage sensha_beams:raycast {axis: 0} \
    if predicate sb.raycast:is_step.x_positive \
    positioned ~1 ~ ~ \
    run return run function sb.raycast:loop
execute \
    if data storage sensha_beams:raycast {axis: 1} \
    if predicate sb.raycast:is_step.y_negative \
    positioned ~ ~-1 ~ \
    run return run function sb.raycast:loop
execute \
    if data storage sensha_beams:raycast {axis: 1} \
    if predicate sb.raycast:is_step.y_positive \
    positioned ~ ~1 ~ \
    run return run function sb.raycast:loop
execute \
    if data storage sensha_beams:raycast {axis: 2} \
    if predicate sb.raycast:is_step.z_negative \
    positioned ~ ~ ~-1 \
    run return run function sb.raycast:loop
execute \
    if data storage sensha_beams:raycast {axis: 2} \
    if predicate sb.raycast:is_step.z_positive \
    positioned ~ ~ ~1 \
    run return run function sb.raycast:loop

tellraw @s {text: "Raycast Fail: expected axis between 0 and 2 and associated step to be -1 or 1", color: "red"}
tellraw @s [{text: "    axis: ", color: "red"}, {storage: "sensha_beams:raycast", "nbt": "axis", color: "red"}]
tellraw @s [{text: "    step: ", color: "red"}, {storage: "sensha_beams:raycast", "nbt": "step", color: "red"}]
return fail

