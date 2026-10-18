data modify storage sensha_beams:mining closest_beam_distance set from storage sensha_beams:mining t_min
data modify storage sensha_beams:mining has_closest_beam set value true
tag @e[type=minecraft:item_display, tag=root_sensha_beam, tag=sb.closest_beam] remove sb.closest_beam
tag @s add sb.closest_beam

# tellraw @a ["closest beam with distance ", {storage: "sensha_beams:mining", nbt: "closest_beam_distance"}]