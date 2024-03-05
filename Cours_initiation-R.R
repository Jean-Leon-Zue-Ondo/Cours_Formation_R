
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

multiarray <- array(thisarray, dim = c(4, 3, 2))
multiarray


## Accéder aux éléments du tableau

Vous pouvez accéder aux éléments du tableau en vous référant à la position de l'index. Vous pouvez utiliser les `[]`crochets pour accéder aux éléments souhaités à partir d'un tableau :

### Exemple

```{r}
thisarray <- c(1:24)
multiarray <- array(thisarray, dim = c(4, 3, 2))

multiarray[2, 3, 2]
```

Vous pouvez également accéder à la ligne ou à la colonne entière d'une matrice dans un tableau, en utilisant la `c()`fonction :
  
  ### Exemple
  
  ```{r}
thisarray <- c(1:24)

# Access all the items from the first row from matrix one
multiarray <- array(thisarray, dim = c(4, 3, 2))
multiarray[c(1),,1]

# Access all the items from the first column from matrix one
multiarray <- array(thisarray, dim = c(4, 3, 2))
multiarray[,c(1),1]
```

## Vérifier si un élément existe

Pour savoir si un élément spécifié est présent dans un tableau, utilisez l' `%in%`opérateur :

### Exemple

Vérifiez si la valeur "2" est présente dans le tableau :

```{r}
thisarray <- c(1:24)
multiarray <- array(thisarray, dim = c(4, 3, 2))

2 %in% multiarray

```

## Nombre de lignes et de colonnes

Utilisez la `dim()`fonction pour trouver le nombre de lignes et de colonnes dans un tableau :

### Exemple

```{r}
thisarray <- c(1:24)
multiarray <- array(thisarray, dim = c(4, 3, 2))

dim(multiarray)
```

## Longueur du tableau

Utilisez la `length()`fonction pour trouver la dimension d'un tableau :
  
  ### Exemple
  
  ```{r}
thisarray <- c(1:24)
multiarray <- array(thisarray, dim = c(4, 3, 2))

length(multiarray)
```

## Boucler à travers un tableau

Vous pouvez parcourir les éléments du tableau en utilisant une `for`boucle :
  
  ### Exemple
  
  ```{r}
thisarray <- c(1:24)
multiarray <- array(thisarray, dim = c(4, 3, 2))

for(x in multiarray){
  print(x)
}
```

## Trames de données

Les trames de données sont des données affichées sous forme de tableau.

Les trames de données peuvent contenir différents types de données. Alors que la première colonne peut être `character`, la deuxième et la troisième peuvent être `numeric`ou `logical`. Cependant, chaque colonne doit contenir le même type de données.

Utilisez la `data.frame()`fonction pour créer un bloc de données :
  
  ### Exemple
  
  ```{r}
# Create a data frame
Data_Frame <- data.frame (
  Training = c("Strength", "Stamina", "Other"),
  Pulse = c(100, 150, 120),
  Duration = c(60, 30, 45)
)

# Print the data frame
Data_Frame
```

## Résumer les données

Utilisez la `summary()`fonction pour résumer les données d'un Data Frame 

### Exemple

```{r}
Data_Frame <- data.frame (
  Training = c("Strength", "Stamina", "Other"),
  Pulse = c(100, 150, 120),
  Duration = c(60, 30, 45)
)

Data_Frame

summary(Data_Frame)
```

## Accéder aux éléments

Nous pouvons utiliser des parenthèses simples `[ ]`, des parenthèses doubles `[[ ]]`ou `$` pour accéder aux colonnes d'un bloc de données :
  
  ### Exemple
  
  ```{r}
Data_Frame <- data.frame (
  Training = c("Strength", "Stamina", "Other"),
  Pulse = c(100, 150, 120),
  Duration = c(60, 30, 45)
)

Data_Frame[1]

Data_Frame[["Training"]]

Data_Frame$Training
```

## Ajouter des lignes

Utilisez la `rbind()`fonction pour ajouter de nouvelles lignes dans un Data Frame :
  
  ### Exemple
  
  ```{r}
Data_Frame <- data.frame (
  Training = c("Strength", "Stamina", "Other"),
  Pulse = c(100, 150, 120),
  Duration = c(60, 30, 45)
)

# Add a new row
New_row_DF <- rbind(Data_Frame, c("Strength", 110, 110))

# Print the new row
New_row_DF
```

