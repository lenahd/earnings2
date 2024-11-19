#in Variable p gespeicherte Funktion
p <- ggplot(penguins, aes(x= body_mass_g, y = bill_length_mm))

p + geom_smooth()

p + geom_point(aes(color = species))

#andere Farbpalette (je nach Variablenart) (viridis sieht auch bei schwarz-weiß 
#Druck unterschiedlich aus)
p + geom_point(aes(color = bill_depth_mm)) + scale_color_viridis_c()

#Namen bei Scala ändern
p + geom_point(aes(color = bill_depth_mm, shape = species)) 
+ scale_color_viridis_c(option = 'B', name = 'bill depth' 
+ labs(x= 'body mass', y = 'bill length', title ='pinguins')


p + geom_point(aes(color = bill_depth_mm, shape = species)) 
+ scale_color_viridis_c(option = 'B', name = 'bill depth')+ labs(x= 'body mass', y = 'bill length', title ='pinguins')
+ theme_minimal()


p + geom_point(aes(color = bill_depth_mm, shape = species)) 
+ scale_color_viridis_c(option = 'B', name = 'bill depth')+ labs(x= 'body mass', y = 'bill length', title ='pinguins')
+ facet_wrap(~ island) + theme_minimal()

p + geom_boxplot(aes(x= species))

ggplot(penguins, aes(x = species))
ggplot(penguins, aes(x = species)) + geom_bar()
ggplot(penguins, aes(x = island)) + geom_bar()
ggplot(penguins, aes(x = species)) + geom_bar(aes(color =species))
ggplot(penguins, aes(x = species)) + geom_bar(aes(color =species)) + geom_bar(aes(color = species)), position = position_dodge2()

ggplot(penguins, aes(x = island)) + geom_bar(aes(fill = species), position = position_dodge2(preserve = 'single', reverse = TRUE)) + scale_fill_viridis_d() + theme_classic()

p <- ggplot(penguins, aes(x = island)) + geom_bar(aes(fill = species), position = position_dodge2(preserve = 'single', reverse = TRUE))
p
p + scale_fill_viridis_d(option = 'E')