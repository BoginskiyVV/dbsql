CREATE DATABASE hw1;
USE hw1;

CREATE TABLE phones
(id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
ProductName VARCHAR(30) NOT NULL,
Manufacturer VARCHAR(30) NOT NULL,
ProductCount INT NOT NULL,
Price INT NOT NULL);

INSERT phones (ProductName, Manufacturer, ProductCount, Price)
VALUES
("Iphone X", "Apple", "3", "76000"),
("Iphone 8", "Apple", "2", "51000"),
("Galaxy S9", "Samsung", "2", "56000"),
("Galaxy S8", "Samsung", "1", "41000"),
("P20 Pro", "Huawei", "5", "36000");

SELECT *
FROM phones;

-- Задача 2.
-- Выведите название, производителя и цену для товаров, 
-- количество которых превышает 2 (SQL - файл, скриншот, либо сам код)

SELECT ProductName, Manufacturer, Price 
FROM phones
WHERE ProductCount > 2;

-- Задача 3.
-- Выведите весь ассортимент товаров марки “Samsung” 

SELECT *
FROM phones
WHERE Manufacturer = "Samsung";
-- WHERE Manufacturer LIKE "Samsung";

-- Задача 4.
-- С помощью регулярных выражений найти:
-- 4.1. Товары, в которых есть упоминание "Iphone"
-- 4.2. "Samsung"
-- 4.3.  Товары, в которых есть ЦИФРА "8"  
 
SELECT *
FROM phones
WHERE Manufacturer LIKE "Iphone";

SELECT *
FROM phones
WHERE ProductName LIKE "%8%";
FROM phones
WHERE Manufacturer LIKE "Samsung";

SELECT *
FROM phones
WHERE Manufacturer LIKE "Iphone";
 
 