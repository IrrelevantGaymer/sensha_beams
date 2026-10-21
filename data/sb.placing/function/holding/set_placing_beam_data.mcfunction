tag @s add placing_sensha_beam

data modify entity @s data.Owner set from storage sensha_beams:placing Owner
data modify entity @s data.sensha_beam set from storage sensha_beams:placing sensha_beam
data modify entity @s data.count set from storage sensha_beams:placing count
data modify entity @s data.rand_delta set from storage sensha_beams:placing rand_delta
data modify entity @s data.start_place_sound set from storage sensha_beams:placing start_place_sound
data modify entity @s data.active_place_sound set from storage sensha_beams:placing active_place_sound
data modify entity @s data.end_place_sound set from storage sensha_beams:placing end_place_sound

tag @s remove sb.update