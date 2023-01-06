gamemode spectator @s
execute if score register_blindness auth.settings matches 1 run effect give @s blindness 3 0 true

execute unless entity @e[tag=auth.marker.register,distance=..3] run summon marker ~ ~ ~ {Tags:["auth.marker.register"]}
tp @s @e[tag=auth.marker.register,limit=1,sort=nearest,distance=..3]

scoreboard players enable @s register

title @s actionbar [{"text":"Register with \"/trigger register set <password>\".  ","color":"red"},{"text":"ONLY USE NUMBERS","color":"dark_red","bold":true,"italic":true}]

execute unless score @s register matches 0 run function auth:register