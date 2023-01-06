tag @s remove auth.logged
tag @s remove auth.bypass.logged

scoreboard players set @s login 0

scoreboard players reset @s auth.attemps
scoreboard players reset @s auth.kick_time

scoreboard players reset @s auth.leave

trigger changepassword add 0