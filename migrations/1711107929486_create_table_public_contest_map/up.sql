CREATE TABLE "public"."contest_map" ("contest_id" uuid NOT NULL, "map_id" uuid NOT NULL DEFAULT gen_random_uuid(), "name" text NOT NULL, "filename" text NOT NULL, "team_labels" text NOT NULL DEFAULT '[]', PRIMARY KEY ("map_id") , FOREIGN KEY ("contest_id") REFERENCES "public"."contest"("id") ON UPDATE restrict ON DELETE cascade, UNIQUE ("map_id"));COMMENT ON TABLE "public"."contest_map" IS E'比赛用到的地图（文件）';
CREATE EXTENSION IF NOT EXISTS pgcrypto;
