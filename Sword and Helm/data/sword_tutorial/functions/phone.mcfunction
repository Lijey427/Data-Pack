
playsound entity.wandering_trader.reappeared master @s
tellraw @p {"text":"Teleport Where?","color":"grey","bold":true,"hoverEvent":{"action":"show_text","contents":[{"text":"Telpeort to Player's bases.","color":"dark_red","bold":true}]}}
tellraw @p [{"text":"[_Darth]","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/tp @s 4577 67 1284"}},{"text":" "},{"text":"[Lijey_427] ","color":"blue","clickEvent":{"action":"run_command","value":"/tp @s -251 63 -1231"}},{"text":"[Jordinja] ","color":"red","clickEvent":{"action":"run_command","value":"/tp @s -140 68 -1374"}},{"text":"[Fake_Name] ","color":"yellow","clickEvent":{"action":"run_command","value":"/tp @s 785 87 -2019"}}]
tellraw @p [{"text":"[BANK]","color":"gold","bold":true,"clickEvent":{"action":"run_command","value":"/tp @s -281 91 -1607"}},{"text":" "},{"text":"[Spawn]","color":"white","clickEvent":{"action":"run_command","value":"/tp @s -224 89 -1550"}}]
scoreboard players reset @s phone