## Ajouter des colonnes

Utilisez la `cbind()`fonction pour ajouter de nouvelles colonnes dans un Data Frame :
  
  ### Exemple
  
  ```{r}
Data_Frame <- data.frame (
  Training = c("Strength", "Stamina", "Other"),
  Pulse = c(100, 150, 120),
  Duration = c(60, 30, 45)
)

# Add a new column
New_col_DF <- cbind(Data_Frame, Steps = c(1000, 6000, 2000))

# Print the new column
New_col_DF

```

## Supprimer des lignes et des colonnes

Utilisez la `c()`fonction pour supprimer des lignes et des colonnes dans un bloc de données :
  
  ### Exemple
  
  ```{r}
Data_Frame <- data.frame (
  Training = c("Strength", "Stamina", "Other"),
  Pulse = c(100, 150, 120),
  Duration = c(60, 30, 45)
)

# Remove the first row and column
Data_Frame_New <- Data_Frame[-c(1), -c(1)]

# Print the new data frame
Data_Frame_New
```

## Nombre de lignes et de colonnes

Utilisez la `dim()`fonction pour trouver le nombre de lignes et de colonnes dans un Data Frame :
  
  ### Exemple
  
  ```{r}
Data_Frame <- data.frame (
  Training = c("Strength", "Stamina", "Other"),
  Pulse = c(100, 150, 120),
  Duration = c(60, 30, 45)
)

dim(Data_Frame)
```

Vous pouvez également utiliser la `ncol()`fonction pour trouver le nombre de colonnes et `nrow()`pour trouver le nombre de lignes :
  
  ```{r}
Data_Frame <- data.frame (
  Training = c("Strength", "Stamina", "Other"),
  Pulse = c(100, 150, 120),
  Duration = c(60, 30, 45)
)

ncol(Data_Frame)
nrow(Data_Frame)
```

## Longueur de la trame de données

Utilisez la `length()`fonction pour trouver le nombre de colonnes dans un bloc de données (similaire à`ncol()` ):
  
  ### Exemple
  
  ```{r}
Data_Frame <- data.frame (
  Training = c("Strength", "Stamina", "Other"),
  Pulse = c(100, 150, 120),
  Duration = c(60, 30, 45)
)

length(Data_Frame)
```

## Combinaison de trames de données

Utilisez la `rbind()`fonction pour combiner verticalement deux ou plusieurs trames de données dans R :
  
  ### Exemple
  
  ```{r}
Data_Frame1 <- data.frame (
  Training = c("Strength", "Stamina", "Other"),
  Pulse = c(100, 150, 120),
  Duration = c(60, 30, 45)
)

Data_Frame2 <- data.frame (
  Training = c("Stamina", "Stamina", "Strength"),
  Pulse = c(140, 150, 160),
  Duration = c(30, 30, 20)
)

New_Data_Frame <- rbind(Data_Frame1, Data_Frame2)
New_Data_Frame
```

Et utilisez la `cbind()`fonction pour combiner deux ou plusieurs trames de données dans R horizontalement :
  
  ```{r}
Data_Frame3 <- data.frame (
  Training = c("Strength", "Stamina", "Other"),
  Pulse = c(100, 150, 120),
  Duration = c(60, 30, 45)
)

Data_Frame4 <- data.frame (
  Steps = c(3000, 6000, 2000),
  Calories = c(300, 400, 300)
)

New_Data_Frame1 <- cbind(Data_Frame3, Data_Frame4)
New_Data_Frame1
```

## Facteurs

Les facteurs sont utilisés pour catégoriser les données. Des exemples de facteurs sont :
  
  -   Démographie : Homme/Femme

-   Musique : rock, pop, classique, jazz

-   Entraînement : Force, Endurance

Pour créer un facteur, utilisez la `factor()`fonction et ajoutez un vecteur comme argument :
  
  ```{r}
# Create a factor
music_genre <- factor(c("Jazz", "Rock", "Classic", "Classic", "Pop", "Jazz", "Rock", "Jazz"))

# Print the factor
music_genre
```

Vous pouvez voir dans l'exemple ci-dessus que le facteur comporte quatre niveaux (catégories) : Classique, Jazz, Pop et Rock.

Pour imprimer uniquement les niveaux, utilisez la `levels()`fonction :

### Exemple

