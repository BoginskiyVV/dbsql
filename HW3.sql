CREATE DATABASE hw3;
USE hw3;

DROP TABLE IF EXISTS `staff`;
CREATE TABLE IF NOT EXISTS `staff`
(
`id` INT PRIMARY KEY AUTO_INCREMENT,
`firstname` VARCHAR(45) NOT NULL,
`lastname` VARCHAR(45) NOT NULL,
`post` VARCHAR(45) NOT NULL,
`seniority` INT NOT NULL,
`salary` INT NOT NULL,
`age` INT NOT NULL
);

INSERT INTO `staff` (`firstname`, `lastname`, `post`, `seniority`, `salary`, `age`)
VALUES
('Вася', 'Петров', 'Начальник', 40, 100000, 60),
('Петр', 'Власов', 'Начальник', 8, 70000, 30),
('Катя', 'Катина', 'Инженер', 2, 70000, 25),
('Саша', 'Сасин', 'Инженер', 12, 50000, 35),
('Иван', 'Иванов', 'Рабочий', 40, 30000, 59),
('Петр', 'Петров', 'Рабочий', 20, 25000, 60),
('Сидр', 'Сидоров', 'Рабочий', 10, 20000, 35),
('Антон', 'Антонов', 'Рабочий', 8, 19000, 28),
('Юрий', 'Юрков', 'Рабочий', 5, 15000, 25),
('Максим', 'Максимов', 'Рабочий', 2, 11000, 22),
('Юрий', 'Галкин', 'Рабочий', 3, 12000, 24),
('Людмила', 'Маркина', 'Уборщик', 10, 10000, 49);

SELECT * FROM staff;

/*
1. Отсортируйте данные по полю заработная плата 
в порядке: убывания; возрастания 
*/

SELECT salary 
FROM staff 
ORDER BY salary;

SELECT salary
FROM staff 
ORDER BY salary DESC;

/*
2.Выведите 5 максимальных заработных плат (salary)
*/

SELECT salary AS 'Top 5 salary'
FROM staff
ORDER BY salary  DESC LIMIT 5;

/* 
3.Посчитайте суммарную зарплату (salary) по каждой специальности (роst)
*/

SELECT SUM(salary) AS 'Sum salary post', post
FROM staff
GROUP BY post;

/* 
4. Найдите кол-во сотрудников с специальностью (post) 
«Рабочий» в возрасте от 24 до 49 лет включительно.
*/

SELECT COUNT(*) 
AS 'кол-во рабочих возраст 24->50'
FROM staff 
WHERE post = 'Рабочий' 
AND age BETWEEN 24 AND 49;
 
/* 
5.Найдите количество специальностей
*/

SELECT COUNT(DISTINCT post) AS 'кол-во специальностей'
FROM staff;

/*
6. Выведите специальности, у которых средний возраст сотрудников меньше 30 лет 
*/

SELECT post
FROM staff
GROUP BY post
HAVING AVG(age) <= 30;