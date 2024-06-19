CREATE TABLE "region" (
  "region_id" integer PRIMARY KEY,
  "region" varchar(255),
  "country" varchar(50),
  "lat" float,
  "lng" float,
  "temp" float,
  "prcp" float
);

CREATE TABLE "wine" (
  "wine_id" integer PRIMARY KEY,
  "title" varchar(255),
  "category" varchar(100),
  "winery" varchar(100),
  "region_id" integer
);

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
