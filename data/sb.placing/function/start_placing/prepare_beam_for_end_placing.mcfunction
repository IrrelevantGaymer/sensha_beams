data modify storage sensha_beams:placing pos set from entity @s Pos
data modify storage sensha_beams:placing sound set from entity @s data.start_place_sound
data modify storage sensha_beams:placing sound.x set from storage sensha_beams:placing pos[0]
data modify storage sensha_beams:placing sound.y set from storage sensha_beams:placing pos[1]
data modify storage sensha_beams:placing sound.z set from storage sensha_beams:placing pos[2]

data modify entity @s data.start_pos.x set from storage sensha_beams:placing pos[0]
data modify entity @s data.start_pos.y set from storage sensha_beams:placing pos[1]
data modify entity @s data.start_pos.z set from storage sensha_beams:placing pos[2]
function sb.placing:playsound with storage sensha_beams:placing sound