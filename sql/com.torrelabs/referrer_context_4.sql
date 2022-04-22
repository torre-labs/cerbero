-- AUTO-GENERATED BY igluctl DO NOT EDIT
-- Generator: igluctl 0.8.0
-- Generated: 2022-04-13 22:24 UTC

CREATE SCHEMA IF NOT EXISTS atomic;

CREATE TABLE IF NOT EXISTS atomic.com_torrelabs_referrer_context_4 (
    "schema_vendor"        VARCHAR(128)   ENCODE ZSTD NOT NULL,
    "schema_name"          VARCHAR(128)   ENCODE ZSTD NOT NULL,
    "schema_format"        VARCHAR(128)   ENCODE ZSTD NOT NULL,
    "schema_version"       VARCHAR(128)   ENCODE ZSTD NOT NULL,
    "root_id"              CHAR(36)       ENCODE RAW  NOT NULL,
    "root_tstamp"          TIMESTAMP      ENCODE ZSTD NOT NULL,
    "ref_root"             VARCHAR(255)   ENCODE ZSTD NOT NULL,
    "ref_tree"             VARCHAR(1500)  ENCODE ZSTD NOT NULL,
    "ref_parent"           VARCHAR(255)   ENCODE ZSTD NOT NULL,
    "all_referrer_codes"   VARCHAR(12000) ENCODE ZSTD,
    "first_referrer_code"  VARCHAR(240)   ENCODE ZSTD,
    "referral_device_uuid" VARCHAR(240)   ENCODE ZSTD,
    "referrer_destination" VARCHAR(10000) ENCODE ZSTD,
    "referrer_device_uuid" VARCHAR(240)   ENCODE ZSTD,
    FOREIGN KEY (root_id) REFERENCES atomic.events(event_id)
)
DISTSTYLE KEY
DISTKEY (root_id)
SORTKEY (root_tstamp);

COMMENT ON TABLE atomic.com_torrelabs_referrer_context_4 IS 'iglu:com.torrelabs/ReferrerContext/jsonschema/4-0-0';
