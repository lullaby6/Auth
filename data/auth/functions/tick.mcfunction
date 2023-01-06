execute as @a[tag=!auth.procced] run function auth:procced

execute as @a[tag=!auth.registered,tag=!auth.bypass] at @s run function auth:please_register
execute as @a[tag=auth.registered,tag=!auth.logged,tag=!auth.bypass] at @s run function auth:please_login
execute as @a[tag=auth.bypass,tag=!auth.bypass.logged] at @s run function auth:bypass_login

execute as @a[tag=auth.logged] run scoreboard players enable @s changepassword
execute as @a[tag=auth.logged] unless score @s changepassword matches 0 at @s run function auth:changepassword

execute as @a[scores={auth.leave=1..}] run function auth:leave

execute as @e[tag=auth.marker.register] at @s unless entity @a[tag=!auth.registered,distance=..3] run kill @s
execute as @e[tag=auth.marker.login] at @s unless entity @a[tag=!auth.logged,distance=..3] run kill @s

execute unless score load auth.settings matches 1 run function auth:settings/reset