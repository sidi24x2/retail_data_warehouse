/*
=======================================================================
CREATE DATABASE AND SCHEMA 

Script Purpose : 
		This script will create a database name 'retail_data_warehouse'
		after checking it already exists. If it does it'll remove the 
		database first & then re-create the database.

Warning : 
		Once the query is being executed all the data inside the databa
		-se named 'retail_data_warehouse' will be removed. So make sure
		you've backup of the data because the data will be permanently 
		deleted.
=======================================================================
*/

USE MASTER 
GO

IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'retail_data_warehouse')
BEGIN
    ALTER DATABASE retail_data_warehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE retail_data_warehouse;
END
GO

CREATE DATABASE retail_data_warehouse;
GO

USE retail_data_warehouse;
GO

CREATE SCHEMA bronze;
GO

CREATE SCHEMA silver;
GO

CREATE SCHEMA gold;