```{r}
music_genre <- factor(c("Jazz", "Rock", "Classic", "Classic", "Pop", "Jazz", "Rock", "Jazz"))

levels(music_genre)
```

Vous pouvez également définir les niveaux, en ajoutant l' `levels`argument à l'intérieur de la `factor()`fonction :

### Exemple

```{r}
music_genre <- factor(c("Jazz", "Rock", "Classic", "Classic", "Pop", "Jazz", "Rock", "Jazz"), levels = c("Classic", "Jazz", "Pop", "Rock", "Other"))

levels(music_genre)
```

## Longueur du facteur

Utilisez la `length()`fonction pour savoir combien d'éléments il y a dans le facteur :
  
  ### Exemple
  
  ```{r}
music_genre <- factor(c("Jazz", "Rock", "Classic", "Classic", "Pop", "Jazz", "Rock", "Jazz"))

length(music_genre)
```

## Facteurs d'accès

Pour accéder aux éléments d'un facteur, référez-vous au numéro d'index, entre `[]`parenthèses :
  
  ```{r}
music_genre <- factor(c("Jazz", "Rock", "Classic", "Classic", "Pop", "Jazz", "Rock", "Jazz"))

music_genre[3]
```

## Modifier la valeur de l'article

Pour modifier la valeur d'un élément spécifique, reportez-vous au numéro d'index :
  
  ### Exemple
  
  Modifiez la valeur du troisième élément :
  
  ```{r}
music_genre <- factor(c("Jazz", "Rock", "Classic", "Classic", "Pop", "Jazz", "Rock", "Jazz"))

music_genre[3] <- "Pop"

music_genre[3]
```

Notez que vous ne pouvez pas modifier la valeur d'un élément spécifique s'il n'est pas déjà spécifié dans le facteur. L'exemple suivant produira une erreur :
  
  ```{r}
music_genre <- factor(c("Jazz", "Rock", "Classic", "Classic", "Pop", "Jazz", "Rock", "Jazz"))

music_genre[3] <- "Opera"

music_genre[3]
```

Cependant, si vous l'avez déjà spécifié dans l' `levels`argument, cela fonctionnera :
  
  ### Exemple
  
  Modifiez la valeur du troisième élément :
  
  ```{r}
music_genre <- factor(c("Jazz", "Rock", "Classic", "Classic", "Pop", "Jazz", "Rock", "Jazz"), levels = c("Classic", "Jazz", "Pop", "Rock", "Opera"))

music_genre[3] <- "Opera"

music_genre[3]
```

## Les Graphiques

La `plot()`fonction est utilisée pour dessiner des points (marqueurs) dans un diagramme.

La fonction prend des paramètres pour spécifier des points dans le diagramme.

Le paramètre 1 spécifie les points sur l' **axe des x** .

Le paramètre 2 spécifie les points sur l' **axe y** .

Dans sa forme la plus simple, vous pouvez utiliser la `plot()`fonction pour tracer deux nombres l'un par rapport à l'autre :
  
  ### Exemple
  
  Dessinez un point dans le diagramme, à la position (1) et à la position (3) :
  
  ```{r}
plot(1, 3)
```

