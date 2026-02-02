data()

#Exercice 1 - Utilisation d'un dataframe existant un dataframe
#Exercice sur les Fonctions en R
# Q1
iris
class(iris)

# Q2
View(iris)

# Q3
nrow(iris)

# Q4 le nombre de colonnes
ncol(iris)

# Q5 noms des colonnes
colnames(iris)

# Q6 resume d'iris
summary(iris)

# Q7 on met le c dans la deuxieme partie de la paranthese pour les colonnes
iris[ , c("Sepal.Length","Species") ] 

# Q8 on met le C dans la premiere partie de la paranthese pour les lignes
iris[c(100,103,105),]

# Q9 meme chose qu' en haut, on met Deux points pour faire avoir toutes les valeurs entre les deux bords
iris[c(50:100),]

# Q10 mean = moyenne, mettre le nom de la données(iris),un signe dollars puis la colonne qu on veut calculer 
mean(Sepal.Length)
mean(iris$Sepal.Length) #ecriture correcte

# Q11 mediane pour la mediane, toujours mettre la donne, le dollar et la collone 
mediane(iris$sepal.width)

# Q12 sd pour ecart type, meme regles
sd(iris$Petal.Length)

#Q13 pas besoin de mettre les paramettre, il le fait pour toi
quantile(iris$Petal.Width)


#Exercice 2 - Import/Exporter un dataframe
#Exercice sur les Fonctions en R

#pour importer un fichier, tu met le zip dansles documents, puis tout extraire, copier le lien dans la barre de l'exploreur, puis mettre sa
dfanime = read.csv(file = "C:/Users/mborkhosh/Documents/archive/anime.csv", header = TRUE,sep = ",",dec = ".")

#Q2
View(dfanime)

#Q3
dim(dfanime)

#Q4
mean(dfanime$Score)

#Q5 bien faire attention aux majuscules etc
sum(dfanime$Vote)

#Q6
sd(dfanime$Score)

#Q7
quantile(dfanime$Score)
quantile(dfAnime$Score, probs = seq(from = 0.1, to = 0.9, by = 0.1))# sa c est pour les deciles

#Les fonctions subset(), table() et prop.table()

#Q1
runif(10000, min = 9, max = 10)#repond pas a la question

extraction1 = subset(dfanime, Score > 9)
nrow(extraction1)



