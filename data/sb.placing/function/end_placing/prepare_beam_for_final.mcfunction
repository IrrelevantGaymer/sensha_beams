tag @s remove placing_sensha_beam
tag @s add root_sensha_beam

function sb.raycast:clean
data modify storage sensha_beams:placing length_to_place set from storage sensha_beams:placing length
data modify storage sensha_beams:placing yaw set from entity @s Rotation[0]
data modify storage sensha_beams:placing pitch set from entity @s Rotation[1]
data modify storage sensha_beams:placing yaw_r set compute default float \
    {type: "minecraft:mul", inputs: ["sb.placing:var/yaw", "sb.math:deg_to_rad"]}
data modify storage sensha_beams:placing pitch_r set compute default float \
    {type: "minecraft:mul", inputs: ["sb.placing:var/pitch", "sb.math:deg_to_rad"]}
data modify storage sensha_beams:placing root_UUID set from entity @s UUID
data modify storage sensha_beams:placing start_pos set from entity @s data.start_pos
data modify storage sensha_beams:placing length set from entity @s data.length
data modify storage sensha_beams:placing sensha_beam set from entity @s data.sensha_beam
data modify storage sensha_beams:placing cost set compute default integer { \
    type: "minecraft:from_float", input: {type: "minecraft:round", input: { \
        type: "minecraft:mul", \
        inputs: ["sb.placing:var/length", 4.0] \
    }} \
}

# transformation vectors
data modify storage sensha_beams:placing transform.i.x set compute default float \
    {type: "minecraft:negate", input: {type: "minecraft:cos", input: "sb.placing:var/yaw_r"}}
data modify storage sensha_beams:placing transform.i.y set compute default float \
    {type: "minecraft:constant", value: 0.0}
data modify storage sensha_beams:placing transform.i.z set compute default float \
    {type: "minecraft:negate", input: {type: "minecraft:sin", input: "sb.placing:var/yaw_r"}}

data modify storage sensha_beams:placing transform.j.x set compute default float \
    {type: "minecraft:negate", input: {type: "minecraft:mul", inputs: [ \
        {type: "minecraft:sin", input: "sb.placing:var/yaw_r"}, \
        {type: "minecraft:sin", input: "sb.placing:var/pitch_r"} \
    ]}}
data modify storage sensha_beams:placing transform.j.y set compute default float \
    {type: "minecraft:cos", input: "sb.placing:var/pitch_r"}
data modify storage sensha_beams:placing transform.j.z set compute default float \
    {type: "minecraft:mul", inputs: [ \
        {type: "minecraft:cos", input: "sb.placing:var/yaw_r"}, \
        {type: "minecraft:sin", input: "sb.placing:var/pitch_r"} \
    ]}

data modify storage sensha_beams:placing transform.k.x set compute default float \
    {type: "minecraft:negate", input: {type: "minecraft:mul", inputs: [ \
        {type: "minecraft:sin", input: "sb.placing:var/yaw_r"}, \
        {type: "minecraft:cos", input: "sb.placing:var/pitch_r"} \
    ]}}
data modify storage sensha_beams:placing transform.k.y set compute default float \
    {type: "minecraft:negate", input: {type: "minecraft:sin", input: "sb.placing:var/pitch_r"}}
data modify storage sensha_beams:placing transform.k.z set compute default float \
    {type: "minecraft:mul", inputs: [ \
        {type: "minecraft:cos", input: "sb.placing:var/yaw_r"}, \
        {type: "minecraft:cos", input: "sb.placing:var/pitch_r"} \
    ]}
data modify entity @s data.transform set from storage sensha_beams:placing transform

execute \
    if data storage sensha_beams:placing {gamemode: 0} \
    run item modify entity @a[tag=sb.end_placing_player] weapon.mainhand sb.placing:apply_cost

scoreboard players set @s sb.crowbar_sources 0

data remove entity @s data.Owner
data remove entity @s data.count
data remove entity @s brightness
data modify entity @s data.root_UUID set from storage sensha_beams:placing root_UUID
data modify entity @s data.yaw_r set from storage sensha_beams:placing yaw_r
data modify entity @s data.pitch_r set from storage sensha_beams:placing pitch_r
function sb.placing:teleport_to_coord with storage sensha_beams:placing start_pos

execute positioned as @s run function sb.placing:end_placing/place_beam_segments with entity @s data