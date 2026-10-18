execute \
    unless score @s sb.beam_impulse_cooldown matches 1.. \
    if entity @s[tag=sb.end_place, tag=!sb.invalid_end] \
    run function sb.placing:end_placing/complete_end_place
execute \
    unless score @s sb.beam_impulse_cooldown matches 1.. \
    if entity @s[tag=sb.start_place, tag=!sb.invalid_start] \
    run function sb.placing:start_placing/complete_start_place

advancement revoke @s only sb.placing:use_beam
advancement revoke @s only sb.placing:beam_cooldown
scoreboard players set @s sb.beam_impulse_cooldown 2