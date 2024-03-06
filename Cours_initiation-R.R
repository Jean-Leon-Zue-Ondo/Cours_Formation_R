
# Plan de formation
  
#Introduction
#Structure des données
#Les graphiques
#Statistique avec R

# -----------------------------------------

# Introduction-----

"Hello World"

# Pour afficher des nombres :
 
5
6
10

## Compilation du code

"Hello World!"

# la `print()`fonction--- 

print("My first code !")

### Exemple utilisation de print() dans une boucle
  

for (x in 1:10) {
  print(x)
}

## Les commentaires-------

# Ceci est un comment
  
"Hello World!"


# Cet exemple utilise un commentaire à la fin d'une ligne de code :


"Hello World!" # Ceci est un comment



# Variables ----------------------

# Les variables sont des conteneurs permettant de stocker des valeurs de données.

name <- "John"
age <- 40

name   # output "John"
age    # output 40

# imprimer/afficher des variables dans R. 

name <- "John Doe"

# print() fonction disponible pour affichez une fonction

name <- "John Doe"

print(name) 

# Assigner une même valeur à plusieur variable

var1 <- var2 <- var3 <- "Orange"

# Print variable values

var1
var2
var3

### Concaténer des variables

text <- "awesome"

paste("R is", text)

text1 <- "R is"
text2 <- "awesome"

paste(text1, text2)


#Pour les nombres :

num1 <- 5
num2 <- 10

num1 + num2

# Si vous essayez de combiner une chaîne (texte) et un nombre, R vous donnera une erreur :

num <- 5
text <- "Some text"

# num + text


# N'oubliez pas que les noms de variables sont sensibles à la casse !
  
# Affectation correcte:

myvar <- "John"
my_var <- "John"
myVar <- "John"
MYVAR <- "John"
myvar2 <- "John"
.myvar <- "John"

# Affectation incorrecte:

#2myvar <- "John"
#my-var <- "John"
#my var <- "John"
#_my_var <- "John"
#my_v@ar <- "John"
#TRUE <- "John"

## Types de données -------------------------------


# numeric-----

x <- 10.5
class(x)

# integer----

x <- 1000L
class(x)

# complex----

x <- 9i + 3
class(x)

# string----

x <- "R is exciting"
class(x)


#Les chaînes sont utilisées pour stocker du texte.

"hello"
'hello'


# Il existe de nombreuses fonctions de chaîne utiles dans R.

str <- "Hello World!"
nchar(str)

#vérifier si un caractère ou une séquence de caractères est présent dans une chaîne 

str <- "Hello World!"

grepl("H", str)
grepl("Hello", str)
grepl("X", str)

# Combiner deux chaînes

str1 <- "Hello"
str2 <- "World"

paste(str1, str2)


## logiques/boolean ----

x <- TRUE
class(x)


### Opérateurs de comparaison ------------------

 x == y
x != y 
 x > y
 x <
x>= y
x <= y

### Opérateurs logiques R


## Les Condition if ...Else --------------------


### L'instruction if

a <- 33
b <- 200

if (b > a) {
  print("b is greater than a")
}

### L'instruction else if --------

a <- 33
b <- 33

if (b > a) {
  print("b is greater than a")
} else if (a == b) {
  print ("a and b are equal")
}

a <- 200
b <- 33

if (b > a) {
  print("b is greater than a")
} else if (a == b) {
  print("a and b are equal")
} else {
  print("a is greater than b")
}

a <- 200
b <- 33

if (b > a) {
  print("b is greater than a")
} else {
  print("b is not greater than a")
}

# Instruction imbriqué

  
x <- 41

if (x > 10) {
  print("Above ten")
  if (x > 20) {
    print("and also above 20!")
      } else {
        print("but not above 20.")
      }
    } else {
      print("below 10.")
    }
    

# les Opérateur & et ou

a <- 200
b <- 33
c <- 500

if (a > b & c > a) {
  print("Both conditions are true")
  }

# Le `|`symbole 

a <- 200
b <- 33
c <- 500

if (a > b | a > c) {
  print("At least one of the conditions is true")
}


