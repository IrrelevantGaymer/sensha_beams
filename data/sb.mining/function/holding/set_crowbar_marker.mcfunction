tag @s add sb.holding_crowbar

data modify storage sensha_beams:mining Owner set from entity @s UUID

execute summon minecraft:marker run function sb.mining:holding/set_crowbar_marker_data