#Exercice 1 - Importer les données

#Q1
df = read.csv("fao.csv", sep=";", dec=",", header = TRUE)

#Q2

nrow(df)

#Q3
summary(df)

#Exercice 2 - Statistiques descriptives

#Q1

mean(df$Dispo_alim)
mean(df$Dispo_alim, na.rm = TRUE)

#Q2

# na.rm c est pour enlever les valeurs manquante pour 

sum(df$Population, na.rm = TRUE)

#Q3

sd(df$Import_viande, na.rm = TRUE)
sd(df$Export_viande, na.rm = TRUE)

#Q4
median(df$Prod_viande, na.rm = TRUE)

#Q5

quantile(df$Dispo_alim, na.rm = TRUE)

#Q6 

quantile(df$Import_viande, seq(0,1,0.01))


#Exercice 3 - Tris et filtres

#Q1
rang = order(df$Population)
resultat_1 = head(df[ rang , ], n = 5)
View(resultat_1)

#Q2
rang = order(df$Population, decreasing = TRUE)
resultat_2 = head(df[ rang , ], n = 5)
View(resultat_2)

#Q3
rang = order(df$Prod_viande, decreasing = TRUE)
resultat_3 = head(df[ rang , ], n = 5)
View(resultat_3)

#Q4
rang = order(df$Import_viande, decreasing = TRUE)
resultat_4 = head(df[ rang , ], n = 5)
View(resultat_4)

#Q5
resultat_5 = subset(df, Dispo_alim>=2300)
View(resultat_5)

#Q6
resultat_6 = subset(df, Dispo_alim > 3500  & Import_viande > 1000)
View(resultat_6)

#Q7
resultat_7 = subset(df, Nom %in% c("France","Belgique"))
View(resultat_7)

#Exercice 4 - Modifier le dataframe

#Q1
df$Part_export = df$Export_viande/df$Prod_viande

#Q2
df$Dispo_alim_pays<-df$Dispo_alim*df$Population

#Q3
write.table(x = df, file = "ExportTp2.csv")

#Q4
total = sum(df$Dispo_alim_pays, na.rm = TRUE)
print(total)

dispo_alim_mondiale/2300


#Exercice 5 - Corrélation

#Q1
plot(x = df$Prod_viande, y = df$Export_viande, main = "Pays : Prod_viande / Export_viande")

#Q2
cor(x = df$Prod_viande, y = df$Export_viande)

#Q3
matriceCor = cor(df[ , - 1] , use = "complete.obs")
matriceCor = round(matriceCor , 2)
View(matriceCor)

#Q4
install.packages("corrplot")

#Q5
library(corrplot)
corrplot(matriceCor, method="circle")