function mcalc:player/clear_chat

tellraw @s [{"text":"===== ","color":"gray"},{"text":"Auth Settings ","color":"red","bold":true,"hoverEvent":{"action":"show_text","contents":[{"text":"","bold":true}]}},{"text":"=====","color":"gray","hoverEvent":{"action":"show_text","contents":[{"text":"","bold":true}]}}]

tellraw @s {"text":"- Kick:","color":"gray"}
execute if score kick auth.settings matches 1 run tellraw @s [{"text":"YES","color":"red","bold":true},{"text": " - ","color":"gray"},{"text":"NO","color":"gray","bold":true,"clickEvent":{"action":"run_command","value":"/function auth:settings/kick/no"}}]
execute if score kick auth.settings matches 0 run tellraw @s [{"text":"YES","color":"gray","bold":true,"clickEvent":{"action":"run_command","value":"/function auth:settings/kick/yes"}},{"text": " - ","color":"gray"},{"text":"NO","color":"red","bold":true}]

tellraw @s {"text":"- Login Blindness:","color":"gray"}
execute if score login_blindness auth.settings matches 1 run tellraw @s [{"text":"YES","color":"red","bold":true},{"text": " - ","color":"gray"},{"text":"NO","color":"gray","bold":true,"clickEvent":{"action":"run_command","value":"/function auth:settings/login_blindness/no"}}]
execute if score login_blindness auth.settings matches 0 run tellraw @s [{"text":"YES","color":"gray","bold":true,"clickEvent":{"action":"run_command","value":"/function auth:settings/login_blindness/yes"}},{"text": " - ","color":"gray"},{"text":"NO","color":"red","bold":true}]

tellraw @s {"text":"- Register Blindness:","color":"gray"}
execute if score register_blindness auth.settings matches 1 run tellraw @s [{"text":"YES","color":"red","bold":true},{"text": " - ","color":"gray"},{"text":"NO","color":"gray","bold":true,"clickEvent":{"action":"run_command","value":"/function auth:settings/register_blindness/no"}}]
execute if score register_blindness auth.settings matches 0 run tellraw @s [{"text":"YES","color":"gray","bold":true,"clickEvent":{"action":"run_command","value":"/function auth:settings/register_blindness/yes"}},{"text": " - ","color":"gray"},{"text":"NO","color":"red","bold":true}]

tellraw @s {"text":"- Kick Time (30 seconds):","color":"gray"}
execute if score kick_time auth.settings matches 1 run tellraw @s [{"text":"YES","color":"red","bold":true},{"text": " - ","color":"gray"},{"text":"NO","color":"gray","bold":true,"clickEvent":{"action":"run_command","value":"/function auth:settings/kick_time/no"}}]
execute if score kick_time auth.settings matches 0 run tellraw @s [{"text":"YES","color":"gray","bold":true,"clickEvent":{"action":"run_command","value":"/function auth:settings/kick_time/yes"}},{"text": " - ","color":"gray"},{"text":"NO","color":"red","bold":true}]

tellraw @s {"text":"- Max Attemps:","color":"gray"}
execute if score max_attemps auth.settings matches 1 run tellraw @s [{"text":"1","color":"red","bold":true,"clickEvent":{"action":"run_command","value":"/function auth:settings/max_attemps/1"}},{"text": " - ","color":"gray"},{"text":"2","color":"gray","bold":true,"clickEvent":{"action":"run_command","value":"/function auth:settings/max_attemps/2"}},{"text": " - ","color":"gray"},{"text":"3","color":"gray","bold":true,"clickEvent":{"action":"run_command","value":"/function auth:settings/max_attemps/3"}}]
execute if score max_attemps auth.settings matches 2 run tellraw @s [{"text":"1","color":"gray","bold":true,"clickEvent":{"action":"run_command","value":"/function auth:settings/max_attemps/1"}},{"text": " - ","color":"gray"},{"text":"2","color":"red","bold":true,"clickEvent":{"action":"run_command","value":"/function auth:settings/max_attemps/2"}},{"text": " - ","color":"gray"},{"text":"3","color":"gray","bold":true,"clickEvent":{"action":"run_command","value":"/function auth:settings/max_attemps/3"}}]
execute if score max_attemps auth.settings matches 3 run tellraw @s [{"text":"1","color":"gray","bold":true,"clickEvent":{"action":"run_command","value":"/function auth:settings/max_attemps/1"}},{"text": " - ","color":"gray"},{"text":"2","color":"gray","bold":true,"clickEvent":{"action":"run_command","value":"/function auth:settings/max_attemps/2"}},{"text": " - ","color":"gray"},{"text":"3","color":"red","bold":true,"clickEvent":{"action":"run_command","value":"/function auth:settings/max_attemps/3"}}]


tellraw @s {"text":"- Reset Settings","color":"red","bold":true,"hoverEvent":{"action":"show_text","contents":[{"text":"","bold":true}]},"clickEvent":{"action":"run_command","value":"/function auth:settings/reset"}}

tellraw @s [{"text":"=========================","color":"gray"}]


playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 2