-- WARNING: only apply this file to your database if the following SQL returns the expected:
--
-- SELECT pg_catalog.obj_description(c.oid) FROM pg_catalog.pg_class c WHERE c.relname = 'com_torrelabs_apply_on_behalf_1';
--  obj_description
-- -----------------
--  iglu:com.torrelabs/applyOnBehalf/jsonschema/1-0-0
--  (1 row)

BEGIN TRANSACTION;

  ALTER TABLE atomic.com_torrelabs_apply_on_behalf_1
    ADD COLUMN "url" VARCHAR(10000) NOT NULL ENCODE ZSTD;

  COMMENT ON TABLE atomic.com_torrelabs_apply_on_behalf_1 IS 'iglu:com.torrelabs/applyOnBehalf/jsonschema/1-0-1';

END TRANSACTION;
