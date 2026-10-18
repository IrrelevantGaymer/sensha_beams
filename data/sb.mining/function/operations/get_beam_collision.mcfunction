data modify storage sensha_beams:mining center set from entity @s data.midpoint
data modify storage sensha_beams:mining transform set from entity @s data.transform

# tellraw @a ["center ", {storage: "sensha_beams:mining", nbt: "center"}]
# tellraw @a ["transform.i ", {storage: "sensha_beams:mining", nbt: "transform.i"}]
# tellraw @a ["transform.j ", {storage: "sensha_beams:mining", nbt: "transform.j"}]
# tellraw @a ["transform.k ", {storage: "sensha_beams:mining", nbt: "transform.k"}]

# offset
data modify storage sensha_beams:mining offset.x set compute default float \
    {type: "minecraft:sub", left: "sb.raycast:var/origin.x", right: "sb.mining:var/center.x"}
data modify storage sensha_beams:mining offset.y set compute default float \
    {type: "minecraft:sub", left: "sb.raycast:var/origin.y", right: "sb.mining:var/center.y"}
data modify storage sensha_beams:mining offset.z set compute default float \
    {type: "minecraft:sub", left: "sb.raycast:var/origin.z", right: "sb.mining:var/center.z"}

# tellraw @a ["origin ", {storage: "sensha_beams:raycast", nbt: "origin"}]
# tellraw @a ["offset ", {storage: "sensha_beams:mining", nbt: "offset"}]

# origin'
data modify storage sensha_beams:mining transform.origin.x set compute default float \
    {type: "minecraft:add", inputs:[ \
        {type: "minecraft:mul", inputs: ["sb.mining:var/offset.x", "sb.mining:var/transform.i.x"]}, \
        {type: "minecraft:mul", inputs: ["sb.mining:var/offset.y", "sb.mining:var/transform.i.y"]}, \
        {type: "minecraft:mul", inputs: ["sb.mining:var/offset.z", "sb.mining:var/transform.i.z"]} \
    ]}
data modify storage sensha_beams:mining transform.origin.y set compute default float \
    {type: "minecraft:add", inputs:[ \
        {type: "minecraft:mul", inputs: ["sb.mining:var/offset.x", "sb.mining:var/transform.j.x"]}, \
        {type: "minecraft:mul", inputs: ["sb.mining:var/offset.y", "sb.mining:var/transform.j.y"]}, \
        {type: "minecraft:mul", inputs: ["sb.mining:var/offset.z", "sb.mining:var/transform.j.z"]} \
    ]}
data modify storage sensha_beams:mining transform.origin.z set compute default float \
    {type: "minecraft:add", inputs:[ \
        {type: "minecraft:mul", inputs: ["sb.mining:var/offset.x", "sb.mining:var/transform.k.x"]}, \
        {type: "minecraft:mul", inputs: ["sb.mining:var/offset.y", "sb.mining:var/transform.k.y"]}, \
        {type: "minecraft:mul", inputs: ["sb.mining:var/offset.z", "sb.mining:var/transform.k.z"]} \
    ]}
# tellraw @a ["transform.origin ", {storage: "sensha_beams:mining", nbt: "transform.origin"}]

# dir'
data modify storage sensha_beams:mining transform.dir.x set compute default float \
    {type: "minecraft:add", inputs:[ \
        {type: "minecraft:mul", inputs: ["sb.raycast:var/dir.x", "sb.mining:var/transform.i.x"]}, \
        {type: "minecraft:mul", inputs: ["sb.raycast:var/dir.y", "sb.mining:var/transform.i.y"]}, \
        {type: "minecraft:mul", inputs: ["sb.raycast:var/dir.z", "sb.mining:var/transform.i.z"]} \
    ]}
data modify storage sensha_beams:mining transform.dir.y set compute default float \
    {type: "minecraft:add", inputs:[ \
        {type: "minecraft:mul", inputs: ["sb.raycast:var/dir.x", "sb.mining:var/transform.j.x"]}, \
        {type: "minecraft:mul", inputs: ["sb.raycast:var/dir.y", "sb.mining:var/transform.j.y"]}, \
        {type: "minecraft:mul", inputs: ["sb.raycast:var/dir.z", "sb.mining:var/transform.j.z"]} \
    ]}
