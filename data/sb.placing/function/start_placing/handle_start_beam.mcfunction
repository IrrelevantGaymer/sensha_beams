# We offset the position ever so slightly in randomized directions to minimize z-fighting issues

data modify storage sensha_beams:placing rand_delta set from entity @s data.rand_delta

# delta
data modify storage sensha_beams:placing delta.x set compute default float \
    {type: "minecraft:mul", inputs: [ \
        {type: "minecraft:negate", input: "sb.raycast:sign_dir.x"}, \
        "sb.placing:var/rand_delta.x" \
    ]}
data modify storage sensha_beams:placing delta.y set compute default float \
    {type: "minecraft:mul", inputs: [ \
        {type: "minecraft:negate", input: "sb.raycast:sign_dir.y"}, \
        "sb.placing:var/rand_delta.y" \
    ]}
data modify storage sensha_beams:placing delta.z set compute default float \
    {type: "minecraft:mul", inputs: [ \
        {type: "minecraft:negate", input: "sb.raycast:sign_dir.z"}, \
        "sb.placing:var/rand_delta.z" \
    ]}
# TODO consider moving to prepare_beam_for_end_placing
data modify entity @s data.delta set from storage sensha_beams:placing delta

# start_pos
data modify storage sensha_beams:placing start_pos.x set compute default float sb.placing:snap_hit.pos.x
data modify storage sensha_beams:placing start_pos.y set compute default float sb.placing:snap_hit.pos.y
data modify storage sensha_beams:placing start_pos.z set compute default float sb.placing:snap_hit.pos.z
# tellraw @a ["start pos ", {storage: "sensha_beams:placing", nbt: "start_pos"}]
# TODO compare teleporting with macro to data modifying
function sb.placing:teleport_to_coord with storage sensha_beams:placing start_pos

# transformation.scale
data modify storage sensha_beams:placing scale set value [None, None, None]
data modify storage sensha_beams:placing scale[0] set compute default float sb.placing:const/highlight_scale
data modify storage sensha_beams:placing scale[1] set compute default float sb.placing:const/highlight_scale
data modify storage sensha_beams:placing scale[2] set compute default float sb.placing:const/highlight_scale
data modify entity @s transformation.scale set from storage sensha_beams:placing scale

rotate @s 0.0 0.0
data merge entity @s {item: {id: "minecraft:white_stained_glass"}, brightness: {block: 15, sky: 15}}

tag @s remove sb.start_placing_beam

return 1