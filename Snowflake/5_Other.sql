USE ROLE ACCOUNTADMIN;
USE DATABASE FOOD_DELIVERY;

DESC TABLE FOOD_DELIVERY.RAW.USERS;

select * from food limit 5;
select * from menu limit 5;
select * from order_items limit 5;
select * from orders limit 5;
select * from restaurant limit 5;
select * from reviews limit 5;
select * from users limit 5;

DESC TABLE FOOD_DELIVERY.RAW.USERS;

SELECT
    TABLE_NAME,
    LISTAGG(
        COLUMN_NAME || ' ' || DATA_TYPE,
        ', '
    ) WITHIN GROUP (ORDER BY ORDINAL_POSITION) AS COLUMN_DEFINITION
FROM FOOD_DELIVERY.INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_SCHEMA = 'RAW'
  AND TABLE_NAME IN (
      'USERS',
      'FOOD',
      'MENU',
      'RESTAURANT',
      'ORDERS',
      'ORDER_ITEMS',
      'REVIEWS'
  )
GROUP BY TABLE_NAME
ORDER BY TABLE_NAME;

