-- WARNING: only apply this file to your database if the following SQL returns the expected:
--
-- SELECT pg_catalog.obj_description(c.oid) FROM pg_catalog.pg_class c WHERE c.relname = 'com_torrelabs_heda_item_added_1';
--  obj_description
-- -----------------
--  iglu:com.torrelabs/HedaItemAdded/jsonschema/1-0-1
--  (1 row)

BEGIN TRANSACTION;

  ALTER TABLE atomic.com_torrelabs_heda_item_added_1
    ADD COLUMN "context_page_title" VARCHAR(10000) ENCODE ZSTD;
  ALTER TABLE atomic.com_torrelabs_heda_item_added_1
    ADD COLUMN "email" VARCHAR(10000) ENCODE ZSTD;
  ALTER TABLE atomic.com_torrelabs_heda_item_added_1
    ADD COLUMN "event_name" VARCHAR(10000) ENCODE ZSTD;
  ALTER TABLE atomic.com_torrelabs_heda_item_added_1
    ADD COLUMN "href" VARCHAR(10000) ENCODE ZSTD;
  ALTER TABLE atomic.com_torrelabs_heda_item_added_1
    ADD COLUMN "is_mobile" BOOLEAN ENCODE RUNLENGTH;
  ALTER TABLE atomic.com_torrelabs_heda_item_added_1
    ADD COLUMN "origin" VARCHAR(10000) ENCODE ZSTD;
  ALTER TABLE atomic.com_torrelabs_heda_item_added_1
    ADD COLUMN "pathname" VARCHAR(10000) ENCODE ZSTD;
  ALTER TABLE atomic.com_torrelabs_heda_item_added_1
    ADD COLUMN "port" INT ENCODE ZSTD;
  ALTER TABLE atomic.com_torrelabs_heda_item_added_1
    ADD COLUMN "protocol" VARCHAR(10000) ENCODE ZSTD;
  ALTER TABLE atomic.com_torrelabs_heda_item_added_1
    ADD COLUMN "public_id" VARCHAR(10000) ENCODE ZSTD;
  ALTER TABLE atomic.com_torrelabs_heda_item_added_1
    ADD COLUMN "search" VARCHAR(10000) ENCODE ZSTD;
  ALTER TABLE atomic.com_torrelabs_heda_item_added_1
    ADD COLUMN "send_at" VARCHAR(10000) ENCODE ZSTD;
  ALTER TABLE atomic.com_torrelabs_heda_item_added_1
    ADD COLUMN "user_agent" VARCHAR(10000) ENCODE ZSTD;

  COMMENT ON TABLE atomic.com_torrelabs_heda_item_added_1 IS 'iglu:com.torrelabs/HedaItemAdded/jsonschema/1-0-2';

END TRANSACTION;
