# Call this function with origin, pitch, and yaw defined in sensha_beams:raycast

# distance
data modify storage sensha_beams:raycast distance set value 0.0

# yaw and pitch
data modify storage sensha_beams:raycast yaw_r set compute default float \
    {type: "minecraft:mul", inputs: [ \
        "sb.raycast:var/yaw", \
        "sb.math:deg_to_rad", \
    ]}
data modify storage sensha_beams:raycast pitch_r set compute default float \
    {type: "minecraft:mul", inputs: [ \
        "sb.raycast:var/pitch", \
        "sb.math:deg_to_rad", \
    ]}
# tellraw @a ["yaw (", {"storage": "sensha_beams:raycast", nbt: "yaw"},  ") and pitch (", {"storage": "sensha_beams:raycast", nbt: "pitch"}, ")"]
# tellraw @a ["yaw_r (", {"storage": "sensha_beams:raycast", nbt: "yaw_r"},  ") and pitch_r (", {"storage": "sensha_beams:raycast", nbt: "pitch_r"}, ")"]

# normalized dir
data modify storage sensha_beams:raycast dir.x set compute default float \
    {type: "minecraft:negate", input: {type: "minecraft:mul", inputs: [ \
        {type: "minecraft:sin", input: "sb.raycast:var/yaw_r"}, \
        {type: "minecraft:cos", input: "sb.raycast:var/pitch_r"}, \
    ]}}
data modify storage sensha_beams:raycast dir.y set compute default float \
    {type: "minecraft:negate", \
        input: {type: "minecraft:sin", input: "sb.raycast:var/pitch_r"} \
    }
data modify storage sensha_beams:raycast dir.z set compute default float \
    {type: "minecraft:mul", inputs: [ \
        {type: "minecraft:cos", input: "sb.raycast:var/yaw_r"}, \
        {type: "minecraft:cos", input: "sb.raycast:var/pitch_r"} \
    ]}

# tellraw @a ["dir (", {"storage": "sensha_beams:raycast", nbt: "dir.x"}, ", ", {"storage": "sensha_beams:raycast", nbt: "dir.y"}, ", ", {"storage": "sensha_beams:raycast", nbt: "dir.z"}, ")"]

# voxel
data modify storage sensha_beams:raycast voxel.x set compute default float \
    {type: "minecraft:floor", input: "sb.raycast:var/origin.x"}
data modify storage sensha_beams:raycast voxel.y set compute default float \
    {type: "minecraft:floor", input: "sb.raycast:var/origin.y"}
data modify storage sensha_beams:raycast voxel.z set compute default float \
    {type: "minecraft:floor", input: "sb.raycast:var/origin.z"}
    
# tellraw @a ["origin (", {"storage": "sensha_beams:raycast", nbt: "origin.x"}, ", ", {"storage": "sensha_beams:raycast", nbt: "origin.y"}, ", ", {"storage": "sensha_beams:raycast", nbt: "origin.z"}, ")"]
# tellraw @a ["voxel (", {"storage": "sensha_beams:raycast", nbt: "voxel.x"}, ", ", {"storage": "sensha_beams:raycast", nbt: "voxel.y"}, ", ", {"storage": "sensha_beams:raycast", nbt: "voxel.z"}, ")"]

#step
data modify storage sensha_beams:raycast step.x set compute default float sb.raycast:sign_dir.x
data modify storage sensha_beams:raycast step.y set compute default float sb.raycast:sign_dir.y
data modify storage sensha_beams:raycast step.z set compute default float sb.raycast:sign_dir.z

# tellraw @a ["step (", {"storage": "sensha_beams:raycast", nbt: "step.x"}, ", ", {"storage": "sensha_beams:raycast", nbt: "step.y"}, ", ", {"storage": "sensha_beams:raycast", nbt: "step.z"}, ")"]

# t_delta
data modify storage sensha_beams:raycast t_delta.x set compute default float \
    {type: "minecraft:abs", input: "sb.raycast:inverse_dir.x"}
data modify storage sensha_beams:raycast t_delta.y set compute default float \
    {type: "minecraft:abs", input: "sb.raycast:inverse_dir.y"}
data modify storage sensha_beams:raycast t_delta.z set compute default float \
    {type: "minecraft:abs", input: "sb.raycast:inverse_dir.z"}

# t_max
data modify storage sensha_beams:raycast t_max.x set compute default float sb.raycast:calculate_t_max.x
data modify storage sensha_beams:raycast t_max.y set compute default float sb.raycast:calculate_t_max.y
data modify storage sensha_beams:raycast t_max.z set compute default float sb.raycast:calculate_t_max.z

# starting loop
return run execute anchored eyes positioned ^ ^ ^ run function sb.raycast:loop
