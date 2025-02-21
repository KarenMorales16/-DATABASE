### Paquete sqldf
library(sqldf)
El paquete sqldf  sirve para ejecutar sentencias SQL en marcos de datos R, optimizado para mayor comodidad.


### Consultas SQL
###### Hay una gran cantidad de comandos principales de SQL. Las consultas se realizan con el comando SELECT.	

###### Por convenci�n, la sintaxis SQL se escribe en MAY�SCULAS y los nombres de variables / nombres de bases de datos se escriben en min�sculas. T�cnicamente, la sintaxis SQL no distingue entre may�sculas y min�sculas, por lo que puede escribirse en min�sculas o de otro modo. Sin embargo, tenga en cuenta que R no distingue entre may�sculas y min�sculas, por lo que los nombres de las variables y los nombres de los marcos de datos deben tener las may�sculas adecuadas. Por lo tanto:
  
# SQL Queries
## Comod�n
###### Se puede pasar un comod�n para extraer todo.
### Selecionar todo los elementos de Iris
sqldf("SELECT * FROM iris")

###### La sintaxis b�sica de SELECT es
###### SELECT variable1, variable2 FROM data

### ver cuantos datos tenemos de cada especie
sqldf ("SELECT COUNT(species), species from iris GROUP BY species")


## WHERE
###### Las declaraciones condicionales se pueden agregar a trav�s de WHERE:

### Selecionar todo de iris cuando las especie sea igual a setosa
sqldf("SELECT * FROM iris where species='setosa'")

## PEDIR POR
###### Para ordenar variables, use la sintaxis, donde la elecci�n de ASC ascendente o 
###### DESC descendente se realiza por variable.

## Selecionar los datos de mayor a menor valor de petal_length
sqldf("Select petal_length AS 'petal_length DESC',  UPPER (species)  from iris order by petal_length DESC" )

## Selecionar los datos de menor a mayor valor de petal_length
sqldf("Select petal_length AS 'petal_length DESC',  UPPER (species)  from iris order by petal_length ASC" )

## L�MITE
###### Para controlar la cantidad de resultados devueltos, use LIMIT #.
sqldf('SELECT * FROM iris LIMIT 5')

### csv
rowdata <- read.csv('/Users/52664/AnalyticsRL/Analytics/Recursos/iris.csv',data)
getwd()
setwd("\Users\52664\Documents\AnalyticsRL\Analytics\Recursos")
getwd()
dataset = read.csv('iris.csv')


rowdata <- read.csv('lathes_data.csv') 
### csv
iris<- read.csv('C:\Users\52664\Documents\AnalyticsRL\Analytics\Recursos\iris.csv')
## D�NDE
###### Las declaraciones condicionales se pueden agregar a trav�s de WHERE:
### Selecionar todo de iris cuando las especie sea versicolor y petal_length sea de rango 1.0 a 1.3
sqldf("SELECT * FROM iris where species='versicolor' and petal_length BETWEEN 1.0 and 1.3")
sqldf("SELECT * FROM iris where   petal_length>=1.0 and petal_length<=1.3")

## LIKE
###### LIKE se puede considerar como un comando de expresi�n regular d�bil. 
###### Solo permite el comod�n �nico %que coincide con cualquier n�mero de caracteres. 
### Selecionar los datos de cuyo sepal_length inicia con 5
sqldf("select sepal_length,sepal_width,petal_length,petal_width, species from iris
      where sepal_length like '%5'")


### Selecionar los datos de cuyo sepal_width contengan un 4
sqldf("select sepal_length,sepal_width,petal_length,petal_width, species from iris
      where sepal_width like '4%'")

### Selecionar los datos de cuyo sepal_length inicia con 5
sqldf("select sepal_length,sepal_width,petal_length,petal_width, species from iris
      where sepal_width like '%4%'")
### EN
###### WHERE IN se utiliza similar  %in%. Tambi�n es compatible NOT.
#### Selecionar los datos de petal_length que sean 4, 5
sqldf('SELECT * FROM iris WHERE petal_length IN (4,5)')

