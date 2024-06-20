DROP TABLE IF EXISTS region;
CREATE TABLE "region" (
  "region_id" integer PRIMARY KEY,
  "region" varchar,
  "lat" float,
  "lng" float,
  "temp" float,
  "prcp" float
);

DROP TABLE IF EXISTS wine;
CREATE TABLE "wine" (
  "wine_id" integer PRIMARY KEY,
  "title" varchar,
  "category" varchar,
  "winery" varchar,
  "region_id" integer
);

DROP TABLE IF EXISTS price;
CREATE TABLE "price" (
  "wine_id" int,
  "region_id" int,
  "price" float,
  "score" float,
  PRIMARY KEY ("wine_id", "region_id")
);

ALTER TABLE "wine" ADD FOREIGN KEY ("region_id") REFERENCES "region" ("region_id");

ALTER TABLE "price" ADD FOREIGN KEY ("wine_id") REFERENCES "wine" ("wine_id");

ALTER TABLE "price" ADD FOREIGN KEY ("region_id") REFERENCES "region" ("region_id");
