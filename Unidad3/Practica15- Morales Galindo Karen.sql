CREATE DATABASE PRACTICA15
USE PRACTICA15
--FUNCIONES

--FECHA
SELECT DATEPART(DAY, GETDATE()) AS DIA
SELECT SYSDATETIME() AS TIEMPO
SELECT MONTH('1994/08/21') AS MES
SELECT YEAR(GETDATE()) AS A�O

--TEXTO
SELECT CHAR (45) AS NUMERO
SELECT LOWER ('HOLA') AS MINUSCULA
SELECT UPPER ('hola') AS MAYUSCULA
SELECT REPLACE ('HOLA QUE TAL?', 'A', 4) AS REMPLAZO
SELECT LTRIM ('		HOLA') AS RECORTEIZQ
SELECT REVERSE ('HOLA') AS REVERSO
SELECT RTRIM ('HOLA		') AS RECORTEDER
SELECT LEN ('HOLA') AS CANTIDAD
--SELECT INITCAP ('hola')
SELECT REPLICATE ('HOLA', 8) AS REPLICAR

--NUMERICAS
SELECT AVG(80) AS PROMEDIO
SELECT SQRT(10) AS RAIZ
SELECT CEILING(12.55) AS REDONDEO
SET NOCOUNT OFF; DECLARE @COS FLOAT; @COS = 10 ACOS (@COS)