### Les Boucles --------------------



### Boucle while

i <- 1
while (i < 6) {
  print(i)
  i <- i + 1
}

### Boucle while avec instruction "break"

i <- 1
while (i < 6) {
  print(i)
  i <- i + 1
  if (i == 4) {
    break
  }
}

### Boucle while avec instruction "next"
i <- 0
while (i < 6) {
  i <- i + 1
  if (i == 3) {
    next
  }
  print(i)
}

# la boucle For-------

  
    for (x in 1:10) {
      print(x)
    }
    

fruits <- list("apple", "banana", "cherry")

for (x in fruits) {
  print(x)
}


dice <- c(1, 2, 3, 4, 5, 6)

for (x in dice) {
  print(x)
}


fruits <- list("apple", "banana", "cherry")

for (x in fruits) {
  if (x == "cherry") {
    break
  }
  print(x)
}



#### Les fonctions ---------------------------------

# Une fonction est un bloc de code qui ne s'exécute que lorsqu'elle est appelée.


#
my_function <- function() { 
    print("Hello World!")
    }
    
# Pour appeler une fonction, utilisez le nom de la fonction suivi de parenthèses

my_function <- function() {
  print("Hello World!")
}

my_function() 

## Arguments

# Les informations peuvent être transmises aux fonctions sous forme d'arguments.


my_function <- function(fname) {
  paste(fname, "Griffin")
}

my_function("Peter")
my_function("Lois")
my_function("Stewie")


## Nombre d'arguments

# Par défaut, une fonction doit être appelée avec le bon nombre d'arguments.

# Cette fonction attend 2 arguments et obtient 2 arguments :


my_function <- function(fname, lname) {
  paste(fname, lname)
}

my_function("Peter", "Griffin")


## Valeur du paramètre par défaut

my_function <- function(country = "Norway") {
  paste("I am from", country)
}

my_function("Sweden")
my_function("India")
my_function() 
my_function("USA")

#Pour laisser une fonction renvoyer un résultat, utilisez la `return()`fonction :
  

my_function <- function(x) {
  return (5 * x)
}

print(my_function(3))
print(my_function(5))
print(my_function(9))


## Fonctions imbriquées

Nested_function <- function(x, y) {
  a <- x + y
  return(a)
}



## Variables globales

#Les variables créées en dehors d'une fonction sont appelées variables **globales** .

# Les variables globales peuvent être utilisées par tout le monde, aussi bien à l’intérieur qu’à l’extérieur des fonctions.

txt <- "awesome"
my_function <- function() {
  paste("R is", txt)
}

my_function()


## Structures de données R

## Vecteurs

# Vecteur  chaine de caractére 

fruits <- c("banana", "apple", "orange")

# Print fruits
fruits


# Vecteur numérique

numbers <- c(1, 2, 3)

numbers

# Vector with numerical values in a sequence

numbers <- 1:10

numbers

# Vecteur logique

log_values <- c(TRUE, FALSE, TRUE, FALSE)

log_values


## Longueur du vecteur


fruits <- c("banana", "apple", "orange")

length(fruits)

## Trier un vecteur

fruits <- c("banana", "apple", "orange", "mango", "lemon")
numbers <- c(13, 3, 5, 7, 20, 2)

