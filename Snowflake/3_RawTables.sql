USE ROLE ACCOUNTADMIN;
USE DATABASE FOOD_DELIVERY;

--food
CREATE OR REPLACE TABLE FOOD_DELIVERY.RAW.food (
    source_row_id VARCHAR,
    f_id	VARCHAR,
    item	VARCHAR,
    veg_or_non_veg	VARCHAR
);

--menu
CREATE OR REPLACE TABLE FOOD_DELIVERY.RAW.menu (
    source_row_id VARCHAR,
    menu_id	VARCHAR,
    r_id	VARCHAR,
    f_id	VARCHAR,
    cuisine	VARCHAR,
    price	VARCHAR
);

--order_items
CREATE OR REPLACE TABLE FOOD_DELIVERY.RAW.order_items (
    order_item_id VARCHAR,
    order_id	VARCHAR,
    r_id	VARCHAR,
    f_id	VARCHAR,
    price	VARCHAR,
    quantity	VARCHAR,
    line_amount	VARCHAR
);

--orders
CREATE OR REPLACE TABLE FOOD_DELIVERY.RAW.orders (
    order_id	VARCHAR,
    order_timestamp	VARCHAR,
    order_date	VARCHAR,
    user_id	VARCHAR,
    r_id	VARCHAR,
    restaurant_city	VARCHAR,
    cuisine	VARCHAR,
    items_count	VARCHAR,
    sales_qty	VARCHAR,
    subtotal	VARCHAR,
    discount	VARCHAR,
    delivery_fee	VARCHAR,
    gst	VARCHAR,
    sales_amount	VARCHAR,
    currency	VARCHAR,
    payment_method	VARCHAR,
    order_status	VARCHAR,
    customer_rating	VARCHAR,
    delivery_time_min	VARCHAR
);

--restaurant
CREATE OR REPLACE TABLE FOOD_DELIVERY.RAW.restaurant (
    source_row_id VARCHAR,
    id	VARCHAR,
    name	VARCHAR,
    city	VARCHAR,
    rating	VARCHAR,
    rating_count	VARCHAR,
    cost	VARCHAR,
    cuisine	VARCHAR,
    lic_no	VARCHAR,
    link	VARCHAR,
    address	VARCHAR,
    menu	VARCHAR

);

--reviews
CREATE OR REPLACE TABLE FOOD_DELIVERY.RAW.reviews (
   review_id	VARCHAR,
    order_id	VARCHAR,
    user_id	VARCHAR,
    restaurant_id	VARCHAR,
    rating	VARCHAR,
    comment	VARCHAR,
    review_date	VARCHAR

);

--Users
CREATE OR REPLACE TABLE FOOD_DELIVERY.RAW.USERS (
    source_row_id VARCHAR,
    user_id	VARCHAR,
    user_name	VARCHAR,
    user_email	VARCHAR,
    user_password	VARCHAR,
    user_Age	VARCHAR,
    user_Gender	VARCHAR,
    user_Marital_Status	VARCHAR,
    user_Occupation	VARCHAR,
    user_Monthly_Income	VARCHAR,
    user_Educational_Qualification VARCHAR,	
    user_Family_size VARCHAR
);



select *  from menu limit 10 ;