scoreboard players set @s login 0

tellraw @s {"text":"Wrong password.","color":"red"}
playsound minecraft:entity.villager.no master @s ~ ~ ~

execute if score kick auth.settings matches 1 run scoreboard players add @s auth.attemps 1

execute if score kick auth.settings matches 1 if score @s auth.attemps >= max_attemps auth.settings run function auth:kick