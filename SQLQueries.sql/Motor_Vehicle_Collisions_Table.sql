CREATE TABLE IF NOT EXISTS public."Motor Vehicle Collisions"
(
    "CRASH DATE" date,
    "CRASH TIME" text COLLATE pg_catalog."default",
    "BOROUGH" text COLLATE pg_catalog."default",
    "ZIP CODE" text COLLATE pg_catalog."default",
    "LATITUDE" numeric,
    "LONGITUDE" numeric,
    "LOCATION" character varying COLLATE pg_catalog."default",
    "ON STREET NAME" text COLLATE pg_catalog."default",
    "OFF STREET NAME" text COLLATE pg_catalog."default",
    "CROSS STREET NAME" text COLLATE pg_catalog."default",
    "NUMBER OF PERSONS INJURED" numeric,
    "NUMBER OF PERSONS KILLED" numeric,
    "NUMBER OF PEDESTRIANS INJURED" numeric,
    "NUMBER OF PEDESTRIANS KILLED" numeric,
    "NUMBER OF CYCLIST INJURED" numeric,
    "NUMBER OF CYCLIST KILLEDd" numeric,
    "NUMBER OF MOTORIST INJURED" numeric,
    "NUMBER OF MOTORIST KILLED" numeric,
    "CONTRIBUTING FACTOR VEHICLE 1" text COLLATE pg_catalog."default",
    "CONTRIBUTING FACTOR VEHICLE 2" text COLLATE pg_catalog."default",
    "CONTRIBUTING FACTOR VEHICLE 3" text COLLATE pg_catalog."default",
    "CONTRIBUTING FACTOR VEHICLE 4" text COLLATE pg_catalog."default",
    "CONTRIBUTING FACTOR VEHICLE 5" text COLLATE pg_catalog."default",
    "COLLISION_ID" numeric NOT NULL,
    "VEHICLE TYPE CODE 1" text COLLATE pg_catalog."default",
    "VEHICLE TYPE CODE 2" text COLLATE pg_catalog."default",
    "VEHICLE TYPE CODE 3" text COLLATE pg_catalog."default",
    "VEHICLE TYPE CODE 4" text COLLATE pg_catalog."default",
    "VEHICLE TYPE CODE 5" text COLLATE pg_catalog."default",
    CONSTRAINT "Motor Vehicle Collisions _pkey" PRIMARY KEY ("COLLISION_ID")
);
