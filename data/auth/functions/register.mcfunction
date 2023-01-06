gamemode survival @s
effect clear @s blindness
title @s actionbar ""

trigger register add 0
execute store result score @s login run scoreboard players get @s register

tag @s add auth.registered

playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~