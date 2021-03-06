-- AUTO-GENERATED BY igluctl DO NOT EDIT
-- Generator: igluctl 0.8.0
-- Generated: 2022-04-13 22:24 UTC

CREATE SCHEMA IF NOT EXISTS atomic;

CREATE TABLE IF NOT EXISTS atomic.com_torrelabs_recommendation_saved_1 (
    "schema_vendor"             VARCHAR(128)     ENCODE ZSTD NOT NULL,
    "schema_name"               VARCHAR(128)     ENCODE ZSTD NOT NULL,
    "schema_format"             VARCHAR(128)     ENCODE ZSTD NOT NULL,
    "schema_version"            VARCHAR(128)     ENCODE ZSTD NOT NULL,
    "root_id"                   CHAR(36)         ENCODE RAW  NOT NULL,
    "root_tstamp"               TIMESTAMP        ENCODE ZSTD NOT NULL,
    "ref_root"                  VARCHAR(255)     ENCODE ZSTD NOT NULL,
    "ref_tree"                  VARCHAR(1500)    ENCODE ZSTD NOT NULL,
    "ref_parent"                VARCHAR(255)     ENCODE ZSTD NOT NULL,
    "id"                        VARCHAR(120)     ENCODE ZSTD NOT NULL,
    "recommendation_flow"       VARCHAR(120)     ENCODE ZSTD,
    "recommendation_request_id" VARCHAR(120)     ENCODE ZSTD,
    "relationship"              VARCHAR(120)     ENCODE ZSTD,
    "verification_id"           VARCHAR(120)     ENCODE ZSTD,
    "weight"                    DOUBLE PRECISION ENCODE RAW,
    "completion_rate"           DOUBLE PRECISION ENCODE RAW,
    "step_name"                 VARCHAR(50)      ENCODE ZSTD,
    "step_number"               DOUBLE PRECISION ENCODE RAW,
    "total_steps"               DOUBLE PRECISION ENCODE RAW,
    FOREIGN KEY (root_id) REFERENCES atomic.events(event_id)
)
DISTSTYLE KEY
DISTKEY (root_id)
SORTKEY (root_tstamp);

COMMENT ON TABLE atomic.com_torrelabs_recommendation_saved_1 IS 'iglu:com.torrelabs/RecommendationSaved/jsonschema/1-0-1';
