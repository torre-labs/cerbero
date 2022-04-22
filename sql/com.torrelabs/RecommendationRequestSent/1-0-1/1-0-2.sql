-- WARNING: only apply this file to your database if the following SQL returns the expected:
--
-- SELECT pg_catalog.obj_description(c.oid) FROM pg_catalog.pg_class c WHERE c.relname = 'com_torrelabs_recommendation_request_sent_1';
--  obj_description
-- -----------------
--  iglu:com.torrelabs/RecommendationRequestSent/jsonschema/1-0-1
--  (1 row)

BEGIN TRANSACTION;

  ALTER TABLE atomic.com_torrelabs_recommendation_request_sent_1
    ADD COLUMN "consecutive_rounds" DOUBLE PRECISION ENCODE RAW;

  COMMENT ON TABLE atomic.com_torrelabs_recommendation_request_sent_1 IS 'iglu:com.torrelabs/RecommendationRequestSent/jsonschema/1-0-2';

END TRANSACTION;
