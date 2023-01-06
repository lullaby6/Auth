execute store result score @s register run scoreboard players get @s changepassword
scoreboard players set @s changepassword 0

tellraw @s {"text":"Password changed.","color":"green"}
playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~