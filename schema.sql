-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "countries" (
    "country_code" VARCHAR   NOT NULL,
    "country" VARCHAR   NOT NULL,
    "population" INTEGER   NOT NULL,
    "gdp_per_capita" INTEGER   NOT NULL,
    CONSTRAINT "pk_countries" PRIMARY KEY (
        "country_code"
     )
);

CREATE TABLE "summer" (
    "summer_id" INTEGER   NOT NULL,
    "year" VARCHAR   NOT NULL,
    "city" VARCHAR   NOT NULL,
    "sport" VARCHAR   NOT NULL,
    "discipline" VARCHAR   NOT NULL,
    "athlete" VARCHAR   NOT NULL,
    "country_code" VARCHAR   NOT NULL,
    "gender" VARCHAR   NOT NULL,
    "event" VARCHAR   NOT NULL,
    "medal" VARCHAR   NOT NULL,
    CONSTRAINT "pk_summer" PRIMARY KEY (
        "summer_id"
     )
);

CREATE TABLE "winter" (
    "winter_id" INTEGER   NOT NULL,
    "year" VARCHAR   NOT NULL,
    "city" VARCHAR   NOT NULL,
    "sport" VARCHAR   NOT NULL,
    "discipline" VARCHAR   NOT NULL,
    "athlete" VARCHAR   NOT NULL,
    "country_code" VARCHAR   NOT NULL,
    "gender" VARCHAR   NOT NULL,
    "event" VARCHAR   NOT NULL,
    "medal" VARCHAR   NOT NULL,
    CONSTRAINT "pk_winter" PRIMARY KEY (
        "winter_id"
     )
);

ALTER TABLE "summer" ADD CONSTRAINT "fk_summer_country_code" FOREIGN KEY("country_code")
REFERENCES "countries" ("country_code");

ALTER TABLE "winter" ADD CONSTRAINT "fk_winter_country_code" FOREIGN KEY("country_code")
REFERENCES "countries" ("country_code");
