USE RetailStoreDB;
GO

SELECT * FROM Production.Product; 

SELECT Name, Color
FROM Production.Product; 

SELECT Name AS 'Nama Produk'
FROM Production.Product; 

SELECT Name, ListPrice, (ListPrice * 10) AS HargaBaru
FROM Production.Product; 

SELECT Name + ' (' + ProductNumber + ')' AS ProdukLengkap 
FROM Production.Product; 

SELECT Name + ' (' + Color + ')' AS Warna  
FROM Production.Product; 

SELECT Name, Color, ListPrice 
FROM Production.Product 
WHERE Color = 'Red'; 

SELECT Name + ' (' + Color + ')' AS Warna 
FROM Production.Product 
WHERE Color = 'Black'; 