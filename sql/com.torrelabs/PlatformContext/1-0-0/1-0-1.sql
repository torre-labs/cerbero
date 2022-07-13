-- WARNING: only apply this file to your database if the following SQL returns the expected:
--
-- SELECT pg_catalog.obj_description(c.oid) FROM pg_catalog.pg_class c WHERE c.relname = 'com_torrelabs_platform_context_1';
--  obj_description
-- -----------------
--  iglu:com.torrelabs/PlatformContext/jsonschema/1-0-0
--  (1 row)

BEGIN TRANSACTION;

  ALTER TABLE atomic.com_torrelabs_platform_context_1
    ADD COLUMN "interaction" VARCHAR(120) ENCODE ZSTD;
  ALTER TABLE atomic.com_torrelabs_platform_context_1
    ADD COLUMN "page_type" VARCHAR(120) ENCODE ZSTD;

  COMMENT ON TABLE atomic.com_torrelabs_platform_context_1 IS 'iglu:com.torrelabs/PlatformContext/jsonschema/1-0-1';

END TRANSACTION;
