-- WARNING: only apply this file to your database if the following SQL returns the expected:
--
-- SELECT pg_catalog.obj_description(c.oid) FROM pg_catalog.pg_class c WHERE c.relname = 'com_torrelabs_work_external_applications_1';
--  obj_description
-- -----------------
--  iglu:com.torrelabs/WorkExternalApplications/jsonschema/1-0-0
--  (1 row)

BEGIN TRANSACTION;

  ALTER TABLE atomic.com_torrelabs_work_external_applications_1
    ADD COLUMN "tracker_location" VARCHAR(50) NOT NULL ENCODE ZSTD;

  COMMENT ON TABLE atomic.com_torrelabs_work_external_applications_1 IS 'iglu:com.torrelabs/WorkExternalApplications/jsonschema/1-0-2';

END TRANSACTION;
