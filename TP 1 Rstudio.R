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
dfManga = read.csv(file = "C:/Users/mborkhosh/Documents/archive/manga.csv", header = TRUE,sep = ",",dec = ".")
#Q2
View(dfanime)
View(dfManga)

#Q3
dim(dfanime)
dim(dfManga)

#Q4 mean = moyenne
mean(dfanime$Score)
mean(dfManga$Score)

#Q5 bien faire attention aux majuscules etc
sum(dfanime$Vote)
sum(dfManga$Vote)

#Q6
sd(dfanime$Score)
sd(dfManga$Score)

#Q7
quantile(dfanime$Score)
quantile(dfAnime$Score, probs = seq(from = 0.1, to = 0.9, by = 0.1))# sa c est pour les deciles, faire la meme pour dfmanga

#Les fonctions subset(), table() et prop.table()

#Q1

# utilise un nv nom d extraction a chaque fois

runif(10000, min = 9, max = 10)#repond pas a la question

extraction_1 = subset(dfManga, Score > 9)
nrow(extraction_1) # repond a la question ici

#Q2
extraction_2 = subset(dfManga, Vote > = 200000)
nrow(extraction_2)

#Q3
extraction_3 = subset(dfManga, Vote > = 200000 & Score > = 8)
nrow(extraction_3) # quand on veut avoir deux conditions

#Q4 avoir la note du manga entre deux notes demander

extraction_4 = subset(dfManga, Score > = 7 & Score < = 8)
nrow(extraction_4)

#Filtre sur les Animes

#Q1

effectif = table(dfAnime$Rating)
print(effectif)
prop.table(effectif)
length(effectif)

#Q2 utiliser un double egale

extraction_Rating = subset(dfAnime, Rating == "R - 17+ (violence & profanity)")
nrow(extraction_Rating)

#Q3

extraction_Rating2 = subset(dfAnime, Rating == "R - 17+ (violence & profanity)" & Score > = 8)
nrow(extraction_Rating2)

#Q4 utiliser un point  d exclamation pour "ne pas correspondre a "

extraction_Rating3 = subset(dfAnime, Rating != "R - 17+ (violence & profanity)")
nrow(extraction_Rating4)

#Q5 utiliser la correction pour celle la question 5 et 6 parce que je n'avait pas compris comment utilliser la fonction %int%

extraction_Rating4 = subset(dfAnime, Rating %in% c("PG - Children","G - All Ages"))
nrow(extraction_Rating4)

#Q6

extraction_Rating5 = subset(dfAnime, !Rating %in% c("PG - Children","G - All Ages"))
nrow(extraction_Rating5)

#Q7

Note_Vote = subset(dfAnime, Score >= 9 | Vote > 400000)
nrow(Note_Vote)


#Les fonctions rbind() et write.table()

#Q1

dfManga = dfManga[ , c("Title","Score","Vote","Ranked")]
dfAnime = dfAnime[ , c("Title","Score","Vote","Ranked")]

#Q2 ne pas oublier le signe dollar

dfManga$Type <- "Manga"
dfAnime$Type <- "Anime"

#Q3

dfConcat = rbind(dfAnime,dfManga)
View(dfConcat)

