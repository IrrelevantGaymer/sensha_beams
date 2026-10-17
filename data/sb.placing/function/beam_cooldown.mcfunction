scoreboard players remove @s sb.beam_impulse_cooldown 1
execute \
    if score @s sb.beam_impulse_cooldown matches 1.. \
    run return run advancement revoke @s only sb.placing:beam_cooldown
scoreboard players reset @s sb.beam_impulse_cooldown