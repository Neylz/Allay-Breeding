#alias entity allay minecraft:allay
#define score_holder $uniqueId abr_couples 

#call from load



#couples scoreboard
scoreboard objectives add abr_couples dummy
execute unless score $uniqueId abr_couples matches -1.. run scoreboard players set $uniqueId abr_couples 0 


function allaybreeding:loop

tellraw @a ["",{"text":"\u2756 ","color":"#4A4B4E"},{"text":"Allay Breeding","color":"#1D83AA","clickEvent":{"action":"open_url","value":"https://www.curseforge.com/minecraft/customization/allay-breeding-datapack"},"hoverEvent":{"action":"show_text","contents":["",{"text":"Made by ","color":"dark_gray"},{"text":"Neylz","color":"gray"},{"text":"\n"},{"text":"Version ","color":"dark_gray"},{"text":"1.0","color":"gray"},{"text":"\n"},{"text":"Compatibility ","color":"dark_gray"},{"text":"22w13a","color":"gray"},{"text":"\n"},{"text":"Is currently ","color":"dark_gray"},{"text":"installed","color":"green"}]}}]