sort(fruits)  # Sort a string
sort(numbers) # Sort numbers
```

## Accéder aux vecteurs

fruits <- c("banana", "apple", "orange")

fruits[1]

fruits <- c("banana", "apple", "orange", "mango", "lemon")

# Access the first and third item (banana and orange)

fruits[c(1, 3)]

fruits <- c("banana", "apple", "orange", "mango", "lemon")

# Access all items except for the first item

fruits[c(-1)]

## Modifier un élément

fruits <- c("banana", "apple", "orange", "mango", "lemon")

# Change "banana" to "pear"

fruits[1] <- "pear"

# Print fruits
fruits


## Répéter les vecteurs

repeat_each <- rep(c(1,2,3), each = 3)

repeat_each


# Répétez la séquence du vecteur :

repeat_times <- rep(c(1,2,3), times = 3)

repeat_times

## Génération de vecteurs séquencés

numbers <- 1:10

numbers

# Pour faire des pas plus ou moins grands dans une séquence, utilisez la `seq()`fonction :

numbers <- seq(from = 0, to = 100, by = 20)

numbers


## Listes---


# List of strings

thislist <- list("apple", "banana", "cherry")

# Print the list

thislist


## Accéder aux listes


thislist <- list("apple", "banana", "cherry")

thislist[1]


## Modifier la valeur de l'article


thislist <- list("apple", "banana", "cherry")
thislist[1] <- "blackcurrant"

thislist

## Longueur de la liste

thislist <- list("apple", "banana", "cherry")

length(thislist)


## Vérifier si l'élément existe

thislist <- list("apple", "banana", "cherry")

"apple" %in% thislist

## Ajouter des éléments de liste

# Ajoutez « orange » à la liste :


thislist <- list("apple", "banana", "cherry")

append(thislist, "orange")


#Ajouter "orange" à la liste après "banane" (index 2) :
  
thislist <- list("apple", "banana", "cherry")

append(thislist, "orange", after = 2)

#Supprimez « pomme » de la liste 

thislist <- list("apple", "banana", "cherry")

newlist <- thislist[-1]

# Print the new list

newlist

## Gamme d'index

thislist <- list("apple", "banana", "cherry", "orange", "kiwi", "melon", "mango")

(thislist)[2:5]

## Parcourez une liste

# Imprimez tous les éléments de la liste, un par un :

thislist <- list("apple", "banana", "cherry")

for (x in thislist) {
  print(x)
}

## Rejoignez deux listes


list1 <- list("a", "b", "c")
list2 <- list(1,2,3)
list3 <- c(list1,list2)

list3


# Matrices -----

# Create a matrix

thismatrix <- matrix(c(1,2,3,4,5,6), nrow = 3, ncol = 2)

# Print the matrix

thismatrix

thismatrix <- matrix(c("apple", "banana", "cherry", "orange"), nrow = 2, ncol = 2)

thismatrix

## Accéder aux éléments de la matrice

thismatrix <- matrix(c("apple", "banana", "cherry", "orange"), nrow = 2, ncol = 2)

thismatrix[1, 2]

thismatrix <- matrix(c("apple", "banana", "cherry", "orange"), nrow = 2, ncol = 2)

thismatrix[2,]

thismatrix <- matrix(c("apple", "banana", "cherry", "orange"), nrow = 2, ncol = 2)

thismatrix[,2]

## Accéder à plusieurs lignes

thismatrix <- matrix(c("apple", "banana", "cherry", "orange","grape", "pineapple", "pear", "melon", "fig"), nrow = 3, ncol = 3)

thismatrix[c(1,2),]

thismatrix <- matrix(c("apple", "banana", "cherry", "orange","grape", "pineapple", "pear", "melon", "fig"), nrow = 3, ncol = 3)

thismatrix[, c(1,2)]

## Ajouter des lignes et des colonnes

thismatrix <- matrix(c("apple", "banana", "cherry", "orange","grape", "pineapple", "pear", "melon", "fig"), nrow = 3, ncol = 3)

newmatrix <- cbind(thismatrix, c("strawberry", "blueberry", "raspberry"))

newmatrix

thismatrix <- matrix(c("apple", "banana", "cherry", "orange","grape", "pineapple", "pear", "melon", "fig"), nrow = 3, ncol = 3)

newmatrix <- rbind(thismatrix, c("strawberry", "blueberry", "raspberry"))

# Print the new matrix

newmatrix

## Supprimer des lignes et des colonnes

thismatrix <- matrix(c("apple", "banana", "cherry", "orange", "mango", "pineapple"), nrow = 3, ncol =2)

#Remove the first row and the first column

thismatrix <- thismatrix[-c(1), -c(1)]

thismatrix

## Vérifier si un élément existe

thismatrix <- matrix(c("apple", "banana", "cherry", "orange"), nrow = 2, ncol = 2)

"apple" %in% thismatrix

## Nombre de lignes et de colonnes

thismatrix <- matrix(c("apple", "banana", "cherry", "orange"), nrow = 2, ncol = 2)

dim(thismatrix)

thismatrix <- matrix(c("apple", "banana", "cherry", "orange"), nrow = 2, ncol = 2)

length(thismatrix)


## Boucler à travers une matrice

thismatrix <- matrix(c("apple", "banana", "cherry", "orange"), nrow = 2, ncol = 2)

for (rows in 1:nrow(thismatrix)) {
  for (columns in 1:ncol(thismatrix)) {
    print(thismatrix[rows, columns])
  }
}

## Combiner deux matrices

# Combine matrices
Matrix1 <- matrix(c("apple", "banana", "cherry", "grape"), nrow = 2, ncol = 2)
Matrix2 <- matrix(c("orange", "mango", "pineapple", "watermelon"), nrow = 2, ncol = 2)

# Adding it as a rows

Matrix_Combined <- rbind(Matrix1, Matrix2)
Matrix_Combined

# Adding it as a columns

Matrix_Combined <- cbind(Matrix1, Matrix2)
Matrix_Combined


## Tableaux ------

thisarray <- c(1:24)
thisarray

multiarray <- array(thisarray, dim = c(4, 3, 1))
multiarray


## Accéder aux éléments du tableau

thisarray <- c(1:24)
multiarray <- array(thisarray, dim = c(4, 3, 1))

multiarray[2, 3, 1]


# Accéder à tous les éléments de la première ligne

multiarray <- array(thisarray, dim = c(4, 3, 1))
multiarray[c(1),,1]

# Accéder à tous les éléments de la première ligne

multiarray <- array(thisarray, dim = c(4, 3, 1))
multiarray[,c(1),1]


## Vérifier si un élément existe

thisarray <- c(1:24)
multiarray <- array(thisarray, dim = c(4, 3, 1))

2 %in% multiarray

## Nombre de lignes et de colonnes

thisarray <- c(1:24)
multiarray <- array(thisarray, dim = c(4, 3, 1))

dim(multiarray)


## Longueur du tableau

thisarray <- c(1:24)
multiarray <- array(thisarray, dim = c(4, 3, 1))

length(multiarray)

## Boucler à travers un tableau

thisarray <- c(1:24)
multiarray <- array(thisarray, dim = c(4, 3, 2))

for(x in multiarray){
  print(x)
}

# Create a data frame-------------

Data_Frame <- data.frame (
  Training = c("Strength", "Stamina", "Other"),
  Pulse = c(100, 150, 120),
  Duration = c(60, 30, 45)
)

# Print the data frame

Data_Frame

## Résumer les données

#Utilisez la `summary()`fonction pour résumer les données d'un Data Frame 

Data_Frame <- data.frame (
  Training = c("Strength", "Stamina", "Other"),
  Pulse = c(100, 150, 120),
  Duration = c(60, 30, 45)
)

Data_Frame

summary(Data_Frame)


## Accéder aux éléments

Data_Frame <- data.frame (
  Training = c("Strength", "Stamina", "Other"),
  Pulse = c(100, 150, 120),
  Duration = c(60, 30, 45))

Data_Frame[1]

Data_Frame[["Training"]]

Data_Frame$Training

## Ajouter des lignes

Data_Frame <- data.frame (
  Training = c("Strength", "Stamina", "Other"),
  Pulse = c(100, 150, 120),
  Duration = c(60, 30, 45))

New_row_DF <- rbind(Data_Frame, c("Strength", 110, 110))

New_row_DF

## Ajouter des colonnes

Data_Frame <- data.frame (
  Training = c("Strength", "Stamina", "Other"),
  Pulse = c(100, 150, 120),
  Duration = c(60, 30, 45))

New_col_DF <- cbind(Data_Frame, Steps = c(1000, 6000, 2000))

New_col_DF

## Supprimer des lignes et des colonnes

Data_Frame <- data.frame (
  Training = c("Strength", "Stamina", "Other"),
  Pulse = c(100, 150, 120),
  Duration = c(60, 30, 45))

Data_Frame_New <- Data_Frame[-c(1), -c(1)]

Data_Frame_New

## Nombre de lignes et de colonnes

Data_Frame <- data.frame (
  Training = c("Strength", "Stamina", "Other"),
  Pulse = c(100, 150, 120),
  Duration = c(60, 30, 45))

dim(Data_Frame)

Data_Frame <- data.frame (
  Training = c("Strength", "Stamina", "Other"),
  Pulse = c(100, 150, 120),
  Duration = c(60, 30, 45))

ncol(Data_Frame)
nrow(Data_Frame)

## Longueur de la trame de données

Data_Frame <- data.frame (
  Training = c("Strength", "Stamina", "Other"),
  Pulse = c(100, 150, 120),
  Duration = c(60, 30, 45))

length(Data_Frame)

## Combinaison de trames de données

Data_Frame1 <- data.frame (
  Training = c("Strength", "Stamina", "Other"),
  Pulse = c(100, 150, 120),
  Duration = c(60, 30, 45))

Data_Frame2 <- data.frame (
  Training = c("Stamina", "Stamina", "Strength"),
  Pulse = c(140, 150, 160),
  Duration = c(30, 30, 20))

New_Data_Frame <- rbind(Data_Frame1, Data_Frame2)
New_Data_Frame

Data_Frame3 <- data.frame (
  Training = c("Strength", "Stamina", "Other"),
  Pulse = c(100, 150, 120),
  Duration = c(60, 30, 45))

Data_Frame4 <- data.frame (
  Steps = c(3000, 6000, 2000),
  Calories = c(300, 400, 300))

New_Data_Frame1 <- cbind(Data_Frame3, Data_Frame4)
New_Data_Frame1

## Facteurs--------------

music_genre <- factor(c("Jazz", "Rock", "Classic", "Classic", "Pop", "Jazz", "Rock", "Jazz"))

music_genre

music_genre <- factor(c("Jazz", "Rock", "Classic", "Classic", "Pop", "Jazz", "Rock", "Jazz"))

levels(music_genre)

music_genre <- factor(c("Jazz", "Rock", "Classic", "Classic", "Pop", "Jazz", "Rock", "Jazz"), levels = c("Classic", "Jazz", "Pop", "Rock", "Other"))

levels(music_genre)

## Longueur du facteur

music_genre <- factor(c("Jazz", "Rock", "Classic", "Classic", "Pop", "Jazz", "Rock", "Jazz"))

length(music_genre)

## accéder aux éléments d'un facteur


music_genre <- factor(c("Jazz", "Rock", "Classic", "Classic", "Pop", "Jazz", "Rock", "Jazz"))

music_genre[3]


## Pour modifier la valeur d'un élément

music_genre <- factor(c("Jazz", "Rock", "Classic", "Classic", "Pop", "Jazz", "Rock", "Jazz"))

music_genre[3] <- "Pop"
music_genre[3]


  
#Modifiez la valeur du troisième élément :

music_genre <- factor(c("Jazz", "Rock", "Classic", "Classic", "Pop", "Jazz", "Rock", "Jazz"),
                      levels = c("Classic", "Jazz", "Pop", "Rock", "Opera"))

music_genre[3] <- "Opera"
music_genre[3]

## Les Graphiques -----------------------------------

# La `plot()`fonction----

plot(1, 3)

# Pour dessiner plus de points
  
plot(c(1, 8), c(3, 10))

## Points multiples

plot(c(1, 2, 3, 4, 5), c(3, 7, 8, 9, 12))


x <- c(1, 2, 3, 4, 5)
y <- c(3, 7, 8, 9, 12)

plot(x, y)

## Séquences de points

plot(1:10)


## Tracer une ligne

plot(1:10, type="l")

## Étiquettes de tracé

plot(1:10, main="My Graph", xlab="The x-axis", ylab="The y axis")

## Apparence du graphique -----

### Couleurs

plot(1:10, col="red")

### Taille

plot(1:10, cex=2)

### Forme du point

plot(1:10, pch=25, cex=2)

## Graphiques linéaires
  
plot(1:10, type="l")

## Couleur de la ligne

plot(1:10, type="l", col="blue")

## Largeur de ligne

plot(1:10, type="l", lwd=2)

## Styles de lignes

plot(1:10, type="l", lwd=5, lty=3)

## Plusieurs lignes

line1 <- c(1,2,3,4,5,10)
line2 <- c(2,5,7,8,9,10)

plot(line1, type = "l", col = "blue")
lines(line2, type="l", col = "red")

## Nuages ​​de points

x <- c(5,7,8,7,2,2,9,4,11,12,9,6)
y <- c(99,86,87,88,111,103,87,94,78,77,85,86)

plot(x, y)


x <- c(5,7,8,7,2,2,9,4,11,12,9,6)
y <- c(99,86,87,88,111,103,87,94,78,77,85,86)

plot(x, y, main="Observation of Cars", xlab="Car age", ylab="Car speed")

## Comparer les parcelles


x1 <- c(5,7,8,7,2,2,9,4,11,12,9,6)
y1 <- c(99,86,87,88,111,103,87,94,78,77,85,86)

x2 <- c(2,2,8,1,15,8,12,9,7,3,11,4,7,14,12)
y2 <- c(100,105,84,105,90,99,90,95,94,100,79,112,91,80,85)

plot(x1, y1, main="Observation of Cars", xlab="Car age", ylab="Car speed", col="red", cex=2)
points(x2, y2, col="blue", cex=2)


## Camemberts

x <- c(10,20,30,40)

pie(x)

## Angle de départ

x <- c(10,20,30,40)

pie(x, init.angle = 90)

## Étiquettes et en-tête

x <- c(10,20,30,40)

mylabel <- c("Apples", "Bananas", "Cherries", "Dates")

pie(x, label = mylabel, main = "Fruits")

colors <- c("blue", "yellow", "green", "black")

pie(x, label = mylabel, main = "Fruits", col = colors)


# Create a vector of labels

mylabel <- c("Apples", "Bananas", "Cherries", "Dates")

# Create a vector of colors

colors <- c("blue", "yellow", "green", "black")

# Display the pie chart with colors

pie(x, label = mylabel, main = "Pie Chart", col = colors)

# Display the explanation box

legend("bottomright", mylabel, fill = colors)


## Diagramme à barres


# x-axis values

x <- c("A", "B", "C", "D")

# y-axis values

y <- c(2, 4, 6, 8)

barplot(y, names.arg = x)

## Couleur de la barre

x <- c("A", "B", "C", "D")
y <- c(2, 4, 6, 8)

barplot(y, names.arg = x, col = "red")

## Densité / Texture de la barre

x <- c("A", "B", "C", "D")
y <- c(2, 4, 6, 8)

barplot(y, names.arg = x, density = 10)

## Largeur de la barre

x <- c("A", "B", "C", "D")
y <- c(2, 4, 6, 8)

barplot(y, names.arg = x, width = c(1,2,3,4))

## Barres horizontales

x <- c("A", "B", "C", "D")
y <- c(2, 4, 6, 8)

barplot(y, names.arg = x, horiz = TRUE)


## Introduction aux statistiques


### Exemple

mtcars

## Informations sur l'ensemble de données

?mtcars

## Obtenir des informations

# Utilisez la `dim()`fonction

dim(Data_Cars)

# Use names() to find the names of the variables from the data set

names(Data_Cars)

Data_Cars <- mtcars

rownames(Data_Cars)


## Imprimer les valeurs des variables

Data_Cars <- mtcars

Data_Cars$cyl

## Trier les valeurs des variables

Data_Cars <- mtcars

sort(Data_Cars$cyl)

Data_Cars <- mtcars

summary(Data_Cars)

# R Max et Min

Data_Cars <- mtcars

max(Data_Cars$hp)
min(Data_Cars$hp)
```

#### Observation des voitures

Data_Cars <- mtcars

which.max(Data_Cars$hp)
which.min(Data_Cars$hp)

Data_Cars <- mtcars

rownames(Data_Cars)[which.max(Data_Cars$hp)]
rownames(Data_Cars)[which.min(Data_Cars$hp)]

##------ Fin #-------------------------------------------------------------------------