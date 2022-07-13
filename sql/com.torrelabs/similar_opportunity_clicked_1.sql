-- AUTO-GENERATED BY igluctl DO NOT EDIT
-- Generator: igluctl 0.8.0
-- Generated: 2022-05-24 03:36 UTC

CREATE SCHEMA IF NOT EXISTS atomic;

CREATE TABLE IF NOT EXISTS atomic.com_torrelabs_similar_opportunity_clicked_1 (
    "schema_vendor"          VARCHAR(128)  ENCODE ZSTD NOT NULL,
    "schema_name"            VARCHAR(128)  ENCODE ZSTD NOT NULL,
    "schema_format"          VARCHAR(128)  ENCODE ZSTD NOT NULL,
    "schema_version"         VARCHAR(128)  ENCODE ZSTD NOT NULL,
    "root_id"                CHAR(36)      ENCODE RAW  NOT NULL,
    "root_tstamp"            TIMESTAMP     ENCODE ZSTD NOT NULL,
    "ref_root"               VARCHAR(255)  ENCODE ZSTD NOT NULL,
    "ref_tree"               VARCHAR(1500) ENCODE ZSTD NOT NULL,
    "ref_parent"             VARCHAR(255)  ENCODE ZSTD NOT NULL,
    "element_type"           VARCHAR(400)  ENCODE ZSTD NOT NULL,
    "clicked_opportunity_id" VARCHAR(400)  ENCODE ZSTD,
    "opportunity_id"         VARCHAR(400)  ENCODE ZSTD,
    "subject_id"             VARCHAR(400)  ENCODE ZSTD,
    FOREIGN KEY (root_id) REFERENCES atomic.events(event_id)
)
DISTSTYLE KEY
DISTKEY (root_id)
SORTKEY (root_tstamp);

COMMENT ON TABLE atomic.com_torrelabs_similar_opportunity_clicked_1 IS 'iglu:com.torrelabs/SimilarOpportunityClicked/jsonschema/1-0-0';

ALTER TABLE atomic.com_torrelabs_similar_opportunity_clicked_1 OWNER TO storageloadersnowcat;