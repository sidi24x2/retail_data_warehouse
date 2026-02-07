/*
=======================================================================
DDL SCRIPT -> Creating Bronze Tables 

Script Purpose : 
	This script will create tables in the 'bronze' schema. 
	Use this script to re-built the DDL structure of the 'bronze'tables.
=======================================================================
*/

IF OBJECT_ID('bronze.crm_customers' , 'U') IS NOT NULL 
	DROP TABLE bronze.crm_customers
GO

CREATE TABLE bronze.crm_customers (
	customer_id	INT,
	first_name NVARCHAR(50),
	last_name NVARCHAR(50),
	city NVARCHAR(50),
	signup_date DATE
	)

IF OBJECT_ID('bronze.crm_orders' , 'U') IS NOT NULL 
	DROP TABLE bronze.crm_orders
GO

CREATE TABLE bronze.crm_orders (
	order_id INT,
	customer_id	INT,
	store_id INT,
	order_date DATE,
	date_id INT
)

IF OBJECT_ID('bronze.erp_order_items' , 'U') IS NOT NULL 
	DROP TABLE bronze.erp_order_items
GO

CREATE TABLE bronze.erp_order_items (
	order_item_id INT,
	order_id INT,
	product_id INT,
	quantity INT,
	price DECIMAL(12,2), 
	line_amount DECIMAL(12,2)
)

IF OBJECT_ID('bronze.erp_products' , 'U') IS NOT NULL 
	DROP TABLE bronze.erp_products
GO
CREATE TABLE bronze.erp_products (
	product_id INT,
	product_name NVARCHAR(50),
	category NVARCHAR(50),
	price INT
)

IF OBJECT_ID('bronze.erp_stores' , 'U') IS NOT NULL 
	DROP TABLE bronze.erp_stores
GO

CREATE TABLE bronze.erp_stores (
	store_id INT,
	store_name NVARCHAR(50),
	region NVARCHAR(50)
	)

