DROP DATABASE IF EXISTS hw6;
CREATE DATABASE IF NOT EXISTS hw6;
USE hw6;

/*
Создайте процедуру, которая принимает кол-во сек и формат их в кол-во дней часов. 
Пример: 123456 ->'1 days 10 hours 17 minutes 36 seconds '
*/

drop function convetor;
delimiter $$
create function convetor(num int)

returns varchar(50)
deterministic
begin
	declare secondsinday int default 86400;
    declare secondsinhour int default 3600;
    declare secondsinminute int default 60;
    declare days int default 0;
    declare days_sec int default 0;
    declare hours int default 0;
    declare hours_sec int default 0;
    declare mins int default 0;
    declare mins_sec int default 0;
    declare sec int default 0;
    declare res varchar(60);
    
    set days = round(num/86400);
    set days_sec = num - (86400*days);
    set hours = round(days_sec/3600);
    set hours_sec = days_sec - (3600*hours);
    set mins = (hours_sec div 60);
    set mins_sec = hours_sec - (60*mins);
    set sec = round(mins_sec);
	set res = concat(days," days ",hours," hours ",mins," mins ",sec, " sec ");
    return res;
end $$
delimiter;
select convetor(7654321);


/*
Создайте функцию, которая выводит только четные числа от 1 до 10. 
Пример: 2,4,6,8,10
*/

DROP PROCEDURE IF EXISTS nums;

delimiter $$
CREATE PROCEDURE nums()
BEGIN
    DECLARE i INT;
    DECLARE rez VARCHAR(50);
    SET i = 4;
    SET rez = '2';    
    WHILE i <= 10 DO
        SET rez = CONCAT(rez, ', ', i);        
        SET i = i + 2;    
    END WHILE;
    SELECT rez;
END $$
DELIMITER ;

CALL nums();
