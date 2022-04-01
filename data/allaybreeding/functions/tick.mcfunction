#kill bees who didnt reproduced
execute as @e[type=bee] if score @s abr_onBees matches 0.. run scoreboard players add @s abr_onBees 1
execute as @e[type=bee] if score @s abr_onBees matches 200.. run function allaybreeding:process/bees/dismount


#check if reproduced
execute as @e[type=bee,tag=abr_bee1,nbt={InLove:0}] at @s as @e[limit=1,sort=nearest,type=bee,tag=] at @s run function allaybreeding:process/bees/reproduced