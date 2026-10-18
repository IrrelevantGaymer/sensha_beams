tag @s remove sb.end_place
tag @s remove sb.holding_beam

tag @s add sb.end_placing_player
data modify storage sensha_beams:placing gamemode set from entity @s playerGameType

function sb.placing:end_placing/prepare_beam_for_final_wrapper with entity @s
tag @s remove sb.end_placing_player