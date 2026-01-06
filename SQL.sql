CREATE database RetailSalesData;
USE RetailSalesData;

CREATE TABLE Sales_data_transactions(
customer_id VARCHAR(255),
trans_date VARCHAR(255),
trans_amount INT);



CREATE TABLE Sales_data_responce(
customer_id VARCHAR(255) Primary Key,
responce INT);

LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\Retail_Data_Transactions.csv'
INTO TABLE Sales_data_transactions
FIELDS terminated by','
LINES terminated by '\n'
IGNORE 1 ROWS;

SELECT * FROM Sales_data_transactions LIMIT 10;