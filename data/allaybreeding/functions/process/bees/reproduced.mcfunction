execute as @s run summon minecraft:allay ~ ~ ~
execute as @e[type=bee,tag=abr_bee,limit=2,sort=nearest] at @s run function allaybreeding:process/bees/dismount
execute as @s run tp @s ~ -1000 ~
#execute as @s run #kill @s