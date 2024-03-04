
# Plan de formation
  
#Introduction
#Structure des données
#Les graphiques
#Statistique avec R

# -----------------------------------------

# Introduction

"Hello World"

# Pour afficher des nombres :
 
5
6
10

## Compilation du code

### Exemple

"Hello World!"

# la `print()`fonction 



### Exemple

print("My first code !")

### Exemple utilisation de print() dans une boucle
  

for (x in 1:10) {
  print(x)

### Les commentaires

# Ceci est un comment
  
"Hello World!"


# Cet exemple utilise un commentaire à la fin d'une ligne de code :

"Hello World!" # Ceci est un comment


# Les commentaires peuvent aussi être utiliser pour pour empêcher R d'exécuter le code :
  
# "Good morning!"

# pas de synthaxe pour les commentaire multiple

# This is a comment
# written in
# more than just one line

# Variables R

# Les variables sont des conteneurs permettant de stocker des valeurs de données.

name <- "John"
age <- 40

name   # output "John"
age    # output 40

# imprimer/afficher des variables dans R. 

name <- "John Doe"

name # auto-print the value of the name variable


# print() fonction disponible pour affichez une fonction

name <- "John Doe"

print(name) 

# Assign the same value to multiple variables in one line

var1 <- var2 <- var3 <- "Orange"

# Print variable values

var1
var2
var3

# moments où vous devez utiliser la print() fonction pour générer du code
  
### Exemple
  
for (x in 1:10) {
  print(x)
}


### Concaténer des éléments

text <- "awesome"

paste("R is", text)

text1 <- "R is"
text2 <- "awesome"

paste(text1, text2)


#Pour les nombres, le +caractère fonctionne comme un opérateur mathématique :

num1 <- 5
num2 <- 10

num1 + num2

# Si vous essayez de combiner une chaîne (texte) et un nombre, R vous donnera une erreur :

num <- 5
text <- "Some text"

# num + text


# N'oubliez pas que les noms de variables sont sensibles à la casse !
  
# Legal variable names:

myvar <- "John"
my_var <- "John"
myVar <- "John"
MYVAR <- "John"
myvar2 <- "John"
.myvar <- "John"

# Illegal variable names:

#2myvar <- "John"
#my-var <- "John"
#my var <- "John"
#_my_var <- "John"
#my_v@ar <- "John"
#TRUE <- "John"

## Types de données

my_var <- 30 # my_var is type of numeric
my_var <- "Sally" # my_var is now of type character (aka string)


# numeric

x <- 10.5
class(x)

# integer

x <- 1000L
class(x)

# complex

x <- 9i + 3
class(x)

# character/string

x <- "R is exciting"
class(x)

# logical/boolean

x <- TRUE
class(x)

### Nombres

# Il existe trois types de nombres dans R :

x <- 10.5   # numeric
y <- 10L    # integer
z <- 1i     # complex

### Opérateur arithemétique


# L' (+) opérateur permet d'additionner deux valeurs :


10 + 5

10 - 5

R possède également de nombreuses fonctions mathématiques intégrées qui vous permettent d'effectuer des tâches mathématiques sur des nombres.

Par exemple, les fonctions min()et max()peuvent être utilisées pour trouver le nombre le plus petit ou le plus élevé dans un ensemble :
  
  La sqrt()fonction renvoie la racine carrée d'un nombre :

La abs()fonction renvoie la valeur absolue (positive) d'un nombre :
  
  ```{r}
max(5, 10, 15)

min(5, 10, 15)

sqrt(16)
abs(-4.7)
```

### Cordes R

Les chaînes sont utilisées pour stocker du texte.

Une chaîne est entourée soit de guillemets simples, soit de guillemets doubles :
  
  "hello"est le même que 'hello':
  
  ```{r}
"hello"
'hello'

str <- "Hello"
str # print the value of str

str <- "Lorem ipsum dolor sit amet,
consectetur adipiscing elit,
sed do eiusmod tempor incididunt
ut labore et dolore magna aliqua."

cat(str)

str # print the value of str
```

Longueur de chaine Il existe de nombreuses fonctions de chaîne utiles dans R.

Par exemple, pour connaître le nombre de caractères dans une chaîne, utilisez la nchar()fonction :
  
  ```{r}
str <- "Hello World!"

nchar(str)
```

Vérifier une chaîne Utilisez la grepl()fonction pour vérifier si un caractère ou une séquence de caractères est présent dans une chaîne :
  
  ```{r}
str <- "Hello World!"

grepl("H", str)
grepl("Hello", str)
grepl("X", str)

```

-   Combiner deux chaînes Utilisez la paste()fonction pour fusionner/concaténer deux chaînes :
  
  ```{r}
str1 <- "Hello"
str2 <- "World"

paste(str1, str2)
```

### Valeurs logiques

Booléens (valeurs logiques) En programmation, il faut souvent savoir si une expression est vraie ou fausse .

Vous pouvez évaluer n’importe quelle expression dans R et obtenir l’une des deux réponses, TRUEou FALSE.

Lorsque vous comparez deux valeurs, l'expression est évaluée et R renvoie la réponse logique :

```{r}
10 > 9    # TRUE because 10 is greater than 9
10 == 9   # FALSE because 10 is not equal to 9
10 < 9    # FALSE because 10 is greater than 9
```

vous pouvez également comparer deux variables :

```{r}

a <- 10
b <- 9

a > b

```

Vous pouvez également exécuter une condition dans une ifinstruction, sur laquelle vous en apprendrez beaucoup plus dans le chapitre if..else .

```{r}
a <- 200
b <- 33

if (b > a) {
  print ("b is greater than a")
} else {
  print("b is not greater than a")
}

```

## Opérateurs arithmétiques R

Operator Name Example Try it + Addition x + y\
- Subtraction x - y\
\* Multiplication x \* y\
/ Division x / y\
\^ Exponent x \^ y\
%% Modulus (Remainder from division) x %% y\
%/% Integer Division x%/%y

```{r}
my_var <- 3

my_var <<- 3

3 -> my_var

3 ->> my_var

my_var # print my_var

```

### Opérateurs de comparaison R

Operator Name Example == Equal x == y\
!= Not equal x != y\
\> Greater than x \> y\
\< Less than x \< y\
\>= Greater than or equal to x \>= y\
\<= Less than or equal to x \<= y

### Opérateurs logiques R

& Element-wise Logical AND operator. It returns TRUE if both elements are TRUE && Logical AND operator - Returns TRUE if both statements are TRUE \| Elementwise- Logical OR operator. It returns TRUE if one of the statement is TRUE \|\| Logical OR operator. It returns TRUE if one of the statement is TRUE. ! Logical NOT - returns FALSE if statement is TRUE

### R Opérateurs divers

: Creates a series of numbers in a sequence x \<- 1:10 %in% Find out if an element belongs to a vector x %in% y %*% Matrix Multiplication x \<- Matrix1 %*% Matrix2

## Les Condition if ...Else

R prend en charge les conditions logiques habituelles des mathématiques :

### L'instruction if

Une "instruction if" est écrite avec le `if`mot-clé, et elle est utilisée pour spécifier un bloc de code à exécuter si une condition est `TRUE`:
  
  ```{r}
a <- 33
b <- 200

if (b > a) {
  print("b is greater than a")
}
```

R utilise des accolades { } pour définir la portée dans le code.

### L'instruction else if

Le `else if`mot-clé est la façon dont R dit « si les conditions précédentes n'étaient pas vraies, alors essayez cette condition » :

```{r}
a <- 33
b <- 33

if (b > a) {
  print("b is greater than a")
} else if (a == b) {
  print ("a and b are equal")
}
```

### l'instruction else
  
  Le `else`mot-clé intercepte tout ce qui n'est pas détecté par les conditions précédentes :

```{r}
a <- 200
b <- 33

if (b > a) {
  print("b is greater than a")
} else if (a == b) {
  print("a and b are equal")
} else {
  print("a is greater than b")
}

```

```{r}
a <- 200
b <- 33

if (b > a) {
  print("b is greater than a")
} else {
  print("b is not greater than a")
}
```

-   Instruction imbriqué

    Vous pouvez également avoir `if`des instructions à l'intérieur `if`d'instructions, c'est ce qu'on appelle des instructions *imbriquées* `if`

    ```{r}
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
    ```

-   les Opérateur & et ou

    Le symbole & (et) est un opérateur logique et est utilisé pour combiner des instructions conditionnelles :

    ```{r}
    a <- 200
    b <- 33
    c <- 500

    if (a > b & c > a) {
      print("Both conditions are true")
    }

    ```

Le `|`symbole (ou) est un opérateur logique et est utilisé pour combiner des instructions conditionnelles :

```{r}
a <- 200
b <- 33
c <- 500

if (a > b | a > c) {
  print("At least one of the conditions is true")
}
```

### Les Boucles

Les boucles peuvent exécuter un bloc de code tant qu'une condition spécifiée est atteinte.

Les boucles sont pratiques car elles permettent de gagner du temps, de réduire les erreurs et de rendre le code plus lisible.

R a deux commandes de boucle :
  
  -   `while`boucles

-   `for`boucles

-   While boucle

Avec la `while`boucle, nous pouvons exécuter un ensemble d'instructions tant qu'une condition est VRAIE :
  
  ```{r}
i <- 1
while (i < 6) {
  print(i)
  i <- i + 1
}
```

Dans l'exemple ci-dessus, la boucle continuera à produire des nombres allant de 1 à 5. La boucle s'arrêtera à 6 car `6 < 6`est FALSE.

La `while`boucle nécessite que les variables pertinentes soient prêtes, dans cet exemple, nous devons définir une variable d'indexation, `i`que nous définissons sur 1.

-   Break

    Avec l' `break`instruction, nous pouvons arrêter la boucle même si la condition while est VRAIE :
  
  ```{r}
i <- 1
while (i < 6) {
  print(i)
  i <- i + 1
  if (i == 4) {
    break
  }
}
```

La boucle s'arrêtera à 3 car nous avons choisi de terminer la boucle en utilisant l' `break`instruction quand `i`est égal à 4 ( `i == 4`).

-   Next

Avec l' `next`instruction, nous pouvons sauter une itération sans terminer la boucle :

```{r}
i <- 0
while (i < 6) {
  i <- i + 1
  if (i == 3) {
    next
  }
  print(i)
}
```

-   la boucle For

    Une `for`boucle est utilisée pour parcourir une séquence :

    ```{r}
    for (x in 1:10) {
      print(x)
    }
    ```

```{r}
fruits <- list("apple", "banana", "cherry")

for (x in fruits) {
  print(x)
}
```

```{r}
dice <- c(1, 2, 3, 4, 5, 6)

for (x in dice) {
  print(x)
}
```

```{r}
fruits <- list("apple", "banana", "cherry")

for (x in fruits) {
  if (x == "cherry") {
    break
  }
  print(x)
}
```

```         
```

```{r}

```

#### Les fonctions

Une fonction est un bloc de code qui ne s'exécute que lorsqu'elle est appelée.

Vous pouvez transmettre des données, appelées paramètres, dans une fonction.

En conséquence, une fonction peut renvoyer des données.

-   Exemple

    ```{r}
    my_function <- function() { # create a function with the name my_function
      print("Hello World!")
    }
    ```

Pour appeler une fonction, utilisez le nom de la fonction suivi de parenthèses, comme **my_function()** :

```{r}
my_function <- function() {
  print("Hello World!")
}

my_function() # call the function named my_function
```

## Arguments

Les informations peuvent être transmises aux fonctions sous forme d'arguments.

Les arguments sont spécifiés après le nom de la fonction, entre parenthèses. Vous pouvez ajouter autant d’arguments que vous le souhaitez, il suffit de les séparer par une virgule.

L'exemple suivant a une fonction avec un argument (fname). Lorsque la fonction est appelée, nous transmettons un prénom, qui est utilisé à l'intérieur de la fonction pour imprimer le nom complet :
  
  ```{r}
my_function <- function(fname) {
  paste(fname, "Griffin")
}

my_function("Peter")
my_function("Lois")
my_function("Stewie")
```

## Nombre d'arguments

Par défaut, une fonction doit être appelée avec le bon nombre d'arguments. Cela signifie que si votre fonction attend 2 arguments, vous devez appeler la fonction avec 2 arguments, ni plus, ni moins :

Cette fonction attend 2 arguments et obtient 2 arguments :

```{r}
my_function <- function(fname, lname) {
  paste(fname, lname)
}

my_function("Peter", "Griffin")
```

## Valeur du paramètre par défaut

L'exemple suivant montre comment utiliser une valeur de paramètre par défaut.

Si nous appelons la fonction sans argument, elle utilise la valeur par défaut :
  
  ```{r}
my_function <- function(country = "Norway") {
  paste("I am from", country)
}

my_function("Sweden")
my_function("India")
my_function() # will get the default value, which is Norway
my_function("USA")
```

## Valeurs de retour

Pour laisser une fonction renvoyer un résultat, utilisez la `return()`fonction :
  
  ```{r}
my_function <- function(x) {
  return (5 * x)
}

print(my_function(3))
print(my_function(5))
print(my_function(9))
```

## Fonctions imbriquées

Il existe deux manières de créer une fonction imbriquée :
  
  -   Appeler une fonction dans une autre fonction.

-   Écrivez une fonction dans une fonction.

```{r}
Nested_function <- function(x, y) {
  a <- x + y
  return(a)
}

Nested_function(Nested_function(2,2), Nested_function(3,3))
```

#### Exemple expliqué

La fonction dit à x d'ajouter y.

La première entrée Nested_function(2,2) est "x" de la fonction principale.

La deuxième entrée Nested_function(3,3) est "y" de la fonction principale.

La sortie est donc (2+2) + (3+3) = **10** .

Outer_func \<- function(x) {\
  Inner_func \<- function(y) {\
    a \<- x + y\
    return(a)\
  }\
  return (Inner_func)\
}\
output \<- Outer_func(3) # To call the Outer_funcoutput(5)

## Récursivité

R accepte également la récursivité des fonctions, ce qui signifie qu'une fonction définie peut s'appeler elle-même.

La récursivité est un concept mathématique et de programmation courant. Cela signifie qu'une fonction s'appelle elle-même. Cela a l’avantage de signifier que vous pouvez parcourir les données pour atteindre un résultat.

Le développeur doit être très prudent avec la récursion car il peut être assez facile d'écrire une fonction qui ne se termine jamais, ou qui utilise des quantités excessives de mémoire ou de puissance du processeur. Cependant, lorsqu’elle est écrite correctement, la récursivité peut constituer une approche de programmation très efficace et mathématiquement élégante.

Dans cet exemple, `tri_recursion()`est une fonction que nous avons définie pour s'appeler ("récurse"). Nous utilisons la `k`variable comme donnée, qui décrémente ( `-1`) à chaque fois que nous récurons. La récursion se termine lorsque la condition n'est pas supérieure à 0 (c'est-à-dire lorsqu'elle est 0).

Pour un nouveau développeur, comprendre exactement comment cela fonctionne peut prendre un certain temps. La meilleure façon de le savoir est de le tester et de le modifier.

```{r}
tri_recursion <- function(k) {
  if (k > 0) {
    result <- k + tri_recursion(k - 1)
    print(result)
  } else {
    result = 0
    return(result)
  }
}
tri_recursion(6)
```

## Variables globales

Les variables créées en dehors d'une fonction sont appelées variables **globales** .

Les variables globales peuvent être utilisées par tout le monde, aussi bien à l’intérieur qu’à l’extérieur des fonctions.

```{r}
txt <- "awesome"
my_function <- function() {
  paste("R is", txt)
}

my_function()
```

Si vous créez une variable du même nom dans une fonction, cette variable sera locale et ne pourra être utilisée qu'à l'intérieur de la fonction. La variable globale du même nom restera telle qu'elle était, globale et avec la valeur d'origine.

```{r}
txt <- "global variable"
my_function <- function() {
  txt = "fantastic"
  paste("R is", txt)
}

my_function()

txt # print txt
```

## L'opérateur d'affectation globale

Normalement, lorsque vous créez une variable dans une fonction, cette variable est locale et ne peut être utilisée que dans cette fonction.

Pour créer une variable globale dans une fonction, vous pouvez utiliser l' opérateur **d'affectation globale**`<<-`

Si vous utilisez l'opérateur d'affectation `<<-`, la variable appartient à la portée globale :

```{r}
my_function <- function() {
txt <<- "fantastic"
  paste("R is", txt)
}

my_function()

print(txt)
```

Utilisez également l' opérateur d'affectation **globale** si vous souhaitez modifier une variable globale dans une fonction :

Exemple :

Pour modifier la valeur d'une variable globale à l'intérieur d'une fonction, référez-vous à la variable en utilisant l'opérateur d'affectation global\<\<- :
  
  ```{r}
txt <- "awesome"
my_function <- function() {
  txt <<- "fantastic"
  paste("R is", txt)
}

my_function()

paste("R is", txt)
```

## Structures de données R

## Vecteurs

Un vecteur est simplement une liste d’éléments du même type.

Pour combiner la liste d'éléments en un vecteur, utilisez la `c()`fonction et séparez les éléments par une virgule.

Dans l'exemple ci-dessous, nous créons une variable vectorielle appelée **fruits** , qui combine des chaînes :
  
  ```{r}
# Vector of strings
fruits <- c("banana", "apple", "orange")

# Print fruits
fruits
```

Dans cet exemple, nous créons un vecteur qui combine des valeurs numériques :
  
  ```{r}
# Vector of numerical values
numbers <- c(1, 2, 3)

# Print numbers
numbers
```

Pour créer un vecteur avec des valeurs numériques dans une séquence, utilisez l' `:`opérateur :

```{r}
# Vector with numerical values in a sequence
numbers <- 1:10

numbers
```

```{r}
# Vector of logical values
log_values <- c(TRUE, FALSE, TRUE, FALSE)

log_values
```

## Longueur du vecteur

Pour connaître le nombre d'éléments d'un vecteur, utilisez la `len`

```{r}
fruits <- c("banana", "apple", "orange")

length(fruits)
```

## Trier un vecteur

Pour trier les éléments d'un vecteur par ordre alphabétique ou numérique, utilisez la `sort()`fonction :
  
  ```{r}
fruits <- c("banana", "apple", "orange", "mango", "lemon")
numbers <- c(13, 3, 5, 7, 20, 2)

sort(fruits)  # Sort a string
sort(numbers) # Sort numbers
```

## Accéder aux vecteurs

Vous pouvez accéder aux éléments vectoriels en vous référant à leur numéro d'index entre parenthèses `[]`. Le premier élément a l'index 1, le deuxième élément a l'index 2, et ainsi de suite :

```{r}
fruits <- c("banana", "apple", "orange")

# Access the first item (banana)
fruits[1]
```

Vous pouvez également accéder à plusieurs éléments en vous référant à différentes positions d'index avec la `c()`fonction :
  
  ```{r}
fruits <- c("banana", "apple", "orange", "mango", "lemon")

# Access the first and third item (banana and orange)
fruits[c(1, 3)]
```

Vous pouvez également utiliser des numéros d'index négatifs pour accéder à tous les éléments sauf ceux spécifiés :

```{r}
fruits <- c("banana", "apple", "orange", "mango", "lemon")

# Access all items except for the first item
fruits[c(-1)]
```

## Modifier un élément

Pour modifier la valeur d'un élément spécifique, reportez-vous au numéro d'index :

```{r}
fruits <- c("banana", "apple", "orange", "mango", "lemon")

# Change "banana" to "pear"
fruits[1] <- "pear"

# Print fruits
fruits
```

## Répéter les vecteurs

Pour répéter des vecteurs, utilisez la `rep()`fonction :

```{r}
repeat_each <- rep(c(1,2,3), each = 3)

repeat_each
```

Répétez la séquence du vecteur :

```{r}
repeat_times <- rep(c(1,2,3), times = 3)

repeat_times
```

## Génération de vecteurs séquencés

L'un des exemples ci-dessus vous a montré comment créer un vecteur avec des valeurs numériques dans une séquence avec l' `:`opérateur 

```{r}
numbers <- 1:10

numbers
```

Pour faire des pas plus ou moins grands dans une séquence, utilisez la `seq()`fonction :

```{r}
numbers <- seq(from = 0, to = 100, by = 20)

numbers
```

```{r}

```

**Remarque :** La `seq()`fonction a trois paramètres : `from`est l'endroit où la séquence commence, `to`est l'endroit où la séquence s'arrête et `by`est l'intervalle de la séquence.

## Listes

Une liste dans R peut contenir de nombreux types de données différents. Une liste est une collection de données ordonnées et modifiables.

Pour créer une liste, utilisez la `list()`fonction :

```{r}
# List of strings
thislist <- list("apple", "banana", "cherry")

# Print the list
thislist
```

## Accéder aux listes

Vous pouvez accéder aux éléments de la liste en vous référant à son numéro d'index, entre parenthèses. Le premier élément a l'index 1, le deuxième élément a l'index 2, et ainsi de suite :
  
  ```{r}
thislist <- list("apple", "banana", "cherry")

thislist[1]
```

## Modifier la valeur de l'article

Pour modifier la valeur d'un élément spécifique, reportez-vous au numéro d'index :
  
  ```{r}
thislist <- list("apple", "banana", "cherry")
thislist[1] <- "blackcurrant"

# Print the updated list
thislist
```

## Longueur de la liste

Pour connaître le nombre d'éléments d'une liste, utilisez la `length()`fonction :
  
  ### Exemple
  
  ```{r}
thislist <- list("apple", "banana", "cherry")

length(thislist)
```

## Vérifier si l'élément existe

Pour savoir si un élément spécifié est présent dans une liste, utilisez l' `%in%`opérateur :

### Exemple

Vérifiez si « pomme » est présent dans la liste :

```{r}
thislist <- list("apple", "banana", "cherry")

"apple" %in% thislist
```

## Ajouter des éléments de liste

Pour ajouter un élément à la fin de la liste, utilisez la `append()`fonction :

### Exemple

Ajoutez « orange » à la liste :

```{r}
thislist <- list("apple", "banana", "cherry")

append(thislist, "orange")
```

Pour ajouter un élément à droite d'un index spécifié, ajoutez " " dans la fonction :`after=index numberappend()`

### Exemple

Ajouter "orange" à la liste après "banane" (index 2) :
  
  ```{r}
thislist <- list("apple", "banana", "cherry")

append(thislist, "orange", after = 2)
```

## Supprimer des éléments de liste

Vous pouvez également supprimer des éléments de liste. L'exemple suivant crée une nouvelle liste mise à jour sans élément « pomme » :

### Exemple

Supprimez « pomme » de la liste 

```{r}
thislist <- list("apple", "banana", "cherry")

newlist <- thislist[-1]

# Print the new list
newlist
```

## Gamme d'index

Vous pouvez spécifier une plage d'index en spécifiant où commencer et où terminer la plage, à l'aide de l' `:` opérateur :

```{r}
thislist <- list("apple", "banana", "cherry", "orange", "kiwi", "melon", "mango")

(thislist)[2:5]
```

## Parcourez une liste

Vous pouvez parcourir les éléments de la liste en utilisant une `for`boucle :

### Exemple

Imprimez tous les éléments de la liste, un par un :

```{r}
thislist <- list("apple", "banana", "cherry")

for (x in thislist) {
  print(x)
}
```

## Rejoignez deux listes

Il existe plusieurs façons de joindre ou de concaténer deux ou plusieurs listes dans R.

La méthode la plus courante consiste à utiliser la `c()`fonction, qui combine deux éléments :

```{r}
list1 <- list("a", "b", "c")
list2 <- list(1,2,3)
list3 <- c(list1,list2)

list3
```

# Matrices R

Une matrice est un ensemble de données bidimensionnelles comportant des colonnes et des lignes.

Une colonne est une représentation verticale des données, tandis qu'une ligne est une représentation horizontale des données.

Une matrice peut être créée avec la `matrix()`fonction. Spécifiez les paramètres `nrow`et `ncol`pour obtenir le nombre de lignes et de colonnes :
  
  ### Exemple
  
  ```{r}
# Create a matrix
thismatrix <- matrix(c(1,2,3,4,5,6), nrow = 3, ncol = 2)

# Print the matrix
thismatrix
```

Vous pouvez également créer une matrice avec des chaînes :
  
  ### Exemple
  
  ```{r}
thismatrix <- matrix(c("apple", "banana", "cherry", "orange"), nrow = 2, ncol = 2)

thismatrix
```

## Accéder aux éléments de la matrice

Vous pouvez accéder aux éléments en utilisant `[ ]` des crochets. Le premier chiffre "1" entre parenthèses spécifie la position de la ligne, tandis que le deuxième chiffre "2" spécifie la position de la colonne :
  
  ### Exemple
  
  ```{r}
thismatrix <- matrix(c("apple", "banana", "cherry", "orange"), nrow = 2, ncol = 2)

thismatrix[1, 2]
```

La ligne entière est accessible si vous spécifiez une virgule **après** le nombre entre parenthèses :
  
  ```{r}
thismatrix <- matrix(c("apple", "banana", "cherry", "orange"), nrow = 2, ncol = 2)

thismatrix[2,]
```

La colonne entière est accessible si vous spécifiez une virgule **avant** le nombre entre parenthèses :
  
  ### Exemple
  
  ```{r}
thismatrix <- matrix(c("apple", "banana", "cherry", "orange"), nrow = 2, ncol = 2)

thismatrix[,2]
```

## Accéder à plusieurs lignes

Plus d'une ligne est accessible si vous utilisez la `c()`fonction :

### Exemple

```{r}
thismatrix <- matrix(c("apple", "banana", "cherry", "orange","grape", "pineapple", "pear", "melon", "fig"), nrow = 3, ncol = 3)

thismatrix[c(1,2),]
```

## Accéder à plus d'une colonne

Plus d'une colonne est accessible si vous utilisez la `c()`fonction :

### Exemple

```{r}
thismatrix <- matrix(c("apple", "banana", "cherry", "orange","grape", "pineapple", "pear", "melon", "fig"), nrow = 3, ncol = 3)

thismatrix[, c(1,2)]
```

## Ajouter des lignes et des colonnes

Utilisez la `cbind()`fonction pour ajouter des colonnes supplémentaires dans une matrice :

### Exemple

```{r}
thismatrix <- matrix(c("apple", "banana", "cherry", "orange","grape", "pineapple", "pear", "melon", "fig"), nrow = 3, ncol = 3)

newmatrix <- cbind(thismatrix, c("strawberry", "blueberry", "raspberry"))

# Print the new matrix
newmatrix

```

Utilisez la `rbind()`fonction pour ajouter des lignes supplémentaires dans une matrice :

### Exemple

```{r}
thismatrix <- matrix(c("apple", "banana", "cherry", "orange","grape", "pineapple", "pear", "melon", "fig"), nrow = 3, ncol = 3)

newmatrix <- rbind(thismatrix, c("strawberry", "blueberry", "raspberry"))

# Print the new matrix
newmatrix

```

## Supprimer des lignes et des colonnes

Utilisez la `c()`fonction pour supprimer des lignes et des colonnes dans une matrice :

### Exemple

```{r}
thismatrix <- matrix(c("apple", "banana", "cherry", "orange", "mango", "pineapple"), nrow = 3, ncol =2)

#Remove the first row and the first column
thismatrix <- thismatrix[-c(1), -c(1)]

thismatrix

```

## Vérifier si un élément existe

Pour savoir si un élément spécifié est présent dans une matrice, utilisez l' `%in%`opérateur :
  
  -   Exemple

Vérifiez si "apple" est présent dans la matrice :
  
  ```{r}
thismatrix <- matrix(c("apple", "banana", "cherry", "orange"), nrow = 2, ncol = 2)

"apple" %in% thismatrix
```

## Nombre de lignes et de colonnes

Utilisez la `dim()`fonction pour trouver le nombre de lignes et de colonnes dans une matrice :
  
  ### Exemple
  
  ```{r}
thismatrix <- matrix(c("apple", "banana", "cherry", "orange"), nrow = 2, ncol = 2)

dim(thismatrix)
```

## Longueur de la matrice

Utilisez la `length()`fonction pour trouver la dimension d'une matrice :

### Exemple

```{r}
thismatrix <- matrix(c("apple", "banana", "cherry", "orange"), nrow = 2, ncol = 2)

length(thismatrix)

```

## Boucler à travers une matrice

Vous pouvez parcourir une matrice à l’aide d’une `for`boucle. La boucle commencera à la première ligne, en se déplaçant vers la droite :

### Exemple

Parcourez les éléments de la matrice et imprimez-les :

```{r}
thismatrix <- matrix(c("apple", "banana", "cherry", "orange"), nrow = 2, ncol = 2)

for (rows in 1:nrow(thismatrix)) {
  for (columns in 1:ncol(thismatrix)) {
    print(thismatrix[rows, columns])
  }
}
```

## Combiner deux matrices

Encore une fois, vous pouvez utiliser la fonction `rbind()`ou `cbind()`pour combiner deux ou plusieurs matrices :

### Exemple

```{r}
# Combine matrices
Matrix1 <- matrix(c("apple", "banana", "cherry", "grape"), nrow = 2, ncol = 2)
Matrix2 <- matrix(c("orange", "mango", "pineapple", "watermelon"), nrow = 2, ncol = 2)

# Adding it as a rows
Matrix_Combined <- rbind(Matrix1, Matrix2)
Matrix_Combined

# Adding it as a columns
Matrix_Combined <- cbind(Matrix1, Matrix2)
Matrix_Combined
```

## Tableaux

Par rapport aux matrices, les tableaux peuvent avoir plus de deux dimensions.

On peut utiliser la `array()`fonction pour créer un tableau, et le `dim`paramètre pour spécifier les dimensions :

### Exemple

```{r}
# An array with one dimension with values ranging from 1 to 24
thisarray <- c(1:24)
thisarray

# An array with more than one dimension
multiarray <- array(thisarray, dim = c(4, 3, 2))
multiarray
```

#### Exemple expliqué

Dans l'exemple ci-dessus, nous créons un tableau avec les valeurs 1 à 24.

Comment fonctionne ... `dim=c(4,3,2)`travail?\
Le premier et le deuxième nombre entre parenthèses spécifient le nombre de lignes et de colonnes.\
Le dernier chiffre entre parenthèses spécifie le nombre de dimensions souhaitées.

**Remarque :** Les tableaux ne peuvent avoir qu'un seul type de données.

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



