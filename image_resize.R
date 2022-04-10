rm(list=ls())

lst_files <- list.files(path="./www", 
             pattern=NULL, 
             all.files=FALSE,
             full.names=FALSE)


system("convert /home/rafael/Projetos_git/R_climate_maps/www/03-04-22.jpeg -resize 55% /home/rafael/Projetos_git/R_climate_maps/www/03-04-22.jpeg",  intern = FALSE)