Pour dessiner plus de points, utilisez [des vecteurs](https://www.w3schools.com/r/r_vectors.asp) :
  
  ### Exemple
  
  Dessinez deux points dans le diagramme, un en position (1, 3) et un en position (8, 10) :
  
  ```{r}
plot(c(1, 8), c(3, 10))
```

## Points multiples

Vous pouvez tracer autant de points que vous le souhaitez, assurez-vous simplement d'avoir le même nombre de points sur les deux axes :

### Exemple

```{r}
plot(c(1, 2, 3, 4, 5), c(3, 7, 8, 9, 12))
```

Pour une meilleure organisation, lorsqu'on a beaucoup de valeurs, il est préférable d'utiliser des variables :

### Exemple

```{r}
x <- c(1, 2, 3, 4, 5)
y <- c(3, 7, 8, 9, 12)

plot(x, y)
```

## Séquences de points

Si vous souhaitez dessiner des points dans une séquence, à la fois sur l' **axe des x** et sur l' **axe des y** , utilisez l' `:`opérateur :
  
  ### Exemple
  
  ```{r}
plot(1:10)
```

## Tracer une ligne

La `plot()`fonction prend également un `type`paramètre avec la valeur `l`pour tracer une ligne pour relier tous les points du diagramme :
  
  ### Exemple
  
  ```{r}
plot(1:10, type="l")
```

## Étiquettes de tracé

La `plot()`fonction accepte également d'autres paramètres, tels que `main`, `xlab`et `ylab` si vous souhaitez personnaliser le graphique avec un titre principal et des étiquettes différentes pour les axes x et y :

```{r}
plot(1:10, main="My Graph", xlab="The x-axis", ylab="The y axis")
```

## Apparence du graphique

Il existe de nombreux autres paramètres que vous pouvez utiliser pour modifier l’apparence des points.

### Couleurs

Utilisez pour ajouter une couleur aux points :`col="color"`

```{r}
plot(1:10, col="red")
```

### Taille

Utilisez pour modifier la taille des points ( par défaut, signifie 50 % plus petit et 100 % plus grand) :`cex=number10.52`

### Exemple

```{r}
plot(1:10, cex=2)
```

### Forme du point

Utilisez `pch`avec une valeur comprise entre 0 et 25 pour modifier le format de forme du point :

```{r}
plot(1:10, pch=25, cex=2)
```

Les valeurs du `pch`paramètre vont de 0 à 25, ce qui signifie que nous pouvons choisir jusqu'à 26 types différents de formes de points :
  
  ## Graphiques linéaires
  
  Un graphique linéaire comporte une ligne qui relie tous les points d’un diagramme.

Pour créer une ligne, utilisez la `plot()`fonction et ajoutez le `type`paramètre avec une valeur de `"l"`:
  
  ### Exemple
  
  ```{r}
plot(1:10, type="l")
```

## Couleur de la ligne

La couleur de la ligne est noire par défaut. Pour changer la couleur, utilisez le `col`paramètre :
  
  ```{r}
plot(1:10, type="l", col="blue")
```

## Largeur de ligne

Pour modifier la largeur de la ligne, utilisez le `lwd` paramètre ( `1`est la valeur par défaut, tandis que `0.5`signifie 50 % plus petit et `2`100 % plus grand) :
  
  ### Exemple
  
  ```{r}
plot(1:10, type="l", lwd=2)
```

## Styles de lignes

La ligne est continue par défaut. Utilisez le `lty`paramètre avec une valeur de **0 à 6** pour spécifier le format de ligne.

Par exemple, `lty=3`affichera une ligne pointillée au lieu d’une ligne continue :
  
  ```{r}
plot(1:10, type="l", lwd=5, lty=3)
```

Valeurs des paramètres disponibles pour`lty` :
  
  -   `0`supprime la ligne

-   `1`affiche une ligne continue

-   `2`affiche une ligne pointillée

-   `3`affiche une ligne pointillée

-   `4`affiche une ligne en « pointillés »

-   `5`affiche une ligne "longue pointillée"

-   `6`affiche une ligne "à deux pointillés"

## Plusieurs lignes

Pour afficher plus d'une ligne dans un graphique, utilisez la `plot()`fonction avec la `lines()`fonction :

### Exemple

```{r}
line1 <- c(1,2,3,4,5,10)
line2 <- c(2,5,7,8,9,10)

plot(line1, type = "l", col = "blue")
lines(line2, type="l", col = "red")
```

## Nuages ​​de points

Vous avez appris dans le [chapitre Tracer](https://www.w3schools.com/r/r_graph_plot.asp) que la `plot()`fonction est utilisée pour tracer des nombres les uns par rapport aux autres.

Un « nuage de points » est un type de graphique utilisé pour afficher la relation entre deux variables numériques et trace un point pour chaque observation.

Il a besoin de deux vecteurs de même longueur, un pour l'axe des x (horizontal) et un pour l'axe des y (vertical) :

```{r}
x <- c(5,7,8,7,2,2,9,4,11,12,9,6)
y <- c(99,86,87,88,111,103,87,94,78,77,85,86)

plot(x, y)

```

L’observation dans l’exemple ci-dessus devrait montrer le résultat du passage de 12 voitures.

Cela pourrait ne pas être clair pour quelqu'un qui voit le graphique pour la première fois, ajoutons donc un en-tête et différentes étiquettes pour mieux décrire le nuage de points :
  
  ### Exemple
  
  ```{r}
x <- c(5,7,8,7,2,2,9,4,11,12,9,6)
y <- c(99,86,87,88,111,103,87,94,78,77,85,86)

plot(x, y, main="Observation of Cars", xlab="Car age", ylab="Car speed")
```

Pour rappel, l’observation de l’exemple ci-dessus est le résultat du passage de 12 voitures.

L' **axe des X** montre l'âge de la voiture.

L' **axe des y** montre la vitesse de la voiture lors de son passage.

Y a-t-il des relations entre les observations ?

Il semble que plus la voiture est récente, plus elle roule vite, mais cela pourrait être une coïncidence, après tout, nous n'avons enregistré que 12 voitures.

## Comparer les parcelles

Dans l’exemple ci-dessus, il semble y avoir une relation entre la vitesse de la voiture et l’âge, mais que se passerait-il si nous représentions également les observations d’un autre jour ? Le nuage de points nous dira-t-il autre chose ?
  
  Pour comparer le tracé avec un autre tracé, utilisez la `points()`fonction :
  
  ### Exemple
  
  Tracez deux tracés sur la même figure :
  
  ```{r}
# day one, the age and speed of 12 cars:
x1 <- c(5,7,8,7,2,2,9,4,11,12,9,6)
y1 <- c(99,86,87,88,111,103,87,94,78,77,85,86)

# day two, the age and speed of 15 cars:
x2 <- c(2,2,8,1,15,8,12,9,7,3,11,4,7,14,12)
y2 <- c(100,105,84,105,90,99,90,95,94,100,79,112,91,80,85)

plot(x1, y1, main="Observation of Cars", xlab="Car age", ylab="Car speed", col="red", cex=2)
points(x2, y2, col="blue", cex=2)
```

## Camemberts

Un diagramme circulaire est une vue graphique circulaire des données.

Utilisez la `pie()`fonction pour dessiner des diagrammes circulaires :
  
  ### Exemple
  
  ```{r}
# Create a vector of pies
x <- c(10,20,30,40)

# Display the pie chart
pie(x)
```

## Angle de départ

Vous pouvez modifier l'angle de départ du diagramme circulaire avec le `init.angle`paramètre.

La valeur de `init.angle`est définie avec un angle en degrés, où l'angle par défaut est 0.

### Exemple

Commencez la première tarte à 90 degrés :
  
  ```{r}
# Create a vector of pies
x <- c(10,20,30,40)

# Display the pie chart and start the first pie at 90 degrees
pie(x, init.angle = 90)
```

## Étiquettes et en-tête

Utilisez le `label`paramètre pour ajouter une étiquette au diagramme circulaire et utilisez le `main` paramètre pour ajouter un en-tête :
  
  ### Exemple
  
  ```{r}
# Create a vector of pies
x <- c(10,20,30,40)

# Create a vector of labels
mylabel <- c("Apples", "Bananas", "Cherries", "Dates")

# Display the pie chart with labels
pie(x, label = mylabel, main = "Fruits")
```

## Couleurs

Vous pouvez ajouter une couleur à chaque tarte avec le `col`paramètre :
  
  ### Exemple
  
  ```{r}
# Create a vector of colors
colors <- c("blue", "yellow", "green", "black")

# Display the pie chart with colors
pie(x, label = mylabel, main = "Fruits", col = colors)
```

## Légende

Pour ajouter une liste d'explications pour chaque tarte, utilisez la `legend()`fonction :

```{r}
# Create a vector of labels
mylabel <- c("Apples", "Bananas", "Cherries", "Dates")

# Create a vector of colors
colors <- c("blue", "yellow", "green", "black")

# Display the pie chart with colors
pie(x, label = mylabel, main = "Pie Chart", col = colors)

# Display the explanation box
legend("bottomright", mylabel, fill = colors)
```

La légende peut être positionnée comme suit :

`bottomright`, `bottom`, `bottomleft`, `left`, `topleft`, `top`, `topright`, `right`, `center`

## Diagramme à barres

Un graphique à barres utilise des barres rectangulaires pour visualiser les données. Les graphiques à barres peuvent être affichés horizontalement ou verticalement. La hauteur ou la longueur des barres sont proportionnelles aux valeurs qu'elles représentent.

Utilisez la `barplot()`fonction pour dessiner un graphique à barres verticales :
  
  ### Exemple
  
  ```{r}
# x-axis values
x <- c("A", "B", "C", "D")

# y-axis values
y <- c(2, 4, 6, 8)

barplot(y, names.arg = x)
```

#### Exemple expliqué

-   La `x`variable représente les valeurs sur l'axe des x (A,B,C,D)

-   La `y`variable représente les valeurs sur l'axe des y (2,4,6,8)

-   Ensuite, nous utilisons la `barplot()`fonction pour créer un graphique à barres des valeurs

-   `names.arg`définit les noms de chaque observation sur l'axe des x

## Couleur de la barre

Utilisez le `col`paramètre pour changer la couleur des barres :

### Exemple

```{r}
x <- c("A", "B", "C", "D")
y <- c(2, 4, 6, 8)

barplot(y, names.arg = x, col = "red")
```

## Densité / Texture de la barre

Pour changer la texture de la barre, utilisez le `density` paramètre :

### Exemple

```{r}
x <- c("A", "B", "C", "D")
y <- c(2, 4, 6, 8)

barplot(y, names.arg = x, density = 10)
```

## Largeur de la barre

Utilisez le `width`paramètre pour modifier la largeur des barres :

### Exemple

```{r}
x <- c("A", "B", "C", "D")
y <- c(2, 4, 6, 8)

barplot(y, names.arg = x, width = c(1,2,3,4))
```

## Barres horizontales

Si vous souhaitez que les barres soient affichées horizontalement plutôt que verticalement, utilisez `horiz=TRUE`:

### Exemple

```{r}
x <- c("A", "B", "C", "D")
y <- c(2, 4, 6, 8)

barplot(y, names.arg = x, horiz = TRUE)
```

## Introduction aux statistiques

Les statistiques sont la science qui consiste à analyser, examiner et conclure des données.

Voici quelques chiffres statistiques de base :

-   Moyenne, médiane et mode

-   Valeur minimale et maximale

-   Centiles

-   Variance et écart-type

-   Covariance et corrélation

-   Distributions de probabilité

Le langage R a été développé par deux statisticiens. Il possède de nombreuses fonctionnalités intégrées, en plus de bibliothèques destinées précisément à l'analyse statistique.

Vous découvrirez ces fonctionnalités et comment les utiliser dans les prochains chapitres.

**Astuce :** Si vous êtes complètement nouveau dans le domaine des statistiques et que vous souhaitez en savoir plus, visitez notre [didacticiel sur les statistiques](https://www.w3schools.com/statistics/index.php) .

## Base de données

Un ensemble de données est un ensemble de données, souvent présentées sous forme de tableau.

Il existe un ensemble de données intégré populaire dans R appelé « **mtcars** » (Motor Trend Car Road Tests), qui est extrait du magazine Motor Trend US de 1974.

Dans les exemples ci-dessous (et pour les chapitres suivants), nous utiliserons l' `mtcars` ensemble de données, à des fins statistiques :

### Exemple

```{r}
# Print the mtcars data set
mtcars
```

## Informations sur l'ensemble de données

Vous pouvez utiliser le point d'interrogation ( `?`) pour obtenir des informations sur l' `mtcars`ensemble de données :
  
  ```{r}
# Use the question mark to get information about the data set

?mtcars
```

## Obtenir des informations

Utilisez la `dim()`fonction pour trouver les dimensions de l'ensemble de données et la `names()`fonction pour afficher les noms des variables :

```{r}
Data_Cars <- mtcars # create a variable of the mtcars data set for better organization

# Use dim() to find the dimension of the data set
dim(Data_Cars)

# Use names() to find the names of the variables from the data set
names(Data_Cars)
```

tilisez la `rownames()`fonction pour obtenir le nom de chaque ligne de la première colonne, qui est le nom de chaque voiture :

```{r}
Data_Cars <- mtcars

rownames(Data_Cars)
```

À partir des exemples ci-dessus, nous avons découvert que l'ensemble de données comporte **32** observations (Mazda RX4, Mazda RX4 Wag, Datsun 710, etc.) et **11** variables (mpg, cyl, disp, etc.).

Une variable est définie comme quelque chose qui peut être mesuré ou compté.

Voici une brève explication des variables de l'ensemble de données mtcars :

## Imprimer les valeurs des variables

Si vous souhaitez imprimer toutes les valeurs appartenant à une variable, accédez au bloc de données en utilisant le `$`signe et le nom de la variable (par exemple `cyl`(cylindres)) :

```{r}
Data_Cars <- mtcars

Data_Cars$cyl
```

## Trier les valeurs des variables

Pour trier les valeurs, utilisez la `sort()`fonction :

### Exemple

```{r}
Data_Cars <- mtcars

sort(Data_Cars$cyl)
```

## Analyser les données

Maintenant que nous disposons d’informations sur l’ensemble de données, nous pouvons commencer à l’analyser avec quelques chiffres statistiques.

Par exemple, nous pouvons utiliser la `summary()`fonction pour obtenir un résumé statistique des données :

### Exemple

```{r}
Data_Cars <- mtcars

summary(Data_Cars)
```

Ne vous inquiétez pas si vous ne comprenez pas les numéros de sortie. Vous les maîtriserez sous peu.

La `summary()`fonction renvoie six nombres statistiques pour chaque variable :

-   Min.

-   Premier quantile (percentile)

-   Médian

-   Signifier

-   Troisième quantile (centile)

-   Max.

Nous les couvrirons tous, ainsi que d’autres chiffres statistiques dans les prochains chapitres.

# R Max et Min

Dans le chapitre précédent, nous avons présenté l' ensemble de données **mtcars** . Nous continuerons à utiliser cet ensemble de données tout au long des pages suivantes.

Vous avez appris dans le chapitre [R Math](https://www.w3schools.com/r/r_math.asp) que R possède plusieurs fonctions mathématiques intégrées. Par exemple, les fonctions `min()`et `max()`peuvent être utilisées pour trouver la valeur la plus basse ou la plus élevée dans un ensemble :
  
  ### Exemple
  
  ```{r}
#Trouvez la plus grande et la plus petite valeur de la variable hp(puissance).

Data_Cars <- mtcars

max(Data_Cars$hp)
min(Data_Cars$hp)
```

Nous savons maintenant que la valeur de puissance la plus élevée de l'ensemble est **de 335 chevaux** et la plus faible **de 52 chevaux** .

Nous pourrions jeter un œil à l’ensemble de données et essayer de découvrir à quelle voiture appartiennent ces deux valeurs :

#### Observation des voitures

En observant le tableau, il semble que la puissance la plus élevée appartient à une Maserati Bora et la plus basse appartient à une Honda Civic.

Cependant, il est beaucoup plus facile (et plus sûr) de laisser R le découvrir pour nous.

Par exemple, nous pouvons utiliser les fonctions `which.max()`et `which.min()`pour trouver la position d'index des valeurs max et min dans le tableau :
  
  ```{r}
Data_Cars <- mtcars

which.max(Data_Cars$hp)
which.min(Data_Cars$hp)
```

Ou encore mieux, combinez `which.max()`et `which.min()`avec la `rownames()`fonction pour obtenir le nom de la voiture avec la plus grande et la plus petite puissance :
  
  ### Exemple
  
  ```{r}
Data_Cars <- mtcars

rownames(Data_Cars)[which.max(Data_Cars$hp)]
rownames(Data_Cars)[which.min(Data_Cars$hp)]
```

Maintenant, nous le savons avec certitude :\
**Maserati Bora** est la voiture avec la puissance la plus élevée, et **la Honda Civic** est la voiture avec la puissance la plus faible.

## Valeurs aberrantes

Max et min peuvent également être utilisés pour détecter **les valeurs aberrantes** . Une valeur aberrante est un point de données qui diffère du reste des observations.

Exemple de points de données qui auraient pu être des valeurs aberrantes dans l' ensemble de données **mtcars** :

-   Si le maximum de vitesses avant d'une voiture était de 11

-   Si la puissance minimale d'une voiture était de 0

-   Si le poids maximum d'une voiture était de 50 000 livres

## Moyenne, médiane et mode

En statistique, il y a souvent trois valeurs qui nous intéressent :
  
  -   **Moyenne** - La valeur moyenne

-   [**Médiane**](https://www.w3schools.com/r/r_stat_median.asp) - La valeur moyenne

-   [**Mode**](https://www.w3schools.com/r/r_stat_mode.asp) - La valeur la plus courante

## Signifier

Pour calculer la valeur moyenne (moyenne) d'une variable de l' `mtcars`ensemble de données, recherchez la somme de toutes les valeurs et divisez la somme par le nombre de valeurs.

#### Observation triée du poids (poids)

![](images/clipboard-2703103782.png){width="15348"}



