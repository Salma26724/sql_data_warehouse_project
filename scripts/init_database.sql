/* 
=============================
Create Database & Schemas
=============================
Script purpose:
	This script creates a new database called 'DataWarehouse' after checking if it already exists.
	If the database exists, it is dropped and recreated. Additionally, the script sets up three schemas
	within the database: 'bronze', 'silver', 'gold'.

	WARNING:
	 Running this script will drop the entire 'DataWarehouse' database if it exists.
	 All data in the database will be permenantly deleted. Proceed with caution and
	 ensure you have proper backups before running this script.
*/


-- Create Database 'DataWarehouse'

USE master;
GO

-- Drop & Recreate The 'Datawarehouse' Database
IF EXISTS( SELECT 1 FROM sys.databases WHERE name = 'DataWarehouse')
BEGIN
	ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
	DROP DATABASE DataWarehouse;
END;
GO

-- Create The 'DataWarehouse' Database
CREATE DATABASE DataWarehouse;
GO

USE DataWarehouse;
GO

-- Create Schemas

CREATE SCHEMA bronze;
GO

CREATE SCHEMA silver;
GO

CREATE SCHEMA gold;
GO
