-- AUTO-GENERATED BY igluctl DO NOT EDIT
-- Generator: igluctl 0.10.0
-- Generated: 2022-07-13 14:26 UTC

CREATE SCHEMA IF NOT EXISTS atomic;

CREATE TABLE IF NOT EXISTS atomic.com_torrelabs_compensation_context_1 (
    "schema_vendor"        VARCHAR(128)     ENCODE ZSTD      NOT NULL,
    "schema_name"          VARCHAR(128)     ENCODE ZSTD      NOT NULL,
    "schema_format"        VARCHAR(128)     ENCODE ZSTD      NOT NULL,
    "schema_version"       VARCHAR(128)     ENCODE ZSTD      NOT NULL,
    "root_id"              CHAR(36)         ENCODE RAW       NOT NULL,
    "root_tstamp"          TIMESTAMP        ENCODE ZSTD      NOT NULL,
    "ref_root"             VARCHAR(255)     ENCODE ZSTD      NOT NULL,
    "ref_tree"             VARCHAR(1500)    ENCODE ZSTD      NOT NULL,
    "ref_parent"           VARCHAR(255)     ENCODE ZSTD      NOT NULL,
    "code"                 VARCHAR(50)      ENCODE ZSTD,
    "conversion_currency"  VARCHAR(50)      ENCODE ZSTD,
    "currency"             VARCHAR(50)      ENCODE ZSTD,
    "estimate"             BOOLEAN          ENCODE RUNLENGTH,
    "max_amount"           DOUBLE PRECISION ENCODE RAW,
    "max_amount_converted" DOUBLE PRECISION ENCODE RAW,
    "min_amount"           DOUBLE PRECISION ENCODE RAW,
    "min_amount_converted" DOUBLE PRECISION ENCODE RAW,
    "min_amount_usd"       DOUBLE PRECISION ENCODE RAW,
    "periodicity"          VARCHAR(50)      ENCODE ZSTD,
    "visible"              BOOLEAN          ENCODE RUNLENGTH,
    FOREIGN KEY (root_id) REFERENCES atomic.events(event_id)
)
DISTSTYLE KEY
DISTKEY (root_id)
SORTKEY (root_tstamp);

COMMENT ON TABLE atomic.com_torrelabs_compensation_context_1 IS 'iglu:com.torrelabs/CompensationContext/jsonschema/1-0-0';

ALTER TABLE atomic.com_torrelabs_compensation_context_1 OWNER TO storageloadersnowcat;
