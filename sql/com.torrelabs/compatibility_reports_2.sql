-- AUTO-GENERATED BY igluctl DO NOT EDIT
-- Generator: igluctl 0.8.0
-- Generated: 2022-04-13 22:24 UTC

CREATE SCHEMA IF NOT EXISTS atomic;

CREATE TABLE IF NOT EXISTS atomic.com_torrelabs_compatibility_reports_2 (
    "schema_vendor"      VARCHAR(128)  ENCODE ZSTD NOT NULL,
    "schema_name"        VARCHAR(128)  ENCODE ZSTD NOT NULL,
    "schema_format"      VARCHAR(128)  ENCODE ZSTD NOT NULL,
    "schema_version"     VARCHAR(128)  ENCODE ZSTD NOT NULL,
    "root_id"            CHAR(36)      ENCODE RAW  NOT NULL,
    "root_tstamp"        TIMESTAMP     ENCODE ZSTD NOT NULL,
    "ref_root"           VARCHAR(255)  ENCODE ZSTD NOT NULL,
    "ref_tree"           VARCHAR(1500) ENCODE ZSTD NOT NULL,
    "ref_parent"         VARCHAR(255)  ENCODE ZSTD NOT NULL,
    "event"              VARCHAR(500)  ENCODE ZSTD NOT NULL,
    "context"            VARCHAR(500)  ENCODE ZSTD,
    "source_entity_type" VARCHAR(500)  ENCODE ZSTD,
    "source_id"          VARCHAR(500)  ENCODE ZSTD,
    "target_entity_type" VARCHAR(500)  ENCODE ZSTD,
    "target_id"          VARCHAR(500)  ENCODE ZSTD,
    "test_type"          VARCHAR(500)  ENCODE ZSTD,
    "url"                VARCHAR(500)  ENCODE ZSTD,
    "user_public_id"     VARCHAR(500)  ENCODE ZSTD,
    FOREIGN KEY (root_id) REFERENCES atomic.events(event_id)
)
DISTSTYLE KEY
DISTKEY (root_id)
SORTKEY (root_tstamp);

COMMENT ON TABLE atomic.com_torrelabs_compatibility_reports_2 IS 'iglu:com.torrelabs/CompatibilityReports/jsonschema/2-0-0';
