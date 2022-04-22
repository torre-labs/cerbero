-- WARNING: only apply this file to your database if the following SQL returns the expected:
--
-- SELECT pg_catalog.obj_description(c.oid) FROM pg_catalog.pg_class c WHERE c.relname = 'com_torrelabs_filters_job_search_1';
--  obj_description
-- -----------------
--  iglu:com.torrelabs/FiltersJobSearch/jsonschema/1-0-0
--  (1 row)

-- NO ADDED COLUMNS CAN BE EXPRESSED IN SQL MIGRATION

  COMMENT ON TABLE atomic.com_torrelabs_filters_job_search_1 IS 'iglu:com.torrelabs/FiltersJobSearch/jsonschema/1-0-1';

