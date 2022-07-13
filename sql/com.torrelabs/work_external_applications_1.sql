-- AUTO-GENERATED BY igluctl DO NOT EDIT
-- Generator: igluctl 0.10.0
-- Generated: 2022-07-13 14:26 UTC

CREATE SCHEMA IF NOT EXISTS atomic;

CREATE TABLE IF NOT EXISTS atomic.com_torrelabs_work_external_applications_1 (
    "schema_vendor"    VARCHAR(128)  ENCODE ZSTD NOT NULL,
    "schema_name"      VARCHAR(128)  ENCODE ZSTD NOT NULL,
    "schema_format"    VARCHAR(128)  ENCODE ZSTD NOT NULL,
    "schema_version"   VARCHAR(128)  ENCODE ZSTD NOT NULL,
    "root_id"          CHAR(36)      ENCODE RAW  NOT NULL,
    "root_tstamp"      TIMESTAMP     ENCODE ZSTD NOT NULL,
    "ref_root"         VARCHAR(255)  ENCODE ZSTD NOT NULL,
    "ref_tree"         VARCHAR(1500) ENCODE ZSTD NOT NULL,
    "ref_parent"       VARCHAR(255)  ENCODE ZSTD NOT NULL,
    "opportunity_id"   VARCHAR(4032) ENCODE ZSTD NOT NULL,
    "subject_id"       BIGINT        ENCODE ZSTD NOT NULL,
    "tracker_location" VARCHAR(50)   ENCODE ZSTD NOT NULL,
    FOREIGN KEY (root_id) REFERENCES atomic.events(event_id)
)
DISTSTYLE KEY
DISTKEY (root_id)
SORTKEY (root_tstamp);

COMMENT ON TABLE atomic.com_torrelabs_work_external_applications_1 IS 'iglu:com.torrelabs/WorkExternalApplications/jsonschema/1-0-2';

ALTER TABLE atomic.com_torrelabs_work_external_applications_1 OWNER TO storageloadersnowcat;
