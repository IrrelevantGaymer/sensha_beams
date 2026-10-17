# u_x = cos(y)i + 0j - sin(y)k
# u_y = -sin(y)sin(p)i + cos(p)j - cos(y)sin(p)k
# u_z = sin(y)cos(p)i + sin(p)j + cos(y)cos(p)k

$data modify entity @s data.beam_u_right_x set compute default float \
    {type: "minecraft:negate", input: {type: "minecraft:cos", input: $(beam_yaw_r)}}
data modify entity @s data.beam_u_right_y set compute default float \
    {type: "minecraft:constant", value: 0.0}
$data modify entity @s data.beam_u_right_z set compute default float \
    {type: "minecraft:negate", input: {type: "minecraft:sin", input: $(beam_yaw_r)}}

$data modify entity @s data.beam_u_up_x set compute default float \
    {type: "minecraft:negate", input: {type: "minecraft:mul", inputs: [ \
        {type: "minecraft:sin", input: $(beam_yaw_r)}, \
        {type: "minecraft:sin", input: $(beam_pitch_r)} \
    ]}}
$data modify entity @s data.beam_u_up_y set compute default float \
    {type: "minecraft:cos", input: $(beam_pitch_r)}
$data modify entity @s data.beam_u_up_z set compute default float \
    {type: "minecraft:mul", inputs: [ \
        {type: "minecraft:cos", input: $(beam_yaw_r)}, \
        {type: "minecraft:sin", input: $(beam_pitch_r)} \
    ]}

$data modify entity @s data.beam_u_forward_x set compute default float \
    {type: "minecraft:negate", input: {type: "minecraft:mul", inputs: [ \
        {type: "minecraft:sin", input: $(beam_yaw_r)}, \
        {type: "minecraft:cos", input: $(beam_pitch_r)} \
    ]}}
$data modify entity @s data.beam_u_forward_y set compute default float \
    {type: "minecraft:negate", input: {type: "minecraft:sin", input: $(beam_pitch_r)}}
$data modify entity @s data.beam_u_forward_z set compute default float \
    {type: "minecraft:mul", inputs: [ \
        {type: "minecraft:cos", input: $(beam_yaw_r)}, \
        {type: "minecraft:cos", input: $(beam_pitch_r)} \
    ]}

# tellraw @a ["u_right (", {nbt: "data.beam_u_right_x", entity: "@s"}, ", ", {nbt: "data.beam_u_right_y", entity: "@s"}, ", ", {nbt: "data.beam_u_right_z", entity: "@s"}, ")"]
# tellraw @a ["u_up (", {nbt: "data.beam_u_up_x", entity: "@s"}, ", ", {nbt: "data.beam_u_up_y", entity: "@s"}, ", ", {nbt: "data.beam_u_up_z", entity: "@s"}, ")"]
# tellraw @a ["u_forward (", {nbt: "data.beam_u_forward_x", entity: "@s"}, ", ", {nbt: "data.beam_u_forward_y", entity: "@s"}, ", ", {nbt: "data.beam_u_forward_z", entity: "@s"}, ")"]