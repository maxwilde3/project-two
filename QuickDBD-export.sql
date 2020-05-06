-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/TNhe66
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "Housing" (
    "Case_ID" SERIAl   NOT NULL,
    "ID" INT   NOT NULL,
    "Borough" VARCHAR   NOT NULL,
    "Neighborhood" VARCHAR   NOT NULL,
    "Zip_Code" INT   NOT NULL,
    "Address" VARCHAR   NOT NULL,
    "Sale_Price" FLOAT   NOT NULL,
    "Sale_Date" DATE   NOT NULL,
    CONSTRAINT "pk_Housing" PRIMARY KEY (
        "Case_ID"
     )
);

CREATE TABLE "Crime" (
    "Case_ID" SERIAL   NOT NULL,
    "ID" INT   NOT NULL,
    "Crime_Type" VARCHAR   NOT NULL,
    "Borough" VARCHAR   NOT NULL,
    "Lat" FLOAT   NOT NULL,
    "Lon" FLOAT   NOT NULL,
    CONSTRAINT "pk_Crime" PRIMARY KEY (
        "Case_ID"
     )
);

CREATE TABLE "Area" (
    "ID" SERIAL   NOT NULL,
    "Area" VARCHAR   NOT NULL,
    CONSTRAINT "pk_Area" PRIMARY KEY (
        "ID"
     )
);

ALTER TABLE "Housing" ADD CONSTRAINT "fk_Housing_ID" FOREIGN KEY("ID")
REFERENCES "Area" ("ID");

ALTER TABLE "Crime" ADD CONSTRAINT "fk_Crime_ID" FOREIGN KEY("ID")
REFERENCES "Area" ("ID");

