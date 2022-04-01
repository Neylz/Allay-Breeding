#kill bees who didnt reproduced
execute as @e[type=bee] if score @s abr_onBees matches 0.. run scoreboard players add @s abr_onBees 1
execute as @e[type=bee] if score @s abr_onBees matches 200.. run function allaybreeding:process/bees/dismount