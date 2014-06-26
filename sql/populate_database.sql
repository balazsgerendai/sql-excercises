INSERT INTO sql_excercise.address(CITY,COUNTRY,STREET,ZIPCODE) VALUES("Budapest", "Hungary","Futó utca","1234");
INSERT INTO sql_excercise.restaurant(NAME,ADDRESS_ID) VALUES("10 Minutes", 1);
INSERT INTO sql_excercise.menu(Restaurant_ID,FROMDATE,TODATE) VALUES(1,curdate(),curdate() + interval 1 month - interval 1 day);

INSERT INTO sql_excercise.food(CALORIES,ISVEGAN,NAME,PRICE) VALUES(1200,0,"Food1",1043);
INSERT INTO sql_excercise.food(CALORIES,ISVEGAN,NAME,PRICE) VALUES(1210,1,"Food2",1143);
INSERT INTO sql_excercise.food(CALORIES,ISVEGAN,NAME,PRICE) VALUES(1220,0,"Food3",1243);
INSERT INTO sql_excercise.food(CALORIES,ISVEGAN,NAME,PRICE) VALUES(1230,1,"Food4",1343);
INSERT INTO sql_excercise.food(CALORIES,ISVEGAN,NAME,PRICE) VALUES(1240,0,"Food5",1443);

INSERT INTO sql_excercise.menu_food(Menu_ID, foods_ID) VALUES(1,1);
INSERT INTO sql_excercise.menu_food(Menu_ID, foods_ID) VALUES(1,2);
INSERT INTO sql_excercise.menu_food(Menu_ID, foods_ID) VALUES(1,3);
INSERT INTO sql_excercise.menu_food(Menu_ID, foods_ID) VALUES(1,4);
INSERT INTO sql_excercise.menu_food(Menu_ID, foods_ID) VALUES(1,5);

INSERT INTO sql_excercise.menu(Restaurant_ID,FROMDATE,TODATE) VALUES(1,curdate() + interval 1 month, curdate() + interval 2 month - interval 1 day);

INSERT INTO sql_excercise.food(CALORIES,ISVEGAN,NAME,PRICE) VALUES(240,1,"Salad", 1234);
INSERT INTO sql_excercise.food(CALORIES,ISVEGAN,NAME,PRICE) VALUES(240,1,"Salad extra", 1500);

INSERT INTO sql_excercise.menu_food(Menu_ID, foods_ID) VALUES(2,7);
INSERT INTO sql_excercise.menu_food(Menu_ID, foods_ID) VALUES(2,8);

INSERT INTO address(CITY,COUNTRY,STREET,ZIPCODE) VALUES("Dunaföldvár", "Hungary","Valami utca","7020");