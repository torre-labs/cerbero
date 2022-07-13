-- AUTO-GENERATED BY igluctl DO NOT EDIT
-- Generator: igluctl 0.10.0
-- Generated: 2022-07-13 14:26 UTC

CREATE SCHEMA IF NOT EXISTS atomic;

CREATE TABLE IF NOT EXISTS atomic.com_torrelabs_referrer_link_created_1 (
    "schema_vendor"        VARCHAR(128)  ENCODE ZSTD NOT NULL,
    "schema_name"          VARCHAR(128)  ENCODE ZSTD NOT NULL,
    "schema_format"        VARCHAR(128)  ENCODE ZSTD NOT NULL,
    "schema_version"       VARCHAR(128)  ENCODE ZSTD NOT NULL,
    "root_id"              CHAR(36)      ENCODE RAW  NOT NULL,
    "root_tstamp"          TIMESTAMP     ENCODE ZSTD NOT NULL,
    "ref_root"             VARCHAR(255)  ENCODE ZSTD NOT NULL,
    "ref_tree"             VARCHAR(1500) ENCODE ZSTD NOT NULL,
    "ref_parent"           VARCHAR(255)  ENCODE ZSTD NOT NULL,
    "destination"          VARCHAR(420)  ENCODE ZSTD NOT NULL,
    "referrer_tracking_id" VARCHAR(210)  ENCODE ZSTD NOT NULL,
    "token"                VARCHAR(210)  ENCODE ZSTD NOT NULL,
    "type_of_page"         VARCHAR(210)  ENCODE ZSTD,
    FOREIGN KEY (root_id) REFERENCES atomic.events(event_id)
)
DISTSTYLE KEY
DISTKEY (root_id)
SORTKEY (root_tstamp);

COMMENT ON TABLE atomic.com_torrelabs_referrer_link_created_1 IS 'iglu:com.torrelabs/ReferrerLinkCreated/jsonschema/1-0-0';

ALTER TABLE atomic.com_torrelabs_referrer_link_created_1 OWNER TO storageloadersnowcat;
