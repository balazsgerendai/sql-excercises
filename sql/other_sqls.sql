/*SELECTS */
SELECT * FROM sql_excercise.food;
SELECT * FROM sql_excercise.food WHERE ISVEGAN = 1;
SELECT * FROM sql_excercise.food f ORDER BY f.PRICE;
SELECT * FROM sql_excercise.food f WHERE max(f.PRICE);
SELECT COUNT(1) , mf.Menu_ID FROM sql_excercise.menu_food mf GROUP BY mf.Menu_ID;
SELECT * FROM sql_excercise.restaurant r JOIN address a ON r.ADDRESS_ID = a.ID;
SELECT * FROM sql_excercise.menu m 
	JOIN menu_food mf ON mf.Menu_ID = m.ID 
	JOIN food f ON mf.foods_ID = f.ID WHERE curdate() BETWEEN FROMDATE AND TODATE;

/*UPDTES*/

UPDATE sql_excercise.restaurant r SET r.ADDRESS_ID = 2 WHERE ID=1;
UPDATE sql_excercise.food f SET f.PRICE = 1000 WHERE ID = 1;

/**CREATE VIEW*/

CREATE VIEW sql_excercise.view AS SELECT f.NAME as "Food name", r.NAME as "Restaurant name", a.CITY  FROM sql_excercise.menu m 
	JOIN restaurant r ON m.Restaurant_ID = r.ID
	JOIN address a ON r.ADDRESS_ID = a.ID
	JOIN menu_food mf ON mf.Menu_ID = m.ID 
	JOIN food f ON mf.foods_ID = f.ID WHERE curdate() BETWEEN FROMDATE AND TODATE;

/**DELETE**/
DELETE FROM sql_excercise.menu_food WHERE Menu_ID = 2;
DELETE FROM sql_excercise.menu WHERE ID = 2;

/**TRUNCATE **/
TRUNCATE TABLE menu_food;
TRUNCATE TABLE address;
TRUNCATE TABLE food;
TRUNCATE TABLE menu;

TRUNCATE TABLE restaurant;