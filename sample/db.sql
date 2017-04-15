CREATE EXTENSION IF NOT EXISTS pgcrypto;

CREATE DATABASE dockertest;

DROP TABLE IF EXISTS testtable;

CREATE TABLE IF NOT EXISTS testtable(
  id uuid DEFAULT gen_random_uuid() PRIMARY KEY,
  fullname text
);

INSERT INTO testtable(fullname) VALUES ('else');