data modify storage sensha_beams:mining transform.dir.z set compute default float \
    {type: "minecraft:add", inputs:[ \
        {type: "minecraft:mul", inputs: ["sb.raycast:var/dir.x", "sb.mining:var/transform.k.x"]}, \
        {type: "minecraft:mul", inputs: ["sb.raycast:var/dir.y", "sb.mining:var/transform.k.y"]}, \
        {type: "minecraft:mul", inputs: ["sb.raycast:var/dir.z", "sb.mining:var/transform.k.z"]} \
    ]}
# tellraw @a ["transform.dir ", {storage: "sensha_beams:mining", nbt: "transform.dir"}]
# tellraw @a ["dir ", {storage: "sensha_beams:raycast", nbt: "dir"}]
# tellraw @a ["transform ", {storage: "sensha_beams:mining", nbt: "transform"}]

# TODO consider storing min and max on the root when placed

# min
data modify storage sensha_beams:mining min.x set compute default float \
    {type: "minecraft:negate", input: { \
        type: "minecraft:div", \
        left: "sb.placing:const/scale_plus_delta", \
        right: 2.0 \
    }}
data modify storage sensha_beams:mining min.y set compute default float \
    {type: "minecraft:negate", input: { \
        type: "minecraft:div", \
        left: "sb.placing:const/scale_plus_delta", \
        right: 2.0 \
    }}
data modify storage sensha_beams:mining min.z set compute default float \
    {type: "minecraft:negate", input: {type: "minecraft:div", \
        left: {type: "minecraft:add", inputs: [ \
            "sb.mining:var/length", \
            "sb.placing:const/scale_delta" \
        ]}, \
        right: 2.0 \
    }}
# tellraw @a ["min ", {storage: "sensha_beams:mining", nbt: "min"}]

# max
data modify storage sensha_beams:mining max.x set compute default float \
    {type: "minecraft:div", left: "sb.placing:const/scale_plus_delta", right: 2.0}
data modify storage sensha_beams:mining max.y set compute default float \
    {type: "minecraft:div", left: "sb.placing:const/scale_plus_delta", right: 2.0}
data modify storage sensha_beams:mining max.z set compute default float \
    {type: "minecraft:div", \
        left: {type: "minecraft:add", inputs: [ \
            "sb.mining:var/length", \
            "sb.placing:const/scale_delta" \
        ]}, \
        right: 2.0 \
    }
# tellraw @a ["max ", {storage: "sensha_beams:mining", nbt: "max"}]

# data modify storage sensha_beams:mining t_mins.x set compute default float sb.mining:calculate_t_min.x
# data modify storage sensha_beams:mining t_mins.y set compute default float sb.mining:calculate_t_min.y
# data modify storage sensha_beams:mining t_mins.z set compute default float sb.mining:calculate_t_min.z
# data modify storage sensha_beams:mining t_maxs.x set compute default float sb.mining:calculate_t_max.x
# data modify storage sensha_beams:mining t_maxs.y set compute default float sb.mining:calculate_t_max.y
# data modify storage sensha_beams:mining t_maxs.z set compute default float sb.mining:calculate_t_max.z

# tellraw @a ["t_mins ", {storage: "sensha_beams:mining", nbt: "t_mins"}]
# tellraw @a ["t_maxs ", {storage: "sensha_beams:mining", nbt: "t_maxs"}]

# t_min and t_max
data modify storage sensha_beams:mining t_min set compute default float \
    {type: "minecraft:max", inputs: [ \
        "sb.mining:calculate_t_min.x", \
        "sb.mining:calculate_t_min.y", \
        "sb.mining:calculate_t_min.z" \
    ]}
data modify storage sensha_beams:mining t_max set compute default float \
    {type: "minecraft:min", inputs: [ \
        "sb.mining:calculate_t_max.x", \
        "sb.mining:calculate_t_max.y", \
        "sb.mining:calculate_t_max.z" \
    ]}
# tellraw @a ["t_min ", {storage: "sensha_beams:mining", nbt: "t_min"}]
# tellraw @a ["t_max ", {storage: "sensha_beams:mining", nbt: "t_max"}]


execute \
    if predicate sb.mining:is_intersection \
    if predicate sb.mining:is_closer_intersection \
    run function sb.mining:operations/store_intersection
