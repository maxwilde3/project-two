-- Drop tables
Drop table if exists NYCproperty;
Drop table if exists NYCproperty1;

-- Create tables
CREATE TABLE NYCproperty (
    INDEX integer NOT NULL,
	BOROUGH VARCHAR NOT NULL,
    NEIGHBORHOOD VARCHAR NOT NULL,
	BUILDING_CLASS_CATEGORY VARCHAR NOT NULL,
	TAX_CLASS_AT_PRESENT VARCHAR NOT NULL,
	BLOCK VARCHAR NOT NULL,
	LOT VARCHAR NOT NULL,
	EASEMENT VARCHAR NOT NULL,
	BUILDING_CLASS_AT_PRESENT VARCHAR NOT NULL,
	ADDRESS VARCHAR NOT NULL,
	APARTMENT_NUMBER VARCHAR NOT NULL,
	ZIP_CODE integer NOT NULL,
	RESIDENTIAL_UNITS integer NOT NULL,
	COMMERCIAL_UNITS integer NOT NULL,
	TOTAL_UNITS VARCHAR NOT NULL,
	LAND_SQUARE_FEET VARCHAR NOT NULL,
	GROSS_SQUARE_FEET VARCHAR NOT NULL,
	YEAR_BUILT integer NOT NULL,
	TAX_CLASS_AT_TIME_OF_SALE VARCHAR NOT NULL,
	BUILDING_CLASS_AT_TIME_OF_SALE VARCHAR NOT NULL,
	SALE_PRICE VARCHAR NOT NULL,
	SALE_DATE date DEFAULT ('now'::text)::date NOT NULL
);

-- Import CSV files
COPY NYCproperty FROM '/Applications/PostgreSQL 11/temp-data/nyc-rolling-sales.csv' DELIMITER ',' CSV HEADER;

select * from NYCproperty

--Edit out empty columns
DELETE FROM NYCproperty WHERE sale_price=' -  ';

select * from NYCproperty

-- Replace borough names
-- Manhattan (1), Bronx (2), Brooklyn (3), Queens (4), Staten Island (5)
update NYCproperty set borough = replace(borough, '1', 'Manhattan')
update NYCproperty set borough = replace(borough, '2', 'Bronx')
update NYCproperty set borough = replace(borough, '3', 'Brooklyn')
update NYCproperty set borough = replace(borough, '4', 'Queens')
update NYCproperty set borough = replace(borough, '5', 'Staten Island')

select * from NYCproperty